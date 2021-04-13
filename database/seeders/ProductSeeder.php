<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('products')->insert([
            [
            'name'=>'DMH-Z5350BT',
            'price'=>'RM2580',
            'category'=>'receiver',
            'description'=>'A smart receiver with 4gb ram',
            'picture'=>'https://cms.pioneercarentertainment.com//images/product/product_20200317031910.png'
            ],
            [
            'name'=>'TS-A1680F',
            'price'=>'RM388',
            'category'=>'speaker',
            'description'=>'A speaker with FreqResponse: 36 Hz to 25 kHz',
            'picture'=>'https://cms.pioneercarentertainment.com//images/product/product_20181214051525.png'
            ],
            [
                'name'=>'TS-WX400DA',
                'price'=>'RM4500',
                'category'=>'subwoofer',
                'description'=>'A subwoofer with Frequency Response: DEEP:20Hz ~ 100Hz (－20ｄB), DYNAMIC:20Hz ~ 100Hz (－20ｄB)',
                'picture'=>'https://cms.pioneercarentertainment.com//images/product/product_20190417050600.png'
            ],
            [
                'name'=>'GM-DX874',
                'price'=>'RM6000',
                'category'=>'amplifier',
                'description'=>'A amplifier with Frequency Response: 10 Hz to 50 kHz',
                'picture'=>'https://cms.pioneercarentertainment.com//images/product/product_20181214041704.png'
            ]
        ]);
    }
}
