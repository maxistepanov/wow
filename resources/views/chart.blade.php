<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>My Charts</title>



</head>
<body>



@extends('layouts.app')

@section('content')
    <!-- Main Application (Can be VueJS or other JS framework) -->
    <div class="app">
        <div class="container">
            @foreach($charts as $chart)
                <div class="row">
                    {!! $chart->html() !!}
                </div>
                <hr>
            @endforeach
                <hr>
        </div>

    </div>
    <!-- End Of Main Application -->
    {!! Charts::scripts() !!}
    @foreach($charts as $chart)
        {!! $chart->script() !!}
    @endforeach
@endsection

</body>
</html>