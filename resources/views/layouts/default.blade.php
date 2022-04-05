<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>
        <link href="{{ asset('css/app.css') }}" rel="stylesheet">

        <script src="{{ asset('js/app.js') }}" defer></script>
    </head>
    <body>
        <div class="container-fluid" >
            <header>
                @include('layouts.header')
            </header>
            <div class="main">
                @yield('content')
            </div>
            <footer>
                @include('layouts.footer')
            </footer>
        </div>
    </body>
</html>