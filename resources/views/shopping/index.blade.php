<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Shop') }}
        </h2>
    </x-slot>

    @if (session('success'))
    <div class="m-4 bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded relative" role="alert">
        <span class="block sm:inline">
            {{ session('success') }}
        </span>
        <span class="absolute top-0 bottom-0 right-0 px-4 py-3">
            <svg class="fill-current h-6 w-6 text-green-500" role="button" xmlns="http://www.w3.org/2000/svg"
                viewBox="0 0 20 20" onclick="this.parentElement.parentElement.style.display='none'">
                <title>Close</title>
                <path
                    d="M14.348 5.652a.5.5 0 00-.707 0L10 9.293 6.354 5.646a.5.5 0 10-.708.708L9.293 10l-3.646 3.646a.5.5 0 10.708.708L10 10.707l3.646 3.647a.5.5 0 00.707-.708L10.707 10l3.641-3.646a.5.5 0 000-.707z" />
            </svg>
        </span>
    </div>
    @endif

    <div class="container mx-auto px-4 mt-10 pb-10">
        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">
            @foreach ($products as $product)
                <a href="{{ route('shopping.show', $product->id) }}">
                    <div class="bg-white shadow-md rounded-xl p-4 dark:bg-gray-800 relative">
                        @if ($product->image)
                            <img src="{{ asset('storage/' . $product->image) }}" alt="{{ $product->name }}"
                                class="w-full h-48 object-cover mb-4 overflow-hidden rounded-lg">
                        @else
                            <img src="{{ asset('storage/images/no-image.png') }}" alt="No Image Product"
                                class="w-full h-48 object-cover mb-4 overflow-hidden rounded-lg">
                        @endif
                        <h2 class="text-xl font-semibold text-gray-800 dark:text-gray-200">{{ $product->name }}</h2>
                        <p class="text-gray-600 dark:text-gray-400 truncate pb-4">{{ $product->description }}</p>
                        <div class="flex items-center">
                            <p class="rounded-lg py-1 px-4 bg-primary text-white dark:text-gray-800 font-bold ">$
                                {{ $product->price }}</p>
                        </div>
                    </div>
                </a>
            @endforeach
        </div>
    </div>

</x-app-layout>
