@extends('layouts.app')
@section('main')
<div class="mt-24">
    <div class="flex items-center w-11/12 h-16 pl-4 pr-4 ml-auto mr-auto bg-yellow-300 rounded bg-gradient-to-bl">
        <p class="mr-5 text-lg text-bold">categorie</p>
        <form action="" class="w-1/3">

            <div class="w-full">
                <select class="w-full h-10 pl-2 pr-2 rounded" name="" id="">
                    <option value="">All</option>
                    <option value="">chemises</option>
                    <option value="">jupes</option>
                </select>
            </div>
        </form>
    </div>
    <div class="grid w-11/12 grid-cols-1 gap-4 py-5 mx-auto sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 xl:grid-cols-6">

        <div class="bg-white rounded">
            <img class="w-full h-auto rounded-tl rounded-tr sm:h-60 md:h-60 objectif-cover" src="{{ asset('img/habit.jpg') }}" alt="">
            <div class="p-4">
                <p>name</p>
                <div class="flex justify-between mt-2">
                    <a class="block p-1 pl-2 pr-2 text-white bg-blue-500 rounded" href="">commander</a>
                    <span class="text-lg">13$</span>
                </div>
            </div>
        </div>
        <div class="bg-white rounded">
            <img class="w-full h-auto rounded-tl rounded-tr sm:h-60 md:h-60 objectif-cover" src="{{ asset('img/habit.jpg') }}" alt="">
            <div class="p-4">
                <p>name</p>
                <div class="flex justify-between mt-2">
                    <a class="block p-1 pl-2 pr-2 text-white bg-blue-500 rounded" href="">commander</a>
                    <span class="text-lg">13$</span>
                </div>
            </div>
        </div>
        <div class="bg-white rounded">
            <img class="w-full h-auto rounded-tl rounded-tr sm:h-60 md:h-60 objectif-cover" src="{{ asset('img/habit.jpg') }}" alt="">
            <div class="p-4">
                <p>name</p>
                <div class="flex justify-between mt-2">
                    <a class="block p-1 pl-2 pr-2 text-white bg-blue-500 rounded" href="">commander</a>
                    <span class="text-lg">13$</span>
                </div>
            </div>
        </div>
        <div class="bg-white rounded">
            <img class="w-full h-auto rounded-tl rounded-tr sm:h-60 md:h-60 objectif-cover" src="{{ asset('img/habit.jpg') }}" alt="">
            <div class="p-4">
                <p>name</p>
                <div class="flex justify-between mt-2">
                    <a class="block p-1 pl-2 pr-2 text-white bg-blue-500 rounded" href="">commander</a>
                    <span class="text-lg">13$</span>
                </div>
            </div>
        </div>
        <div class="bg-white rounded">
            <img class="w-full h-auto rounded-tl rounded-tr sm:h-60 md:h-60 objectif-cover" src="{{ asset('img/habit.jpg') }}" alt="">
            <div class="p-4">
                <p>name</p>
                <div class="flex justify-between mt-2">
                    <a class="block p-1 pl-2 pr-2 text-white bg-blue-500 rounded" href="">commander</a>
                    <span class="text-lg">13$</span>
                </div>
            </div>
        </div>
        <div class="bg-white rounded">
            <img class="w-full h-auto rounded-tl rounded-tr sm:h-60 md:h-60 objectif-cover" src="{{ asset('img/habit.jpg') }}" alt="">
            <div class="p-4">
                <p>name</p>
                <div class="flex justify-between mt-2">
                    <a class="block p-1 pl-2 pr-2 text-white bg-blue-500 rounded" href="">commander</a>
                    <span class="text-lg">13$</span>
                </div>
            </div>
        </div>
        <div class="bg-white rounded">
            <img class="w-full h-auto rounded-tl rounded-tr sm:h-60 md:h-60 objectif-cover" src="{{ asset('img/habit.jpg') }}" alt="">
            <div class="p-4">
                <p>name</p>
                <div class="flex justify-between mt-2">
                    <a class="block p-1 pl-2 pr-2 text-white bg-blue-500 rounded" href="">commander</a>
                    <span class="text-lg">13$</span>
                </div>
            </div>
        </div>
        <div class="bg-white rounded">
            <img class="w-full h-auto rounded-tl rounded-tr sm:h-60 md:h-60 objectif-cover" src="{{ asset('img/habit.jpg') }}" alt="">
            <div class="p-4">
                <p>name</p>
                <div class="flex justify-between mt-2">
                    <a class="block p-1 pl-2 pr-2 text-white bg-blue-500 rounded" href="">commander</a>
                    <span class="text-lg">13$</span>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
