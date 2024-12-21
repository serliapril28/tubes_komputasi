<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        // Array of example clothing names
        $clothingNames = [
            "Celana Pria", "Baju Pria", "Aksesoris Pria", "Celana Wanita", "Baju Wanita",
            "Aksesoris Wanita", "Celana Anak-anak", "Baju Anak-anak", "Aksesoris Anak-anak",
        ];

        return [
            'sku'                   => Str::random(10),
            'nama_product'          => $this->faker->randomElement($clothingNames),
            'type'                  => "Celana",
            'kategory'              => "Pria",
            'harga'                 => 100000,
            'quantity'              => 10,
            'discount'              => 10 / 100,
            'is_active'             => 1,
            'foto'                  => fake()->name(),
        ];
    }
}
