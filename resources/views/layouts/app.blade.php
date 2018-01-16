<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    {!! Charts::styles() !!}
</head>
<body>
    <div id="app">
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">

                    <!-- Collapsed Hamburger -->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse" aria-expanded="false">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <!-- Branding Image -->
                    <a class="navbar-brand" style="height: 50px;" href="{{ url('/') }}">
                        <img style="height: 100%;" src="data:image/png;base64,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" alt="">
                    </a>
                </div>

                <div class="collapse navbar-collapse" id="app-navbar-collapse">
                    <!-- Left Side Of Navbar -->
                    <ul class="nav navbar-nav">
                        &nbsp;
                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="nav navbar-nav navbar-right">
                        <!-- Authentication Links -->
                        @guest
                            <li><a href="{{ route('login') }}">Login</a></li>
                            <li><a href="{{ route('register') }}">Register</a></li>
                        @else
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true">
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="{{ route('logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            Logout
                                        </a>

                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
                                    </li>
                                </ul>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        @yield('content')
    </div>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}"></script>
</body>
</html>
