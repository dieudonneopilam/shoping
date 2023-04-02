<?php

namespace App\Http\Livewire;

use App\Models\User;
use Livewire\Component;
use Livewire\WithPagination;

class VenteDataTable extends Component
{
    use WithPagination;

    public  $search = "";

    protected $rules = [
        'search' => ['required','string']
    ];

    protected $queryString = [
        'search' => ['except' => '']
    ];

    public function render()
    {
        return view('livewire.vente-data-table', [
            'users' => User::where('name', 'LIKE', "%{$this->search}%")->paginate(5)
        ]);
    }
}
