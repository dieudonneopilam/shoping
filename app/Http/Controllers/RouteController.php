<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class RouteController extends Controller
{
    public function home(){
        return redirect()->route('produit.index');
    }

    public function gestion(){
        return view('admin.busness');
    }

    public function rapport(){
        return view('admin.rapport');
    }
    public function editProfil(){
        return view('pages.edit-profil');
    }
}
