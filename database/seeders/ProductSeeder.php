<?php
  
namespace Database\Seeders;
  
use Illuminate\Database\Seeder;
use App\Models\Product;
  
class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $products = [
            [
                'name' => 'ELDEN RING',
                'image' => 'public/img/igra1.jpg',
                'price' => 59.99
            ],
            [
                'name' => 'STRAY',
                'image' => 'public/img/igra2.jpg',
                'price' => 49.99
            ],
            [
                'name' => 'GTA 5',
                'image' => 'public/img/igra3.jpg',
                'price' => 99.99
            ],
            [
                'name' => 'GOD OF WAR',
                'image' => 'public/img/igra4.jpg',
                'price' => 69.99
            ],
            [
                'name' => 'SPIDER-MAN',
                'image' => 'public/img/igra5.jpg',
                'price' => 88.99
            ],
            [
                'name' => 'CRASH BANDICOT',
                'image' => 'public/img/igra6.jpg',
                'price' => 39.99
            ],
            
        ];
  
        foreach ($products as $key => $value) {
            Product::create($value);
        }
    }
}