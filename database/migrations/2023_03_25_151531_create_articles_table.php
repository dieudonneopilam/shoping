<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('articles', function (Blueprint $table) {
            $table->id();
            $table->mediumText('designation');
            $table->mediumText('file');
            $table->integer('prix_actuel_detaillant');
            $table->integer('prix_actuel_grossiste');
            $table->integer('prix_ancien_detaillant');
            $table->integer('prix_ancien_grossiste');
            $table->integer('qte');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('articles');
    }
};
