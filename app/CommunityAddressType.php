<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CommunityAddressType extends Model
{
	protected $fillable = ['community_id', 'address_type_id', 'status'];

	/**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public static function updateAddressTypes($community_id, $address_type_id, $status = 'active')
    {
		try {
	    	$addressType = self::firstOrNew(array('community_id' => $community_id, 'address_type_id' =>  $address_type_id));
	    	
	    	$addressType->community_id = $community_id;
	    	$addressType->address_type_id = $address_type_id;
	    	$addressType->status = $status;

			if($addressType->save()) {
				return true;
			}
		} catch (\Exception $e) {
            throw $e;
        }

        return false;
    }
}
