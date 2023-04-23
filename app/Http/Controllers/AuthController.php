<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function login(){
        return view('authentification.login');
    }

    public function register(){
        return view('authentification.register');
    }

    public function logout(){
        Auth::logout();
        return view('page.home');
    }
}
