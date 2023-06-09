@extends('layouts.app')
@section('main')
    <div class="grid w-11/12 grid-cols-1 p-5 mx-auto mt-24 bg-white rounded-lg md:grid-cols-2">
        <div class="flex items-center justify-center">
            <img class="" src="{{ asset('img/busness.png') }}" alt="" srcset="">
        </div>
        <div class="">
            <div class="mb-5 text-5xl font-extrabold text-center">
                <span class="text-transparent bg-clip-text bg-gradient-to-r from-pink-500 to-violet-500">
                    Gestion
                </span>
            </div>
            <div class="grid grid-cols-3 gap-1 mx-auto mt-5 md:grid-cols-3 lg:grid-cols-4 place-content-center">
                <div class="flex flex-col items-center p-5 bg-white border rounded-md shadow-xl">
                    <svg xmlns="http://www.w3.org/2000/svg" color=pink width="30" height="30" fill="currentColor"
                        class="bi bi-bucket-fill" viewBox="0 0 16 16">
                        <path
                            d="M2.522 5H2a.5.5 0 0 0-.494.574l1.372 9.149A1.5 1.5 0 0 0 4.36 16h7.278a1.5 1.5 0 0 0 1.483-1.277l1.373-9.149A.5.5 0 0 0 14 5h-.522A5.5 5.5 0 0 0 2.522 5zm1.005 0a4.5 4.5 0 0 1 8.945 0H3.527z" />
                    </svg>
                    <a class="block p-1 text-center text-black" href="{{ route('article') }}">produits</a>
                </div>
                <div class="flex flex-col items-center p-5 bg-white border rounded-md shadow-xl">
                    <svg xmlns="http://www.w3.org/2000/svg" color="pine" width="30" height="30" fill="currentColor"
                        class="bi bi-minecart-loaded" viewBox="0 0 16 16">
                        <path
                            d="M4 15a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm0 1a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm8-1a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm0 1a2 2 0 1 0 0-4 2 2 0 0 0 0 4zM.115 3.18A.5.5 0 0 1 .5 3h15a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 14 12H2a.5.5 0 0 1-.491-.408l-1.5-8a.5.5 0 0 1 .106-.411zm.987.82 1.313 7h11.17l1.313-7H1.102z" />
                        <path fill-rule="evenodd"
                            d="M6 1a2.498 2.498 0 0 1 4 0c.818 0 1.545.394 2 1 .67 0 1.552.57 2 1h-2c-.314 0-.611-.15-.8-.4-.274-.365-.71-.6-1.2-.6-.314 0-.611-.15-.8-.4a1.497 1.497 0 0 0-2.4 0c-.189.25-.486.4-.8.4-.507 0-.955.251-1.228.638-.09.13-.194.25-.308.362H3c.13-.147.401-.432.562-.545a1.63 1.63 0 0 0 .393-.393A2.498 2.498 0 0 1 6 1z" />
                    </svg>
                    <a class="block p-1 text-center text-black" href="{{ route('vente.index') }}">commandes</a>
                </div>
                <div class="flex flex-col items-center p-5 bg-white border rounded-md shadow-xl">
                    <svg xmlns="http://www.w3.org/2000/svg" color=orange width="30" height="30" fill="currentColor"
                        class="bi bi-currency-dollar" viewBox="0 0 16 16">
                        <path
                            d="M4 10.781c.148 1.667 1.513 2.85 3.591 3.003V15h1.043v-1.216c2.27-.179 3.678-1.438 3.678-3.3 0-1.59-.947-2.51-2.956-3.028l-.722-.187V3.467c1.122.11 1.879.714 2.07 1.616h1.47c-.166-1.6-1.54-2.748-3.54-2.875V1H7.591v1.233c-1.939.23-3.27 1.472-3.27 3.156 0 1.454.966 2.483 2.661 2.917l.61.162v4.031c-1.149-.17-1.94-.8-2.131-1.718H4zm3.391-3.836c-1.043-.263-1.6-.825-1.6-1.616 0-.944.704-1.641 1.8-1.828v3.495l-.2-.05zm1.591 1.872c1.287.323 1.852.859 1.852 1.769 0 1.097-.826 1.828-2.2 1.939V8.73l.348.086z" />
                    </svg>
                    <a class="block p-1 text-center text-black-400" href="{{ route('vente.index') }}">vente</a>
                </div>
                <div class="flex flex-col items-center p-5 bg-white border rounded-md shadow-xl">
                    <svg xmlns="http://www.w3.org/2000/svg" color=blue width="30" height="30" fill="currentColor"
                        class="bi bi-people-fill" viewBox="0 0 16 16">
                        <path
                            d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7Zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216ZM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z" />
                    </svg>
                    <a class="block p-1 text-center text-black" href="{{ route('vente.index') }}">clients</a>
                </div>


                <div class="flex flex-col items-center p-5 bg-white border rounded-md shadow-xl">
                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                        class="bi bi-currency-dollar" viewBox="0 0 16 16">
                        <path
                            d="M4 10.781c.148 1.667 1.513 2.85 3.591 3.003V15h1.043v-1.216c2.27-.179 3.678-1.438 3.678-3.3 0-1.59-.947-2.51-2.956-3.028l-.722-.187V3.467c1.122.11 1.879.714 2.07 1.616h1.47c-.166-1.6-1.54-2.748-3.54-2.875V1H7.591v1.233c-1.939.23-3.27 1.472-3.27 3.156 0 1.454.966 2.483 2.661 2.917l.61.162v4.031c-1.149-.17-1.94-.8-2.131-1.718H4zm3.391-3.836c-1.043-.263-1.6-.825-1.6-1.616 0-.944.704-1.641 1.8-1.828v3.495l-.2-.05zm1.591 1.872c1.287.323 1.852.859 1.852 1.769 0 1.097-.826 1.828-2.2 1.939V8.73l.348.086z" />
                    </svg>
                    <a class="block p-1 text-center text-blue-400" href="{{ route('vente.index') }}">vente</a>
                </div>
            </div>
        </div>
    </div>
@endsection
