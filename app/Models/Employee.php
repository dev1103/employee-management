<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    protected $fillable = [
        'first_name',
        'last_name',
        'email',
        'country_code',
        'mobile',
        'address',
        'gender',
        'hobby',
        'photo',
    ];
}
