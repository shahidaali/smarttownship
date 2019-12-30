<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Issue extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'community_id', 'user_id', 'asset', 'latitude', 'longitude', 'address', 'name', 'phone', 'email', 'picture', 'video', 'status', 'admin_status', 'detail', 'fixed_date', 'fixed_detail'
    ];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\belongsTo
     */
    public function address()
    {
        return $this->belongsTo('App\Address', 'invited_by');
    }
}
