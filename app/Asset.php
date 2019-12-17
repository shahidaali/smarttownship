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
        
        if(!empty($params['asset_type_id'])) {
        	$args['asset_type_id'] = $params['asset_type_id'];
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
