<div x-data="{ openadd: false, opentable: true }">
    <div :class="{ 'hidden': false }" x-show="openadd"
        class="grid w-11/12 mx-auto bg-white md:w-10/12 md:shadow-lg rounded-2xl md:grid-cols-2 h-3/4">
        <div class="w-full p-10 md:block h-96">
            <img class="object-fill w-full h-full rounded-tl-2xl rounded-bl-2xl" src="{{ asset('img/connect.webp') }}"
                alt="" srcset="">
        </div>
        <div class="w-full p-5 ">
            <form x-data="{ open: false }" wire:submit.prevent='submit' class="w-full" enctype="multipart/form-data">
                <div class="flex justify-end w-full">
                    <a x-on:click="openadd=false,opentable=true" wire:click="forget" class="" href="#">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor"
                            class="bi bi-x-lg" viewBox="0 0 16 16">
                            <path
                                d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8 2.146 2.854Z" />
                        </svg>
                    </a>
                </div>
                <div class="grid grid-cols-1 gap-2 md:grid-cols-2">

                    <div class="w-full my-3">
                        <input class="w-full h-10 p-1 pl-2 border rounded" placeholder="name article"
                            wire:model.defer="name" type="text">
                        <div class='text-red-600'>
                            @error('name')
                                {{ $message }}
                            @enderror
                        </div>
                    </div>
                    <div class="w-full my-3">
                        <select wire:model.defer='categorie' class="w-full h-10 p-1 pl-2 border rounded">
                            <option value="null">select categorie</option>
                            <option value="jupe">jupe</option>
                            <option value="pentalon">pentalon</option>
                            <option value="chemise">chemise</option>
                            <option value="singlet">singlet</option>
                        </select>
                        <div class='text-red-600'>
                            @error('categorie')
                                {{ $message }}
                            @enderror
                        </div>
                    </div>
                    <div class="w-full my-3">
                        <input wire:model.defer='prix_actuel_grossiste' placeholder="prix actuel grossiste"
                            class="w-full h-10 p-1 pl-2 border rounded" type="number">
                        <div class='text-red-600'>
                            @error('prix_actuel_grossiste')
                                {{ $message }}
                            @enderror
                        </div>
                    </div>

                    <div class="w-full my-3">
                        <input wire:model.defer='prix_ancien_grossiste' placeholder="prix ancien grossiste"
                            class="w-full h-10 p-1 pl-2 border rounded" type="number">
                        <div class='text-red-600'>
                            @error('prix_ancien_grossiste')
                                {{ $message }}
                            @enderror
                        </div>
                    </div>
                    <div class="w-full my-3">
                        <input wire:model.defer='prix_actuel_detaillant' placeholder="prix actuel detaillant"
                            class="w-full h-10 p-1 pl-2 border rounded" type="number">
                        <div class='text-red-600'>
                            @error('prix_actuel_detaillant')
                                {{ $message }}
                            @enderror
                        </div>
                    </div>

                    <div class="w-full my-3">
                        <input wire:model.defer='prix_ancien_detaillant' placeholder="prix ancien detaillant"
                            class="w-full h-10 p-1 pl-2 border rounded" type="number">
                        <div class='text-red-600'>
                            @error('prix_ancien_detaillant')
                                {{ $message }}
                            @enderror
                        </div>
                    </div>

                    @if (session()->has('message'))
                        <div x-data="{ openadd: false, opentable: true }" class="w-full p-5 bg-green-400 rounded">

                            <div class=" alert-success">
                                {{ session('message') }}
                            </div>

                        </div>
                    @endif
                </div>
                <div class="w-full my-3">
                    <input wire:model.defer='file' placeholder="prix actuel detaillant"
                        class="w-full h-10 p-1 pl-2 border rounded" type="file">
                    <div class='text-red-600'>
                        @error('file')
                            {{ $message }}
                        @enderror
                    </div>
                </div>
                <div class="flex justify-center">
                    <button wire:loading type="button" class="text-blue-500" disabled>
                        Processing...
                    </button>
                </div>
                <div class="w-full my-3">
                    <button wire:loading.attr='disabled' type="submit"
                        class="flex items-center justify-center w-full h-10 text-white bg-blue-400 rounded">
                        <svg wire:loading class="animate-spin" xmlns="http://www.w3.org/2000/svg" width="20"
                            height="20" fill="currentColor" class="bi bi-arrow-clockwise" viewBox="0 0 16 16">
                            <path fill-rule="evenodd"
                                d="M8 3a5 5 0 1 0 4.546 2.914.5.5 0 0 1 .908-.417A6 6 0 1 1 8 2v1z" />
                            <path
                                d="M8 4.466V.534a.25.25 0 0 1 .41-.192l2.36 1.966c.12.1.12.284 0 .384L8.41 4.658A.25.25 0 0 1 8 4.466z" />
                        </svg>
                        <span class="ml-2">Save</span>
                    </button>
                </div>

            </form>
        </div>
    </div>
    <div x-show="opentable" class="overflow-x-auto">
        <div class="flex items-center justify-center p-2 overflow-hidden font-sans bg-gray-100 min-w-screen">
            <div class="w-full m-5 lg:w-5/6">
                <div class="flex flex-wrap-reverse items-center justify-between">
                    <div class="w-full h-10 sm:w-2/3">
                        <input class="w-4/5 h-full px-5 border rounded" wire:model.debounce.500ms="search"
                            placeholder="search vente">
                        <select wire:model='nbpage' class="w-1/6 h-full px-1 border rounded" id="">
                            <option value="5">5</option>
                            <option value="10">10</option>
                            <option value="25">25</option>
                            <option value="50">50</option>
                            <option value="100">100</option>
                        </select>
                    </div>
                    <a href="#" x-on:click="openadd=true,opentable=false"
                        class="flex items-center h-10 px-2 my-2 text-white bg-blue-500 border rounded">Nouvel
                        Article</a>
                </div>
                <div class="m-1 my-1 overflow-x-auto bg-white rounded shadow-md">

                    <div class="flex justify-center">
                        <button wire:loading type="button" class="text-blue-500" disabled>
                            Processing...
                        </button>
                    </div>
                    <table class="w-full table-auto min-w-max">
                        <thead>
                            <tr class="text-sm leading-normal text-gray-600 uppercase bg-gray-200">
                                <th class="px-6 py-3 text-left">DATE</th>
                                <th class="px-6 py-3 text-left">ARTICLES</th>
                                <th class="px-6 py-3 text-left">PRIX DETAIL</th>
                                <th class="px-6 py-3 text-left">PRIX GROS</th>
                                <th class="px-6 py-3 text-left">CATERGORIE</th>
                                <th class="px-6 py-3 text-left">ACTION</th>
                            </tr>
                        </thead>
                        <tbody class="text-sm font-light text-gray-600">
                            @foreach ($articles as $article)
                                <tr class="border-b border-gray-200 hover:bg-gray-100">
                                    <td class="px-6 py-3 text-left whitespace-nowrap">
                                        <div class="flex items-center">
                                            <span class="font-medium">{{ $article->date_time }}</span>
                                        </div>
                                    </td>
                                    <td class="px-6 py-3 text-left whitespace-nowrap">
                                        <div class="flex items-center">
                                            <div class="mr-2">
                                                <img class='w-8 h-8 rounded-full'
                                                    src="{{ Storage::url($article->file) }}"
                                                    alt="{{ __('') }}">
                                            </div>
                                            <span class="font-medium">{{ $article->designation }}</span>
                                        </div>
                                    </td>
                                    <td class="px-6 py-3 text-left whitespace-nowrap">
                                        <div class="flex items-center">
                                            <span
                                                class="text-lg font-medium">{{ $article->prix_actuel_detaillant }}$</span>
                                            <span
                                                class="ml-5 text-lg font-medium text-red-500 line-through">{{ $article->prix_ancien_detaillant }}$</span>
                                        </div>
                                    </td>
                                    <td class="px-6 py-3 text-left whitespace-nowrap">
                                        <div class="flex items-center">
                                            <span
                                                class="text-lg font-medium">{{ $article->prix_actuel_grossiste }}$</span>
                                            <span
                                                class="ml-5 text-lg font-medium text-red-500 line-through">{{ $article->prix_ancien_grossiste }}$</span>
                                        </div>
                                    </td>
                                    <td class="px-6 py-3 text-left whitespace-nowrap">
                                        <div class="flex items-center">
                                            <span class="font-medium">{{ $article->categorie }}</span>
                                        </div>
                                    </td>
                                    <td class="inline-block px-6 py-3 text-left">
                                        <div class="flex justify-center item-center">
                                            <div class="w-5 mr-2 transform hover:text-purple-500 hover:scale-110">
                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                    viewBox="0 0 24 24" stroke="currentColor">
                                                    <path stroke-linecap="round" stroke-linejoin="round"
                                                        stroke-width="2"
                                                        d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z" />
                                                </svg>
                                            </div>
                                            <div class="w-5 mr-2 transform hover:text-purple-500 hover:scale-110">
                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                    viewBox="0 0 24 24" stroke="currentColor">
                                                    <path stroke-linecap="round" stroke-linejoin="round"
                                                        stroke-width="2"
                                                        d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
                                                </svg>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach

                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>
</div>
