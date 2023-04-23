<?php

namespace App\Http\Livewire;

use App\Models\Article;
use Livewire\Component;
use Livewire\WithFileUploads;
use Livewire\WithPagination;


class ArticleDataTable extends Component
{
    use WithPagination;
    use WithFileUploads;
    public $name;
    public $file;
    public $categorie;
    public $prix_actuel_grossiste;
    public $prix_ancien_grossiste;
    public $prix_actuel_detaillant;
    public $prix_ancien_detaillant;
    public $search = '';
    public $nbpage = 5;
    public $open = true;
    public $opentable = false;

    public $rules = [
        'search' => ['required'],
        'nbpage' => ['required'],
    ];
    public function render()
    {
        return view('livewire.article-data-table',[
            'articles' => Article::paginate(10),
            'produits' => [],
            'agents' => [],
            'ventes' => []
        ]);
    }

    public function forget(){
        session()->forget('message');
    }
    public function submit(){
        $this->rules = [
            'name' => ['required'],
            'categorie' => ['required'],
            'prix_actuel_grossiste' => ['required'],
            'prix_ancien_grossiste' => ['required'],
            'prix_actuel_detaillant' => ['required'],
            'prix_ancien_detaillant' => ['required'],
            'file' => ['required']
        ];
        $this->validate();
        $filename = time().'.'.$this->file->extension();
        $path = $this->file->storeAs(
            'avatars',
            $filename,
            'public'
        );

        Article::create([
            'designation' => $this->name,
            'file' => $path,
            'prix_actuel_detaillant' => $this->prix_actuel_detaillant,
            'prix_ancien_detaillant' => $this->prix_ancien_detaillant,
            'prix_actuel_grossiste' => $this->prix_actuel_grossiste,
            'prix_ancien_grossiste' => $this->prix_ancien_grossiste,
            'qte' => 0,
            'date_time' => now(),
            'categorie' => $this->categorie
        ]);
    }
}
