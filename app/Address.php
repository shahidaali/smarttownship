<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Address extends Model
{
    /**
     * @return \Illuminate\Database\Eloquent\Relations\belongsTo
     */
    public function residents()
    {
        return $this->hasMany('App\Resident')->where('status', 'active');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\belongsTo
     */
    public function assets()
    {
        return $this->hasMany('App\AddressAsset')->where('status', 'active');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\belongsTo
     */
    public function addressDetail()
    {
        return $this->with('residents.user', 'residents.reference_user');
    }
}
