<?php

namespace App;
use App\Asset as AssetModel;

use Illuminate\Database\Eloquent\Model;

class AddressAsset extends AssetModel
{
	/**
     * @return \Illuminate\Database\Eloquent\Relations\belongsTo
     */
    public function address()
    {
        return $this->belongsTo('App\Address')->where('status', 'active');
    }

    /** 
     * detail
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function addressAssetDetail($params = []){ 
    	return $this->assetDetail($params)->with('address', 'address.residents.user', 'address.residents.reference_user')->first();
    }
}
