@extends('voyager::master')
@section('css')

@stop

@section('content')
    <div class="page-content container-fluid">
        @include('voyager::alerts')

        @include('vendor.voyager.dashboard')
    </div>
@stop

@section('javascript')

@stop