<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PostalCode extends Model
{
    protected $fillable = ['Latitude','Longitude','PostalCode','Country','AreaName'];

    public $timestamps = false;
}
