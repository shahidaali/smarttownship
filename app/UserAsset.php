<?php

namespace App;
use App\Asset as AssetModel;

use Illuminate\Database\Eloquent\Model;

class UserAsset extends AssetModel
{
	/**
     * @return \Illuminate\Database\Eloquent\Relations\belongsTo
     */
    public function user()
    {
        return $this->belongsTo('App\User');
    }

    /** 
     * detail
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function userAssetDetail($params = []){ 
    	return $this->assetDetail($params)->with('user', 'user.residents.address')->first();
    }
}
