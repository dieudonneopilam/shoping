<div class="h-screen p-5 overflow-y-auto bg-white">
    <div class="grid w-11/12 grid-cols-1 mx-auto my-10 bg-white rounded-lg md:border md:w-10/12 md:grid-cols-2">
        <div class="flex items-center justify-center rounded-tl-md">
            <img class="" src="{{ asset('img/connect.png') }}" alt="" srcset="">
        </div>
        <div class="md:p-10">
            <form wire:submit.prevent='login'>
                <div class="flex items-center mb-5 text-lg text-blue-400 md:text-left">
                    <a class="mr-5" href="{{ route('home') }}">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-left" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
                          </svg>
                    </a>
                </div>
                <div class="grid grid-cols-1 gap-2 ">
                    <div class="w-full">
                        <input wire:model.defer='username' class="w-full h-10 p-2 border rounded"
                            placeholder="mail or username" type="text">
                        @error('username')
                            <div class="text-red-500">
                                {{ $message }}
                            </div>
                        @enderror

                    </div>
                    <div class="w-full">
                        <input wire:model.defer='password' type="password" class="w-full h-10 p-2 border rounded" placeholder="password"
                            type="text">
                        @error('password')
                            <div class="text-red-500">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                </div>
                @if (session()->has('message'))
                    <div>
                        <span class="text-red-500">{{ session('message') }}</span>
                    </div>
                @endif
                <div class="w-full my-5 ">

                    <button wire:loading.attr='disabled' type="submit"
                        class="flex items-center justify-center w-full h-10 text-white bg-blue-400 rounded">
                        <svg wire:loading class="animate-spin" xmlns="http://www.w3.org/2000/svg" width="20"
                            height="20" fill="currentColor" class="bi bi-arrow-clockwise" viewBox="0 0 16 16">
                            <path fill-rule="evenodd"
                                d="M8 3a5 5 0 1 0 4.546 2.914.5.5 0 0 1 .908-.417A6 6 0 1 1 8 2v1z" />
                            <path
                                d="M8 4.466V.534a.25.25 0 0 1 .41-.192l2.36 1.966c.12.1.12.284 0 .384L8.41 4.658A.25.25 0 0 1 8 4.466z" />
                        </svg>
                        <span class="ml-2">Se connecter</span>
                    </button>
                </div>
                <div class="w-full my-5 text-center">
                    <a class="text-blue-500" href="{{ route('register') }}">Cliquer ici pour vous inscrire </a>
                </div>
            </form>
        </div>
    </div>
</div>
