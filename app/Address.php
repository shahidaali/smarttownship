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
}
