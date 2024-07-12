<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Categories') }}
        </h2>
    </x-slot>

    @if (session('success'))
        <div class="m-4 bg-green-100 dark:bg-green-800 border border-green-400 dark:border-green-600 text-green-700 dark:text-green-300 px-4 py-3 rounded relative"
            role="alert">
            <span class="block sm:inline">
                {{ session('success') }}
            </span>
            <span class="absolute top-0 bottom-0 right-0 px-4 py-3">
                <svg class="fill-current h-6 w-6 text-green-500 dark:text-green-300" role="button"
                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"
                    onclick="this.parentElement.parentElement.style.display='none'">
                    <title>Close</title>
                    <path
                        d="M14.348 5.652a.5.5 0 00-.707 0L10 9.293 6.354 5.646a.5.5 0 10-.708.708L9.293 10l-3.646 3.646a.5.5 0 10.708.708L10 10.707l3.646 3.647a.5.5 0 00.707-.708L10.707 10l3.641-3.646a.5.5 0 000-.707z" />
                </svg>
            </span>
        </div>
    @endif

    <div class="container mx-auto mt-10">
        <div class="overflow-x-auto">
            <div class="flex justify-end">
                <a class="flex justify-center items-center text-white m-2 py-2 px-4 bg-blue-500 hover:bg-blue-600 shadow-sm rounded-lg mb-4"
                    href="{{ route('categories.create') }}"><span class="mr-1 material-symbols-outlined">
                        add
                    </span>Add Category</a>
            </div>
            <table class="min-w-full bg-white dark:bg-gray-800 rounded-lg overflow-hidden shadow-lg mb-10">
                <thead class="bg-gray-200 dark:bg-gray-700 text-gray-600 dark:text-gray-300 font-bold uppercase text-sm text-left">
                    <tr>
                        <th class="py-2 px-4">No</th>
                        <th class="py-2 px-4">Name</th>
                        <th class="py-2 px-4">Description</th>
                        <th class="py-2 px-4">Action</th>
                    </tr>
                </thead>
                <tbody class="bg-white dark:bg-gray-700 dark:text-gray-300">
                    @foreach ($categories as $category)
                        <tr class=" dark:bg-gray-900 border-b dark:border-gray-700">
                            <td class="py-2 px-4">{{ $loop->iteration }}</td>
                            <td class="py-2 px-4">{{ $category->name }}</td>
                            <td class="py-2 px-4">{{ $category->description }}</td>
                            <td class="py-2 px-4">
                                <div class="flex space-x-2">
                                    <a href="{{ route('categories.edit', $category->id) }}"
                                        class="text-white flex items-center justify-center p-2 bg-yellow-500 hover:bg-yellow-600 rounded-lg">
                                        <span class="material-symbols-outlined">edit_note</span></a>
                                    <form action="{{ route('categories.destroy', $category->id) }}" method="POST"
                                        class="inline">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit"
                                            class="text-white flex items-center justify-center p-2 bg-red-500 hover:bg-red-600 rounded-lg">
                                            <span class="material-symbols-outlined">delete</span></button>
                                    </form>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</x-app-layout>
