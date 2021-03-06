<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LostFound extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'community_id', 'user_id', 'user_id_collected', 'title', 'address', 'name', 'phone', 'email', 'picture', 'video', 'type', 'status', 'detail', 'date', 'date_collected'
    ];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\belongsTo
     */
    public function address()
    {
        return $this->belongsTo('App\Address', 'invited_by');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\belongsTo
     */
    public function user()
    {
        return $this->belongsTo('App\User');
    }
}
