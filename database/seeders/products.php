<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\products as product;
use GuzzleHttp\Client;

class products extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $client = new Client();
        for ($i = 1; $i <= 10; $i++) {
            $res = $client->request('GET', 'https://mangomart-autocount.myboostorder.com/wp-json/wc/v1/products?page=' . $i);
            $product = json_decode($res->getBody(), true);
            foreach ($product as $key => $value) {
                product::insert(
                    [
                        'name' => $value['name'],
                        'type' => $value['type'],
                        'image' => $value['images']?$value['images'][0]['src']:'',
                        'categories' => $value['categories']?$value['categories'][0]['name']:'',
                        'description' => $value['description'],
                        'catalog_visibility' => $value['catalog_visibility'],
                        'status' => $value['status'],
                        'stock_quantity' => $value['stock_quantity'],
                        'in_stock' => $value['in_stock'],
                        'backorders_allowed' => $value['backorders_allowed'],
                        'regular_price' => $value['regular_price'],
                        'sale_price' => $value['sale_price'],
                    ]
                );
            }
        }

        // product::insert($product);
    }
}
