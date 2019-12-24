<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Asset extends Model
{
     /** 
     * login api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function assetDetail($params = []){ 
        $args = [];
        
        if(!empty($params['type'])) {
        	$args['type'] = $params['type'];
        }
        if(!empty($params['asset_no'])) {
        	$args['asset_no'] = $params['asset_no'];
        }
        if(!empty($params['status'])) {
        	$args['status'] = $params['status'];
        }
        else {
        	$args['status'] = 'active';
        }
    	
    	return $this->where($args);
    }
}
