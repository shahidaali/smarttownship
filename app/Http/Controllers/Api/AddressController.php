<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller; 
use Illuminate\Http\Request; 
use Illuminate\Support\Facades\Auth; 
use App; 
use Validator;

class AddressController extends ApiController
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

        $query = App\Address::where('community_id', $request->community_id);
        $list = $query->get();

        return $this->response('success', [], ['list' => $list]);
    }
}
