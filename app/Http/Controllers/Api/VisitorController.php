<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller; 
use Illuminate\Http\Request; 
use Illuminate\Support\Facades\Auth; 
use App; 
use Validator;

class VisitorController extends ApiController
{

	/** 
     * login api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function inviteVisitor(Request $request){ 
        $validator = Validator::make($request->all(), [ 
            'invited_by' => 'required', 
            'vehicle_no' => 'required', 
            'person_name' => 'required', 
            'person_phone' => 'required', 
        ]);

        if ($validator->fails()) { 
            return $this->response('error', $validator->errors()->all());
        }

        $visitor = App\Visitor::firstOrNew([
            'invited_by_type' => 'address',
            'invited_by' => $request->invited_by,
            'invited_to_type' => 'vehicle',
            'vehicle_no' => $request->vehicle_no,
            'status' => 'waiting',
            'admin_status' => 'approved',
            'date' => ($request->date) ? $request->date : date('Y-m-d'),
        ]);

        $visitor->person_name = $request->person_name;
        $visitor->person_phone = $request->person_phone;
        $visitor->person_email = $request->person_email;

        if( $visitor->save() ){ 
            return $this->response('success', [], ['visitor' => $visitor]);
        } 
        else{ 
            return $this->response('error', 'Error creating visitor.');
        } 
    }
}
