<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller; 
use Illuminate\Http\Request; 
use Illuminate\Support\Facades\Auth; 
use App; 
use Validator;

class VerificationController extends ApiController
{
	/** 
     * login api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function vehicleVerification(Request $request){ 
        $validator = Validator::make($request->all(), [ 
            'vehicle_no' => 'required', 
        ]);

        if ($validator->fails()) { 
            return $this->response('error', $validator->errors()->all());
        }

        $result = App\AddressAsset::where([
            'type' => 'vehicle',
            'asset_no' => $request->vehicle_no,
            'status' => 'active'
        ])->first();

        $address_id = null;
        $type = null;

        if( $result ) {
            $address_id = $result->address_id;
            $type = "resident";
        }
        else {
            $result = App\Visitor::where([
                'invited_to_type' => 'vehicle',
                'vehicle_no' => $request->vehicle_no,
                'status' => 'waiting',
                'admin_status' => 'approved',
                'date' => date('Y-m-d')
            ])->first();

            if( $result ) {
                $address_id = $result->invited_by;
                $type = "visitor";
            }
        }

        $detail = null;
        if( $address_id ) {
            $address = new App\Address;
            $address_detail = $address->addressDetail()->where('id', $address_id)->first();

            if( $address_detail ) {
                $detail = [
                    'type' => $type,
                    'vehicle_detail' => $result,
                    'address_detail' => $address_detail,
                ];
            }
        }

        if( $detail ){ 
            return $this->response('success', [], ['detail' => $detail]);
        } 
        else{ 
            return $this->response('error', 'Vehicle not found.');
        } 
    }
}
