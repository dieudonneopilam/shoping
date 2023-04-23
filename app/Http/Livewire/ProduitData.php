<?php

namespace App\Http\Livewire;

use App\Models\Article;
use Livewire\Component;

class ProduitData extends Component
{
    public $categorie = '';
    protected $rules = [
        'categorie' => ['required']
    ];
    public function render()
    {
        return view('livewire.produit-data',[
            'produits' => Article::all()
        ]);
    }
}
