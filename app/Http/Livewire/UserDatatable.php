<?php

namespace App\Http\Livewire;

use App\Models\User;
use Livewire\Component;

class UserDatatable extends Component
{
    public function render()
    {
        return view('livewire.user-datatable',[
            'users' => User::all()
        ]);
    }
}
