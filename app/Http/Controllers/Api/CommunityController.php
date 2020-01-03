<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller; 
use Illuminate\Http\Request; 
use Illuminate\Support\Facades\Auth; 
use App; 
use Validator;

class CommunityController extends ApiController
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

        $query = App\Community::where('id', $request->id);
        $community = $query->first();

        return $this->response('success', [], ['community' => $community]);
    }

    /** 
     * login api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function list(Request $request){ 
        $query = App\Community::where('status', 1);
        $list = $query->get();

        return $this->response('success', [], ['list' => $list]);
    }
}
