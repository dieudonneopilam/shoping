<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Shoping</title>
    @laravelPWA
    @vite('resources/css/app.css')
    @livewireStyles
    <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
</head>

<body class="bg-white">
    @if (!Route::is('login') and !Route::is('register'))
        @include('layouts.header')
    @endif

    <div class=" @if (!Route::is('login') and !Route::is('register')) mt-20 @endif ">
        @yield('main')
    </div>
    @if (Route::is('produit.index'))
        @include('layouts.footer')
    @endif
    @livewireScripts
</body>

</html>
