<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Illuminate\Support\Facades\Auth;

class EditProfil extends Component
{
    public $name;
    public $lastname;
    public $username;
    public $phone;
    public $password;
    public $password_confirmation;
    public $categorie;
    public $sexe;
    public $file;

    public function mount(){
        $this->name = Auth::user()->name;
        $this->lastname = Auth::user()->lastname;
        $this->username = Auth::user()->email;
        $this->phone = Auth::user()->phone;
        $this->categorie = 'grossiste';
        $this->sexe = Auth::user()->sexe;
    }


    public function render()
    {
        return view('livewire.edit-profil');
    }
}
