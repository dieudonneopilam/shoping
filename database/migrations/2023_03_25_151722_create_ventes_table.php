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
        Schema::create('ventes', function (Blueprint $table) {
            $table->id();
            $table->mediumText('designation_produit');
            $table->integer('qte');
            $table->integer('prix_vente_total');
            $table->mediumText('categorie_article');
            $table->dateTime('date_heure');
            // $table->foreignId('article_id')
            //     ->nullable()
            //     ->constrained();
            // $table->foreignId('commande_id')
            //     ->nullable()
            //     ->constrained();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('ventes');
    }
};
