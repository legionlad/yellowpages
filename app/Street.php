<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Street extends Model
{

    protected $fillable = ['PostalCodeID','Latitude','Longitude','StreetName'];
    public $timestamps = false;

}
