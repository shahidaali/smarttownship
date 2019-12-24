<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AddressType extends Model
{
	/**
     * @return \Illuminate\Database\Eloquent\Relations\belongsTo
     */
    public function addresses()
    {
        return $this->hasMany('App\Address');
    }
}
