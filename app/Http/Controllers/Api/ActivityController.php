<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller; 
use Illuminate\Http\Request; 
use Illuminate\Support\Facades\Auth; 
use Illuminate\Support\Collection;
use App; 
use Validator;

class ActivityController extends ApiController
{
    /** 
     * login api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function get(Request $request){ 
        $validator = Validator::make($request->all(), [ 
            'id' => 'required', 
        ]);

        if ($validator->fails()) { 
            return $this->response('error', $validator->errors()->all());
        }

        $query = App\Address::where('id', $request->id);
        $address = $query->first();

        return $this->response('success', [], ['address' => $address]);
    }

    /** 
     * login api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function list(Request $request){ 
        $validator = Validator::make($request->all(), [ 
            'community_id' => 'required', 
        ]);

        if ($validator->fails()) { 
            return $this->response('error', $validator->errors()->all());
        }

        // $collection = new Collection();
        $activities = [];

        $Recommendations = App\Recommendation::with('user')->where('community_id', $request->community_id)->get();
        $SecurityUpdates = App\SecurityUpdate::with('user')->where('community_id', $request->community_id)->get();
        $LostFounds = App\LostFound::with('user')->where('community_id', $request->community_id)->get();
        $Issues = App\Issue::with('user')->where('community_id', $request->community_id)->get();

        foreach ($Recommendations as $key => $item) {
            $activities[] = [
                'activity' => "recommendation",
                'id' => $item->id,
                'title' => $item->title,
                'image' => $item->picture,
                'detail' => $item->detail,
                'created_date' => $item->created_at->format('Y-m-d'),
                'created_time' => $item->created_at->format('H:i:s'),
                'user' => $item->user,
            ];
        }
        foreach ($SecurityUpdates as $key => $item) {
            $activities[] = [
                'activity' => "security_updates",
                'id' => $item->id,
                'title' => $item->title,
                'image' => $item->picture,
                'detail' => $item->detail,
                'created_date' => $item->created_at->format('Y-m-d'),
                'created_time' => $item->created_at->format('H:i:s'),
                'user' => $item->user,
            ];
        }
        foreach ($LostFounds as $key => $item) {
            $activities[] = [
                'activity' => "lost_found",
                'id' => $item->id,
                'title' => $item->title,
                'image' => $item->picture,
                'detail' => $item->detail,
                'created_date' => $item->created_at->format('Y-m-d'),
                'created_time' => $item->created_at->format('H:i:s'),
                'user' => $item->user,
            ];
        }
        foreach ($Issues as $key => $item) {
            $activities[] = [
                'activity' => "issue",
                'id' => $item->id,
                'title' => $item->asset,
                'image' => $item->picture,
                'detail' => $item->detail,
                'created_date' => $item->created_at->format('Y-m-d'),
                'created_time' => $item->created_at->format('H:i:s'),
                'user' => $item->user,
            ];
        }

        return $this->response('success', [], ['activities' => $activities]);
    }
}
