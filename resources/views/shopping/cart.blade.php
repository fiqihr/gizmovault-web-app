<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Cart') }}
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

    <div class="container mx-auto p-4">
        @foreach ($cartItems as $item)
            <div
                class="bg-white dark:bg-gray-800 shadow-md rounded-lg p-6 mb-4 flex flex-col md:flex-row lg:items-center md:items-start justify-between">
                <div class="flex mb-4 md:mb-0 lg:mb-0">
                    <div class="mr-4 ml-0 ">
                        @if ($item->product->image)
                            <img src="{{ asset('storage/' . $item->product->image) }}" alt="{{ $item->product->name }}"
                                class="shadow-md w-32 h-32 object-cover rounded-lg">
                        @else
                            <img src="{{ asset('storage/images/no-image.png') }}" alt="No Image Product"
                                class="shadow-md w-32 h-32 object-cover rounded-lg">
                        @endif
                    </div>
                    <div class="flex-1">
                        <h3 class="text-lg font-semibold text-gray-800 dark:text-gray-200">{{ $item->product->name }}
                        </h3>
                        <p class="text-gray-400 dark:text-gray-200 font-bold text-xl py-2">$ {{ $item->product->price }}
                        </p>
                    </div>
                </div>
                <div class="mt-4 md:mt-0 md:ml-4 flex items-center space-x-2">
                    <form action="{{ route('shopping.update', $item->id) }}" method="POST"
                        class="flex items-center space-x-2">
                        @csrf
                        @method('PUT')
                        <input type="number" name="quantity" value="{{ $item->quantity }}" min="1"
                            class="w-16 h-10 text-center border rounded-md py-1 px-auto text-gray-800 dark:text-gray-200 dark:bg-gray-700">
                        <button type="submit"
                            class="flex items-center justify-center bg-primary text-white dark:text-gray-800 px-4 py-2 rounded-md hover:bg-purple-400">
                            <span class="mr-1 material-symbols-outlined text-yellow-300">
                                update
                            </span>
                            Update
                        </button>
                    </form>
                    <form action="{{ route('shopping.destroy', $item->id) }}" method="POST">
                        @csrf
                        @method('DELETE')
                        <button type="submit"
                            class="flex items-center justify-center bg-primary text-white dark:text-gray-800 px-4 py-2 rounded-md hover:bg-purple-400">
                            <span class="mr-1 material-symbols-outlined text-red-600">
                                remove_shopping_cart
                            </span>
                            Remove
                        </button>
                    </form>
                </div>
            </div>
        @endforeach
        <div class="text-right">
            <a href="#"
                class="inline-block bg-secondary text-white px-6 py-2 rounded-md hover:bg-blue-500">Checkout</a>
        </div>
    </div>
</x-app-layout>
