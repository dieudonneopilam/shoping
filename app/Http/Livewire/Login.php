<?php

namespace App\Http\Livewire;

use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class Login extends Component
{
    public $username;
    public $password;
    protected $rules = [
        'username' => ['required'],
        'password' => ['required']
    ];
    public function render()
    {
        return view('livewire.login');
    }

    public function login(){
        $this->validate();
        if (Auth::attempt(['email' => $this->username, 'password' => $this->password])) {
            return redirect()->route('home');
        }
        session()->flash('message','vos identifiants ne sont pas reconnus');
    }
}
