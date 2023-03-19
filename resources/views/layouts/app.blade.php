<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Shoping</title>
    @laravelPWA
    @vite('resources/css/app.css')
</head>
<body class="bg-gray-200">
    @include('layouts.header')
    <div class="mt-20 ">
        @yield('main')
    </div>
    @if (Route::is('produit.index'))
        @include('layouts.footer')
    @endif
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.4/flowbite.min.js"></script>
</body>
</html>
