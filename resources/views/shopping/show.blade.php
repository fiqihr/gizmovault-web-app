<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Detail Product') }}
        </h2>
    </x-slot>

    <div class="container mx-auto px-4 py-6">
        <div class="bg-white shadow-md rounded-lg p-6 dark:bg-gray-800">
            <div class="flex">
                @if ($product->image)
                    <img src="{{ asset('storage/' . $product->image) }}" alt="{{ $product->name }}"
                        class="shadow-md w-2/5 h-auto object-cover mb-4 overflow-hidden rounded-lg">
                @else
                    <img src="{{ asset('storage/images/no-image.png') }}" alt="No Image Product"
                        class="shadow-md w-2/5 object-cover mb-4 overflow-hidden rounded-lg">
                @endif
                <div class="pl-6 py-4 w-3/5 ">
                    <h1 class="text-2xl font-bold text-gray-800 dark:text-gray-200 mb-4">{{ $product->name }}</h1>
                    <p class="text-gray-600 dark:text-gray-400 mb-4">{{ $product->description }}</p>
                    <p class="bg-slate-100 pl-4 py-2 text-2xl dark:bg-gray-700 text-gray-800 dark:text-gray-200 font-bold mb-6">$ {{ $product->price }}</p>
                    <form action="{{ route('shopping.store') }}" method="POST"
                        class="flex flex-col sm:flex-row items-center sm:items-start">
                        @csrf
                        <input type="hidden" name="product_id" value="{{ $product->id }}">
                        <div class="mb-4 sm:mb-0 sm:mr-4 flex items-center">
                            <label for="quantity" class=" text-gray-700 dark:text-gray-300 mr-2">Quantity</label>
                            <input type="number" name="quantity" id="quantity" value="1" min="1"
                                class="text-center w-16 p-2 border border-gray-300 rounded-md dark:bg-gray-700 dark:text-gray-300 dark:border-gray-600">
                        </div>
                        <button type="submit"
                            class="flex items-center justify-center w-full sm:w-auto bg-primary hover:bg-purple-400 text-white font-bold py-2 px-4 rounded">
                            <span class="mr-2 material-symbols-outlined">
                                add_shopping_cart
                                </span>
                                Add to cart
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
