<?php

namespace App\Transformers;

use App\Karyawan;
use App\Transformers\KaryawanTransformer;
use League\Fractal\TransformerAbstract;

class KaryawanTransformer extends TransformerAbstract
{
	public function transform(Karyawan $karyawan)
	{
		return [
			'id' => $karyawan->id,
			'nama' => $karyawan->nama,
			'level' => $karyawan->level,
		];
	}
}