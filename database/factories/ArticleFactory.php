<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Article>
 */
class ArticleFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'designation' => $this->faker->sentence,
            'file' => $this->faker->filePath(),
            'prix_actuel_detaillant' => $this->faker->numberBetween(1,50),
            'prix_actuel_grossiste' => $this->faker->numberBetween(20,50),
            'prix_ancien_grossiste' => $this->faker->numberBetween(20,50),
            'prix_ancien_detaillant' => $this->faker->numberBetween(1,20),
            'qte' => $this->faker->numberBetween(20,50),
            'created_at' => now(),

        ];
    }
}
