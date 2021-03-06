<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends \TCG\Voyager\Models\User
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'username', 'name', 'email', 'password', 'role_id', 'community_id', 'phone_number', 'dob', 'gender', 'avatar'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    /**
     * Get the booking is_serving
     *
     * @return string
     */
    public function getUserLabelAttribute()
    {
        return "#{$this->id} {$this->name} ({$this->username})";
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\belongsTo
     */
    public function residents()
    {
        return $this->hasMany('App\Resident')->where('status', 'active');
    }
}
