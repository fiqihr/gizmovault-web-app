<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Home') }}
        </h2>
    </x-slot>

    <div class="container mx-auto p-4">
        <ul class="space-y-4">
            @foreach ($articles as $article)
                <li>
                    <a href="{{ route('articles.show', $article->id) }}" class="block bg-white dark:bg-gray-800 rounded-lg shadow-lg overflow-hidden transform transition-all hover:-translate-y-2">
                        <div class="flex flex-col md:flex-row justify-between items-center p-4 md:p-6">
                            <div class="flex-1">
                                <h1 class="text-xl lg:text-2xl font-bold text-gray-800 dark:text-gray-200 mb-2 md:mb-0">{{ $article->title }}</h1>
                                <p class="absolute bottom-5 left-5 text-gray-600 dark:text-gray-400">{{ $article->created_at->diffForHumans() }}</p>
                            </div>
                            <div class="w-full md:w-auto md:ml-4 flex-shrink-0 mb-10 md:mb-0 lg:mb-0">
                                <img src="{{ asset('storage/' . $article->image) }}" alt="{{ $article->name }}" class="h-40 w-80 md:h-40 md:w-80 object-cover rounded-md">
                            </div>
                        </div>
                    </a>
                </li>
            @endforeach
        </ul>
    </div>
</x-app-layout>
