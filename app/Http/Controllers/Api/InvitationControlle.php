<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller; 
use Illuminate\Http\Request; 
use Illuminate\Support\Facades\Auth; 
use App; 
use Validator;

class InvitationController extends ApiController
{

	/** 
     * login api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function inviteVisitor(Request $request){ 
        $validator = Validator::make($request->all(), [ 
            'address_id' => 'required', 
            'invited_to' => 'required', 
            'invited_to_id' => 'required', 
            'person_name' => 'required', 
            'person_phone' => 'required', 
        ]);

        if ($validator->fails()) { 
            return $this->response('error', $validator->errors()->all());
        }

        $invitation = App\Invitation::firstOrNew([
            'invited_by' => 'address',
            'invited_by_id' => $request->adsress_id,
            'invited_to' => $request->invited_to,
            'invited_to_id' => $request->invited_to_id,
            'date' => ($request->date) ? $request->date : date('Y-m-d'),
        ]);
        $invitation->data = [
            'person_detail' => [
                'name' => $request->invited_to_id,
            ]
        ];

        if( $invitation->save() ){ 
            return $this->response('success', [], ['detail' => $detail]);
        } 
        else{ 
            return $this->response('error', 'Error creating invitation.');
        } 
    }
}
