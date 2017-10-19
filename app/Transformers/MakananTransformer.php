<?php

namespace App\Transformers;

use App\Makanan;
use App\Transformers\MakananTransformer;
use League\Fractal\TransformerAbstract;

class MakananTransformer extends TransformerAbstract
{
	public function transform(Makanan $makanan)
	{
		return [
			'id' => $makanan->id,
			'makanan' => $makanan->makanan,
			'harga' => $makanan->harga,
		];
	}
}