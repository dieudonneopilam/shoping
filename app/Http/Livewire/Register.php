<?php

namespace App\Http\Livewire;

use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;
use Livewire\WithFileUploads;

class Register extends Component
{
    use WithFileUploads;
    public $name;
    public $lastname;
    public $sexe;
    public $password;
    public $username;
    public $password_confirmation;
    public $file;
    public $phone;
    public $categorie;

    protected $rules = [
        'name' => ['required'],
        'lastname' => ['required'],
        'username' => ['required'],
        'password' => ['required','confirmed'],
        'password_confirmation' => ['required'],
        'file' => ['required'],
        'phone' => ['required'],
        'sexe' => ['required'],
        'categorie' => ['required']
    ];
    public function render()
    {
        return view('livewire.register');
    }

    public function submit(){
        $this->validate();
        $filename = time().'.'. $this->file->extension();
        $path = $this->file->storeAs(
            'avatars',
            $filename,
            'public'
        );
        
        $user = User::create([
            'name' => $this->name,
            'lastname' => $this->lastname,
            'sexe' => $this->sexe,
            'email' => $this->username,
            'password' => $this->password,
            'is_client' => 1,
            'is_detaillant' => $this->categorie == 'detaillant' ? 1 : 0,
            'is_grossiste' => $this->categorie == 'grossiste' ? 1 : 0,
            'phone' => $this->phone,
            'file' => $path
        ]);

        Auth::login($user);

    }
}
