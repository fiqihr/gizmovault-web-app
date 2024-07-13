<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>
    <div class="py-12  text-white">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg p-6 dark:bg-gray-800">
                <div class="text-center mb-8">
                    <h1 class="text-4xl font-bold text-gray-800 dark:text-gray-200">Welcome to the Dashboard, {{ Auth::user()->name }}!</h1>
                    <p class="mt-2 text-gray-600 dark:text-gray-200">We are glad to see you back. 
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
