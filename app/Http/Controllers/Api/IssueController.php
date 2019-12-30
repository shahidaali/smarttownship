<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller; 
use Illuminate\Http\Request; 
use Illuminate\Support\Facades\Auth; 
use App; 
use Validator;

class IssueController extends ApiController
{

	/** 
     * login api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function reportIssue(Request $request){ 
        $validator = Validator::make($request->all(), [ 
            'community_id' => 'required', 
            'user_id' => 'required', 
            'asset' => 'required', 
            'latitude' => 'required', 
            'longitude' => 'required', 
            'address' => 'required', 
            'name' => 'required', 
            'phone' => 'required', 
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
            $uploadPath = "issues/" . date("FY") . "/";
            $file_response = $this->uploadBase64($uploadPath, $request->picture);

            if( $file_response ) {
                $picture = $file_response;
            }
        }
        
        $issue = new App\Issue();

        $issue->community_id = $request->community_id;
        $issue->user_id = $request->user_id;
        $issue->asset = $request->asset;
        $issue->latitude = $request->latitude;
        $issue->longitude = $request->longitude;
        $issue->address = $request->address;
        $issue->name = $request->name;
        $issue->phone = $request->phone;
        $issue->email = $request->email;
        $issue->picture = $picture;
        // $issue->video = $request->video;
        $issue->detail = $request->detail;
        $issue->status = 'pending';
        $issue->admin_status = 'pending';

        if( $issue->save() ){ 
            return $this->response('success', [], ['issue' => $issue]);
        } 
        else{ 
            return $this->response('error', 'Error creating issue.');
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

        $query = App\Issue::where('community_id', $request->community_id);
        $list = $query->get();

        return $this->response('success', [], ['list' => $list]);
    }
}
