<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller; 
use Illuminate\Http\Request; 
use Illuminate\Support\Facades\Auth; 
use App; 
use Validator;

class RecommendationController extends ApiController
{

	/** 
     * login api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function add(Request $request){ 
        $validator = Validator::make($request->all(), [ 
            'community_id' => 'required', 
            'user_id' => 'required', 
            'title' => 'required', 
            'address' => 'required', 
            'name' => 'required', 
            'phone' => 'required', 
            'email' => 'required', 
            'type' => 'required', 
            'date' => 'required', 
        ]);

        if ($validator->fails()) { 
            return $this->response('error', $validator->errors()->all());
        }

        // $filesystem = config('voyager.storage.disk');
        // $realPath = Storage::disk($filesystem)->getDriver()->getAdapter()->getPathPrefix();
        // $uploadPath = "issues/" . date("FY") . "/";
        // dd($uploadPath);

        $picture = "";
        if( !empty($request->picture) ) {
            $uploadPath = "lost_founds/" . date("FY") . "/";
            $file_response = $this->uploadBase64($uploadPath, $request->picture);

            if( $file_response ) {
                $picture = $file_response;
            }
        }
        
        $lostFound = new App\Recommendation();

        $lostFound->community_id = $request->community_id;
        $lostFound->user_id = $request->user_id;
        $lostFound->title = $request->title;
        $lostFound->address = $request->address;
        $lostFound->name = $request->name;
        $lostFound->phone = $request->phone;
        $lostFound->email = $request->email;
        $lostFound->picture = $picture;
        // $lostFound->video = $request->video;
        $lostFound->detail = $request->detail;
        $lostFound->type = $request->type;
        $lostFound->status = 'pending';
        $lostFound->date = $request->date;

        if( $lostFound->save() ){ 
            return $this->response('success', [], ['lost_found' => $lostFound]);
        } 
        else{ 
            return $this->response('error', 'Error creating lost found.');
        } 
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

        $query = App\Recommendation::where('community_id', $request->community_id);
        $list = $query->get();

        return $this->response('success', [], ['list' => $list]);
    }
}
