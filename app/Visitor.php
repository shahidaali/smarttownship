<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Visitor extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'invited_by_type', 'invited_by', 'invited_to_type', 'vehicle_no', 'person_name', 'person_phone', 'person_email', 'status', 'admin_status', 'data', 'date',
    ];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\belongsTo
     */
    public function address()
    {
        return $this->belongsTo('App\Address', 'invited_by');
    }
}
