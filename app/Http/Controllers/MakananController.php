<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Makanan;
use App\Transformers\MakananTransformer;

class MakananController extends Controller
{
    public function add(Request $request, Makanan $makanan)
    {
    	$this->validate($request, [
    		'makanan' => 'required',
    		'harga' => 'required',
    	]);

    	$makanan = $makanan->create([
    		'makanan' => $request->makanan,
    		'harga' => $request->harga,
    	]);

    	$response = fractal()
    		->item($makanan)
    		->transformWith(new MakananTransformer)
    		->toArray();

    	return response()->json($response, 201);
    }
}
