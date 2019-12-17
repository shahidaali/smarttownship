<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request; 
use App\Http\Controllers\Controller; 
use App; 
use Illuminate\Support\Facades\Auth; 
use Validator;

class AssetController extends ApiController
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

        $userAsset = new App\AddressAsset();
        $detail = $userAsset->addressAssetDetail([
            'asset_type_id' => 1,
            'asset_no' => $request->vehicle_no
        ]);

        if( $detail ){ 
            return $this->response('success', [], ['detail' => $detail]);
        } 
        else{ 
            return $this->response('error', 'Vehicle not found.');
        } 
    }
}
