<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Edit Article') }}
        </h2>
    </x-slot>
    <div class="max-w-7xl mx-auto py-10 sm:px-6 lg:px-8">
        <form action="{{ route('articles.update', $article->id) }}" method="POST" enctype="multipart/form-data" class="space-y-6">
            @csrf
            @method('PUT')
            <div>
                <label for="title" class="block text-sm font-medium text-gray-700 dark:text-gray-300">{{ __('Title') }}</label>
                <input type="text" name="title" id="title" value="{{ $article->title }}"
                    class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring focus:ring-indigo-200 focus:ring-opacity-50">
            </div>
            <div>
                <label for="content" class="block text-sm font-medium text-gray-700 dark:text-gray-300">{{ __('Content') }}</label>
                <textarea name="content" id="content" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring focus:ring-indigo-200 focus:ring-opacity-50">{{ $article->content }}</textarea>
            </div>
            <div>
                <label for="products" class="block text-sm font-medium text-gray-700 dark:text-gray-300">{{ __('Products') }}</label>
                <select name="product_ids[]" id="products" multiple
                    class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring focus:ring-indigo-200 focus:ring-opacity-50">
                    @foreach($products as $product)
                        <option value="{{ $product->id }}" {{ $article->products->contains($product->id) ? 'selected' : '' }}>
                            {{ $product->name }}
                        </option>
                    @endforeach
                </select>
            </div>
            <div>
                <div class="flex items-center justify-end">
                    <button type="submit"
                        class="bg-blue-500 text-white hover:bg-blue-700 font-bold py-2 px-4 rounded-lg focus:outline-none focus:shadow-outline">Submit</button>
                </div>
            </div>
        </form>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/tinymce/7.2.1/tinymce.min.js"
        integrity="sha512-zmlLhIesl+uwwzjoUz/izUsSjAMVb/7fH2ffCbJvYLepAvdvAq1T6ev9edZR8jwRKfM0OTaUyFVO1D7wAwXCEw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script>
        tinymce.init({
            selector: 'textarea#content',
            plugins: 'lists link image preview textcolor colorpicker',
            toolbar: 'undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | outdent indent | link image | preview | forecolor backcolor',
            menubar: 'format',
            height: 500,
            branding: false,
            style_formats: [{
                    title: 'Heading 1',
                    block: 'h1'
                },
                {
                    title: 'Heading 2',
                    block: 'h2'
                },
                {
                    title: 'Heading 3',
                    block: 'h3'
                },
                {
                    title: 'Paragraph',
                    block: 'p'
                }
            ]
        });        
    </script>
</x-app-layout>
