<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    protected $fillable = [
        'designation',
        'file',
        'prix_actuel_detaillant',
        'prix_ancien_detaillant',
        'prix_actuel_grossiste',
        'prix_ancien_grossiste',
        'qte',
        'categorie',
        'date_time',
    ];
    use HasFactory;
}
