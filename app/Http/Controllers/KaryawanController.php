<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Transformers\KaryawanTransformer;

class KaryawanController extends Controller
{
    public function add(Request $request, Karyawan $karyawan){
        
        $this->validate($request, [
            'nama' => 'required',
            'username' => 'required',
            'level' => 'required',
            'password' => 'required',
        ]);

        $karyawan = $karyawan->create([
            'nama' => $request->nama,
            'username' => $request->username,
            'level' => $request->level,
            'password' => $request->password,
        ]);

        $response = fractal()
            ->item($karyawan)
            ->transformWith(new KaryawanTransformer)
            ->toArray();

        return response()->json($response, 201);
    }
}
