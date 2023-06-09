@extends('layouts.app')
@section('main')
 <div class="w-10/12 p-10 ml-auto mr-auto bg-white rounded-lg mt-28">
    <div class="text-5xl text-center font-extrabold ...">
        <span class="text-transparent bg-clip-text bg-gradient-to-r from-pink-500 to-violet-500">
          Faites vos rapport avec un seul clic
        </span>
      </div>
    <div class="flex justify-center mt-10 w-fullmt-32">
        <div class="flex flex-col items-center p-5 m-5 bg-white rounded-lg shadow-md h-44 w-52">
            <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-currency-dollar" viewBox="0 0 16 16">
                <path d="M4 10.781c.148 1.667 1.513 2.85 3.591 3.003V15h1.043v-1.216c2.27-.179 3.678-1.438 3.678-3.3 0-1.59-.947-2.51-2.956-3.028l-.722-.187V3.467c1.122.11 1.879.714 2.07 1.616h1.47c-.166-1.6-1.54-2.748-3.54-2.875V1H7.591v1.233c-1.939.23-3.27 1.472-3.27 3.156 0 1.454.966 2.483 2.661 2.917l.61.162v4.031c-1.149-.17-1.94-.8-2.131-1.718H4zm3.391-3.836c-1.043-.263-1.6-.825-1.6-1.616 0-.944.704-1.641 1.8-1.828v3.495l-.2-.05zm1.591 1.872c1.287.323 1.852.859 1.852 1.769 0 1.097-.826 1.828-2.2 1.939V8.73l.348.086z"/>
              </svg>

            <a class="block w-11/12 p-1 mt-4 text-center rounded-full border-x-2 border-y-2 border-sky-400 hover:bg-sky-400" href="{{ route('vente.index') }}">vente</a>
        </div>
        <div class="flex flex-col items-center p-5 m-5 bg-white rounded-lg shadow-md h-44 w-52">
            <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-graph-up" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M0 0h1v15h15v1H0V0Zm14.817 3.113a.5.5 0 0 1 .07.704l-4.5 5.5a.5.5 0 0 1-.74.037L7.06 6.767l-3.656 5.027a.5.5 0 0 1-.808-.588l4-5.5a.5.5 0 0 1 .758-.06l2.609 2.61 4.15-5.073a.5.5 0 0 1 .704-.07Z"/>
              </svg>
            <a class="block w-11/12 p-1 mt-4 text-center rounded-full border-x-2 border-y-2 border-sky-400 hover:bg-sky-400" href="">Rapport</a>
        </div>
        <div class="flex flex-col items-center p-5 m-5 bg-white rounded-lg shadow-md h-44 w-52">
            <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-currency-dollar" viewBox="0 0 16 16">
                <path d="M4 10.781c.148 1.667 1.513 2.85 3.591 3.003V15h1.043v-1.216c2.27-.179 3.678-1.438 3.678-3.3 0-1.59-.947-2.51-2.956-3.028l-.722-.187V3.467c1.122.11 1.879.714 2.07 1.616h1.47c-.166-1.6-1.54-2.748-3.54-2.875V1H7.591v1.233c-1.939.23-3.27 1.472-3.27 3.156 0 1.454.966 2.483 2.661 2.917l.61.162v4.031c-1.149-.17-1.94-.8-2.131-1.718H4zm3.391-3.836c-1.043-.263-1.6-.825-1.6-1.616 0-.944.704-1.641 1.8-1.828v3.495l-.2-.05zm1.591 1.872c1.287.323 1.852.859 1.852 1.769 0 1.097-.826 1.828-2.2 1.939V8.73l.348.086z"/>
              </svg>

            <a class="block w-11/12 p-1 mt-4 text-center rounded-full border-x-2 border-y-2 border-sky-400 hover:bg-sky-400" href="{{ route('vente.index') }}">vente</a>
        </div>
        <div class="flex flex-col items-center p-5 m-5 bg-white rounded-lg shadow-md h-44 w-52">
            <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-graph-up" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M0 0h1v15h15v1H0V0Zm14.817 3.113a.5.5 0 0 1 .07.704l-4.5 5.5a.5.5 0 0 1-.74.037L7.06 6.767l-3.656 5.027a.5.5 0 0 1-.808-.588l4-5.5a.5.5 0 0 1 .758-.06l2.609 2.61 4.15-5.073a.5.5 0 0 1 .704-.07Z"/>
              </svg>
            <a class="block w-11/12 p-1 mt-4 text-center rounded-full border-x-2 border-y-2 border-sky-400 hover:bg-sky-400" href="">Rapport</a>
        </div>
     </div>
 </div>
@endsection
