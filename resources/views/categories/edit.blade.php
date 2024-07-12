<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Edit Product') }}
        </h2>
    </x-slot>
    <div class="container mx-auto mt-10">
        <div
            class="max-w-screen-lg mx-auto bg-white dark:bg-gray-800 px-6  border border-gray-300 rounded-lg shadow-lg py-6">
            <form action="{{ route('categories.update', $category->id) }}" method="POST" >
                @csrf
                @method('PUT')
                <div class="mb-4">
                    <label class="block text-gray-700 text-sm font-bold mb-2" for="name">Category Name:</label>
                    <input type="text" name="name" id="name"
                        class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                        value="{{ $category->name }}">
                </div>
                <div class="mb-4">
                    <label class="block text-gray-700 text-sm font-bold mb-2" for="description">Description:</label>
                    <textarea name="description" id="description"
                        class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">{{ $category->description }}
                </textarea>
                </div>
                <div class="flex items-center justify-end">
                    <button type="submit"
                        class="bg-blue-500 text-white hover:bg-blue-700 font-bold py-2 px-4 rounded-lg focus:outline-none focus:shadow-outline ">Update</button>
                </div>
            </form>
        </div>
    </div>
</x-app-layout>
