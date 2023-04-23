<div class="h-screen p-5 overflow-y-auto bg-white">
    <div class="grid w-11/12 grid-cols-1 mx-auto my-10 bg-white rounded-lg md:border md:w-10/12 md:grid-cols-2">
        <div class="flex items-center justify-center rounded-tl-md">
            <img class="" src="{{ asset('img/connect.png') }}" alt="" srcset="">
        </div>
        <div class="md:p-10">
            <form wire:submit.prevent='login'>
                <div class="mb-5 text-lg text-blue-400 md:text-left">
                    <span>connectez-vous</span>
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
                        <input wire:model.defer='password' class="w-full h-10 p-2 border rounded" placeholder="password"
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
                <div class="w-full my-5">
                    <button type="submit" class="w-full h-10 text-white bg-blue-400 rounded">Se connecter</button>
                </div>
            </form>
        </div>
    </div>
</div>
