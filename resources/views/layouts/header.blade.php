<header class="fixed top-0 left-0 right-0 flex items-center justify-between h-20 px-1 bg-white md:px-14">
    <div>
        <h1 class="flex items-center text-4xl"><img class="h-10 w-14 md:w-20 md:h-14" src="{{ asset('img/R.png') }}" alt="" srcset="">
            Dieudo</h1>
    </div>
    <div x-data={open:true}>
        <div>
            <span>
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                    class="bi bi-menu-app" viewBox="0 0 16 16">
                    <path
                        d="M0 1.5A1.5 1.5 0 0 1 1.5 0h2A1.5 1.5 0 0 1 5 1.5v2A1.5 1.5 0 0 1 3.5 5h-2A1.5 1.5 0 0 1 0 3.5v-2zM1.5 1a.5.5 0 0 0-.5.5v2a.5.5 0 0 0 .5.5h2a.5.5 0 0 0 .5-.5v-2a.5.5 0 0 0-.5-.5h-2zM0 8a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V8zm1 3v2a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2H1zm14-1V8a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1v2h14zM2 8.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zm0 4a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5z" />
                </svg>
            </span>
            <span>
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-lg"
                    viewBox="0 0 16 16">
                    <path
                        d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8 2.146 2.854Z" />
                </svg>
            </span>
        </div>
        <nav class="hidden ">
            <li class="inline pr-3 text-lg"><a href="">about-us</a></li>
            <li class="inline pr-3 text-lg"><a href="{{ route('gestion') }}">mon busness</a></li>
            <li class="inline pr-3 text-lg"><a href="{{ route('home') }}">shoping</a></li>
            <li class="inline pr-3 ml-4 text-lg"><a href="">mon panier</a></li>
            <li class="inline pr-3 text-lg"><a href=""><i class="mdi mdi-tailwind:"></i></a></li>
        </nav>
    </div>
</header>
