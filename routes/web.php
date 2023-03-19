<?php

use App\Http\Controllers\ProduitController;
use App\Http\Controllers\RouteController;
use App\Http\Controllers\VenteController;
use Illuminate\Support\Facades\Route;

Route::get('/',[RouteController::class,'home'])->name('home');
Route::get('/gestion',[RouteController::class,'gestion'])->name('gestion');
Route::get('/rapport',[RouteController::class,'rapport'])->name('rapport');
Route::resource('produit',ProduitController::class);
Route::resource('vente',VenteController::class);
