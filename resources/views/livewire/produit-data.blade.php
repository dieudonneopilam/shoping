 <div class="mt-24">
     <div class="flex items-center w-11/12 h-16 pl-4 pr-4 ml-auto mr-auto border rounded shadow bg-gradient-to-bl">
         <p class="mr-5 text-lg text-bold">categorie</p>
         <div class="w-full">
             <select wire:model='categorie' class="w-full h-10 pl-2 pr-2 border rounded"id="">
                 <option value="">All</option>
                 <option value="chemise">chemises</option>
                 <option value="jupe">jupes</option>
             </select>
         </div>
     </div>
     <div
         class="grid w-11/12 grid-cols-1 gap-4 py-5 mx-auto sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 xl:grid-cols-5">

         @forelse ($produits as $produit)
             <div class="bg-white border rounded shadow-md">
                 <img class="w-full h-auto rounded-tl rounded-tr sm:h-60 md:h-60 objectif-cover"
                     src="{{ Storage::url($produit->file) }}" alt="">
                 <div class="p-4">
                     <div clq>
                         <p>{{ $produit->designation }}</p>
                     </div>
                     <div class="flex justify-between mt-2">
                         <a class="block px-2 py-2 text-white bg-blue-400 rounded" href="">commander</a>
                         <div>
                             <span class="text-lg">{{ $produit->prix_actuel_detaillant }}$</span>
                             <span
                                 class="ml-5 text-lg text-red-500 line-through">{{ $produit->prix_ancien_detaillant }}$</span>
                         </div>
                     </div>
                 </div>
             </div>
         @empty
             <h1>Aucun produit n'a été publié</h1>
         @endforelse
     </div>
 </div>
