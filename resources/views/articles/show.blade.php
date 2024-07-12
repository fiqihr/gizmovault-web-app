<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Article') }}
        </h2>
    </x-slot>

    <div class="container mx-auto p-4">
        <article class="bg-white dark:bg-gray-800 p-6 rounded-lg shadow-lg">
            <h1 class="font-bold text-3xl md:text-4xl lg:text-5xl text-gray-800 dark:text-gray-200 mb-4">{{ $article->title }}</h1>
            <p class="mb-20 text-gray-600 dark:text-gray-400 text-base">{{ $article->created_at->format('l, d F Y') }}</p>
            <img src="{{ asset('storage/' . $article->image) }}" alt="{{ $article->name }}" class="w-full md:w-1/2 h-auto rounded-lg mx-auto mb-6">
            
            <!-- Render the content as HTML -->
            <div class="prose dark:prose-dark max-w-none mb-6 dark:text-gray-200">
                {!! $article->content !!}
            </div>
            
            <h2 class="font-semibold text-2xl text-gray-800 dark:text-gray-200 mb-4">Products</h2>
            <ul class="flex flex-wrap mb-6">
                @foreach ($article->products as $product)
                    <li class="w-1/2 sm:w-1/2 md:w-1/4 lg:w-1/6 p-2">
                        <a href="{{ route('shopping.show', $product->id) }}" class="block overflow-hidden transform transition-all hover:scale-105">
                            @if($product->image)
                                <img src="{{ asset('storage/' . $product->image) }}" alt="{{ $product->name }}" class="w-full h-48 object-cover rounded-md">
                                <div class="p-4">
                                    <p class="text-gray-800 dark:text-gray-200 font-semibold">{{ $product->name }}</p>
                                </div>
                            @else
                                <img src="{{ asset('storage/images/no-image.png') }}" alt="No Image Product" class="w-full h-48 object-cover rounded-md">
                                <div class="p-4">
                                    <p class="text-gray-800 dark:text-gray-200 font-semibold">{{ $product->name }}</p>
                                </div>
                            @endif
                        </a>
                    </li>
                @endforeach
            </ul>
        </article>
    </div>
</x-app-layout>
