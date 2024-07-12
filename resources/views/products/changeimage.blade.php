<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Edit Product') }}
        </h2>
    </x-slot>
    <div class="container mx-auto mt-10">
        <div
            class="max-w-screen-lg mx-auto bg-white dark:bg-gray-800 px-6  border border-gray-300 rounded-lg shadow-lg py-6">
            <form action="{{ route('products.updateimage', $product->id) }}" method="POST" enctype="multipart/form-data">
                @csrf                
                <div>
                    <label for="image" class="block text-sm font-medium text-gray-700 dark:text-gray-300">
                        {{ __('Image') }}
                    </label>
                    <div class="bg-white dark:bg-gray-800 p-6 rounded-lg shadow-md mt-1">
                        <div class="mt-2">
                            <label id="file-label" class="cursor-pointer bg-primary text-white py-2 px-4 rounded-md hover:bg-purple-400">
                                Choose File
                                <input type="file" name="image" id="image" class="hidden" onchange="updateFileName()">
                            </label>
                            <span id="file-name" class="ml-2 text-sm text-gray-700 dark:text-gray-300"></span>
                        </div>
                    </div>
                </div>
                <div class="mt-3 flex items-center justify-end">
                    <button type="submit"
                        class="bg-blue-500 text-white hover:bg-blue-700 font-bold py-2 px-4 rounded-lg focus:outline-none focus:shadow-outline ">Update</button>
                </div>
            </form>
        </div>
    </div>
    <script>
        function updateFileName() {
            const fileInput = document.getElementById('image');
            const fileNameSpan = document.getElementById('file-name');
            if (fileInput.files.length > 0) {
                fileNameSpan.textContent = fileInput.files[0].name;
            } else {
                fileNameSpan.textContent = '';
            }
        }
    </script>
</x-app-layout>
