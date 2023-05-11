<div x-data='{open:false}'>
    <header class="fixed top-0 left-0 right-0 flex items-center justify-between h-20 px-2 bg-blue-400 md:px-10">
        <div>
            <h1 class="flex items-center text-2xl text-white">
                <img class="h-10 w-14 md:w-20 md:h-14" src="{{ asset('img/R.png') }}" alt="" srcset="">
                <span class="hidden lg:block">GRACE FASHION</span>
            </h1>
        </div>
        <div>
            <div class="hidden">
                <span>
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-menu-app" viewBox="0 0 16 16">
                        <path
                            d="M0 1.5A1.5 1.5 0 0 1 1.5 0h2A1.5 1.5 0 0 1 5 1.5v2A1.5 1.5 0 0 1 3.5 5h-2A1.5 1.5 0 0 1 0 3.5v-2zM1.5 1a.5.5 0 0 0-.5.5v2a.5.5 0 0 0 .5.5h2a.5.5 0 0 0 .5-.5v-2a.5.5 0 0 0-.5-.5h-2zM0 8a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V8zm1 3v2a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2H1zm14-1V8a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1v2h14zM2 8.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zm0 4a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5z" />
                    </svg>
                </span>
                <span>
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-x-lg" viewBox="0 0 16 16">
                        <path
                            d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8 2.146 2.854Z" />
                    </svg>
                </span>
            </div>
            <nav class="items-center hidden md:flex">
                @isset(Auth::user()->is_admin)
                    @if (Auth::user()->is_admin)
                        <li class="inline pr-3 text-lg">
                            <a class="flex items-center text-xl text-white hover:text-yellow-400"
                                href="{{ route('gestion') }}">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-layers-fill" viewBox="0 0 16 16">
                                    <path
                                        d="M7.765 1.559a.5.5 0 0 1 .47 0l7.5 4a.5.5 0 0 1 0 .882l-7.5 4a.5.5 0 0 1-.47 0l-7.5-4a.5.5 0 0 1 0-.882l7.5-4z" />
                                    <path
                                        d="m2.125 8.567-1.86.992a.5.5 0 0 0 0 .882l7.5 4a.5.5 0 0 0 .47 0l7.5-4a.5.5 0 0 0 0-.882l-1.86-.992-5.17 2.756a1.5 1.5 0 0 1-1.41 0l-5.17-2.756z" />
                                </svg>
                                <span class="block px-1">mon busness</span>
                            </a>
                        </li>
                    @endif
                @endisset
                <li class="inline pr-3 text-lg">
                    <a class="flex items-center text-xl text-white hover:text-yellow-400" href="{{ route('home') }}">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor"
                            class="bi bi-house-up-fill" viewBox="0 0 16 16">
                            <path
                                d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7Zm.354-5.854 1.5 1.5a.5.5 0 0 1-.708.708L13 11.707V14.5a.5.5 0 1 1-1 0v-2.793l-.646.647a.5.5 0 0 1-.708-.707l1.5-1.5a.5.5 0 0 1 .708 0Z" />
                            <path
                                d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L8 2.207l6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5Z" />
                            <path d="m8 3.293 4.712 4.712A4.5 4.5 0 0 0 8.758 15H3.5A1.5 1.5 0 0 1 2 13.5V9.293l6-6Z" />
                        </svg>
                        <span class="block px-1">Shoping</span>
                    </a>
                </li>
                <li class="inline pr-3 text-lg">
                    <a class="flex items-center text-xl text-white hover:text-yellow-400" href="{{ route('home') }}">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor"
                            class="bi bi-cart4" viewBox="0 0 16 16">
                            <path
                                d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z" />
                        </svg>
                        <span class="block px-1">Mes Commandes</span>
                    </a>
                </li>
                <li class="inline pr-3 ml-4 text-lg">
                    @isset(Auth::user()->id)
                        <a class="flex items-center text-white" href="{{ route('edit-profil') }}">
                            <img class="w-10 h-10 rounded-full" src="{{ Storage::url(Auth::user()->file) }}" alt=""
                                srcset="">
                        </a>
                    @else
                        <a class="flex items-center text-white" href="{{ route('login') }}">
                            connectez-vous
                        </a>
                    @endisset
                </li>
            </nav>
            <div class="flex mr-2 md:hidden">

                @isset(Auth::user()->id)
                    <img class="w-10 h-10 rounded-full" src="{{ Storage::url(Auth::user()->file) }}" alt=""
                        srcset="">
                @endisset
                <a x-on:click="open=true" class="text-white " href="#">
                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                        class="bi bi-text-left" viewBox="0 0 16 16">
                        <path fill-rule="evenodd"
                            d="M2 12.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5z" />
                    </svg>
                </a>
            </div>
        </div>
    </header>
    <nav :class="{ 'hidden': false }" x-show='open' x-transition.duration.500ms x-on:click.outside='open=false'
        class="fixed top-0 bottom-0 left-0 hidden w-10/12 h-screen overflow-y-auto bg-white md:hidden">
        <div class="w-full p-5">
            @isset(Auth::user()->id)
                <div class="flex items-end">
                    <img class="w-20 h-20 rounded-full" src="{{ Storage::url(Auth::user()->file) }}" alt=""
                        srcset="">
                    <a class="text-blue-500" href="{{ route('edit-profil') }}">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                            <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                            <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                          </svg>
                    </a>
                </div>
                <span class="block mt-2 text-lg font-medium">{{ Auth::user()->name }} {{ Auth::user()->lastname }}</span>
                <div class="flex items-center">
                    <a class="mr-5" href="{{ route('logout') }}">
                        <span class="block mt-2 text-lg font-medium text-red-500">Deconnexion</span>
                    </a>
                </div>
            @else
                <div>
                    <img class="w-20 h-20 rounded-full" src="{{ asset('img/login.webp') }}" alt=""
                        srcset="">
                    <a href=""></a>
                </div>
                <a href="{{ route('login') }}">
                    <span class="block mt-2 text-lg font-medium text-blue-500">connectez-vous</span>
                </a>
            @endisset

        </div>
        <div class="">
            <h1 class="flex items-center w-full p-2 pl-5 my-3 text-lg text-white bg-blue-400 shadow ">
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                    class="bi bi-text-left" viewBox="0 0 16 16">
                    <path fill-rule="evenodd"
                        d="M2 12.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5z" />
                </svg>
                <span>Menu</span>
            </h1>
            <nav class="flex-col items-center pl-5 my-5">
                @isset(Auth::user()->is_admin)
                    @if (Auth::user()->is_admin)
                        <li class="inline pr-3 text-lg">
                            <a class="flex items-center text-xl text-blue-400 hover:text-yellow-400"
                                href="{{ route('gestion') }}">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                    fill="currentColor" class="bi bi-layers-fill" viewBox="0 0 16 16">
                                    <path
                                        d="M7.765 1.559a.5.5 0 0 1 .47 0l7.5 4a.5.5 0 0 1 0 .882l-7.5 4a.5.5 0 0 1-.47 0l-7.5-4a.5.5 0 0 1 0-.882l7.5-4z" />
                                    <path
                                        d="m2.125 8.567-1.86.992a.5.5 0 0 0 0 .882l7.5 4a.5.5 0 0 0 .47 0l7.5-4a.5.5 0 0 0 0-.882l-1.86-.992-5.17 2.756a1.5 1.5 0 0 1-1.41 0l-5.17-2.756z" />
                                </svg>
                                <span class="block px-1">mon busness</span>
                            </a>
                        </li>
                    @endif
                @endisset
                <li class="inline pr-3 text-lg">
                    <a class="flex items-center text-xl text-blue-400 hover:text-yellow-400"
                        href="{{ route('home') }}">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor"
                            class="bi bi-house-up-fill" viewBox="0 0 16 16">
                            <path
                                d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7Zm.354-5.854 1.5 1.5a.5.5 0 0 1-.708.708L13 11.707V14.5a.5.5 0 1 1-1 0v-2.793l-.646.647a.5.5 0 0 1-.708-.707l1.5-1.5a.5.5 0 0 1 .708 0Z" />
                            <path
                                d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L8 2.207l6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5Z" />
                            <path
                                d="m8 3.293 4.712 4.712A4.5 4.5 0 0 0 8.758 15H3.5A1.5 1.5 0 0 1 2 13.5V9.293l6-6Z" />
                        </svg>
                        <span class="block px-1">Shoping</span>
                    </a>
                </li>
                <li class="inline pr-3 text-lg">
                    <a class="flex items-center text-xl text-blue-400 hover:text-yellow-400"
                        href="{{ route('home') }}">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor"
                            class="bi bi-cart4" viewBox="0 0 16 16">
                            <path
                                d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z" />
                        </svg>
                        <span class="block px-1">Commandes</span>
                    </a>
                </li>
            </nav>
        </div>
    </nav>
</div>
