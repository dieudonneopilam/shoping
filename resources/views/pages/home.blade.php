@extends('layouts.app')
@section('main')
<div class="mt-24">
    <div class="h-16 bg-gradient-to-bl bg-yellow-300 w-11/12 ml-auto mr-auto flex items-center pl-4 pr-4 rounded">
        <p class="text-lg mr-5 text-bold">categorie</p>
        <form action="" class="w-1/3">

            <div class="w-full">
                <select class="h-10 w-full pr-2 pl-2 rounded" name="" id="">
                    <option value="">All</option>
                    <option value="">chemises</option>
                    <option value="">jupes</option>
                </select>
            </div>
        </form>
    </div>
    <div class=" w-11/12 sm:bg-red-500 flex flex-wrap items-center mr-auto ml-auto pt-0 pl-0 sm:pl-10">

        <div class="flex justify-around box-border flex-col 2xl:w-1/6 xl:w-1/5 lg:w-1/4 md:w-1/3 sm:w-1/3 w-full mr-auto ml-auto sm:mr-5 sm:ml-0 shadow-lg bg-white mt-5 rounded">
            <img class="rounded-tl rounded-tr w-full h-auto sm:h-60 md:h-60 objectif-cover" src="{{ asset('img/habit.jpg') }}" alt="">
            <div class="p-4">
                <p>name</p>
                <div class="flex justify-between mt-2">
                    <a class="bg-blue-500 block p-1 pr-2 pl-2 rounded text-white" href="">commander</a>
                    <span class="text-lg">13$</span>
                </div>
            </div>
        </div>
        <div class="flex justify-around box-border flex-col 2xl:w-1/6 xl:w-1/5 lg:w-1/4 md:w-1/3 sm:w-1/3 w-full mr-auto ml-auto sm:mr-5 sm:ml-0  shadow-lg bg-white mt-5 rounded">
            <img class="rounded-tl rounded-tr w-full h-auto sm:h-60 md:h-60 objectif-cover" src="{{ asset('img/habi.jpg') }}" alt="">
            <div class="p-4">
                <p>name</p>
                <div class="flex justify-between mt-2">
                    <a class="bg-blue-500 block p-1 pr-2 pl-2 rounded text-white" href="">commander</a>
                    <span class="text-lg">13$</span>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
