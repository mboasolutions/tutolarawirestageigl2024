<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">
        <link href="{{ asset('icons/bootstrap-icons.min.css') }}" rel="stylesheet">
        {{-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"> --}}
        <title>{{ $title ?? 'Page Title' }}</title>
    </head>
    <body>
        @include('components.layouts.navbar')
        <div class="container">
            {{ $slot }}
        </div>
        <script src="{{ asset('js/bootstrap.bundle.min.js') }}" ></script>
        <script src="{{ asset('js/jquery.min.js') }}"></script>
    </body>
</html>
