<?php

use App\Http\Controllers\ArticleController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ProduitController;
use App\Http\Controllers\RouteController;
use App\Http\Controllers\VenteController;
use Illuminate\Support\Facades\Route;

Route::get('/',[RouteController::class,'home'])->name('home');
Route::resource('produit',ProduitController::class);

Route::middleware('auth')->group(function(){
    Route::get('/login',[AuthController::class,'login'])->name('login')->withoutMiddleware('auth')->middleware('is_login');
    Route::get('/rapport',[RouteController::class,'rapport'])->name('rapport')->middleware('is_admin');
    Route::get('/register',[AuthController::class,'register'])->name('register')->withoutMiddleware('auth')->middleware('is_login');
    Route::get('/gestion',[RouteController::class,'gestion'])->name('gestion')->middleware('is_admin');
    Route::get('/rapport',[RouteController::class,'rapport'])->name('rapport')->middleware('is_admin');
    Route::get('/article',[ArticleController::class,'index'])->name('article');
    Route::resource('vente',VenteController::class);
});