<?php

namespace App\Http\Controllers;

use App\PostalCode;
use App\Street;
use Illuminate\Http\Request;

class AddressController extends Controller
{

    public function index()
    {
        $chunks = PostalCode::all();


        return view('vue', array('chunks'=>$chunks));
    }

    public function addPostalCode(Request $request)
    {

        PostalCode::create(['Latitude'=>$request->postalLatitude,
            'Longitude'=>$request->postalLongitude,
            'PostalCode'=>$request->postalCode,
            'AreaName'=>$request->areaName,
            'Country' => $request->country]);


        return redirect()->back()->with('success','Postal Code Added Sucessfully.');

    }

    public function addStreet(Request $request)
    {
        print_r($request->all());
      $street =  Street::create(['PostalCodeID'=>$request->postalCodeID,
            'Longitude'=>$request->streetLongitude,
           'Latitude'=>$request->streetLatitude,
            'StreetName'=>$request->street]);

     return redirect()->back()->with('street', $street->StreetName);
    }
}
