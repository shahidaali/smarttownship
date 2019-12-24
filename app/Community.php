<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Community extends Model
{
    /**
     * @return \Illuminate\Database\Eloquent\Relations\belongsTo
     */
    public function communityAddressTypes()
    {
        return $this->hasMany('App\CommunityAddressType');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\belongsTo
     */
    public function addressTypes()
    {
        return $this->hasManyThrough(
        	'App\AddressType',
        	'App\CommunityAddressType', 
        	'community_id',
        	'id',
        	'id',
        	'address_type_id'
        );
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\belongsTo
     */
    public function addresses()
    {
        return $this->hasMany('App\Address');
    }
}
