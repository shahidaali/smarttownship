@extends('voyager::master')

@section('page_title', __('Add Addresses'))

@section('css')
    
@stop

@section('page_header')
    <h1 class="page-title">
        <i class="icon voyager-calendar"></i>
        {{ __('Add Addresses for') }} <em>{{ $community->name }}</em>
    </h1>
    @include('voyager::multilingual.language-selector')
@stop

@section('content')
    <div class="page-content container-fluid">
        <div id="app_inline">
            <add-addresses
                csrf-token="{{ csrf_token() }}"
                load-address-save-path="{{ route('voyager.communities.load-address-save') }}"
                load-address-type-path="{{ route('voyager.communities.load-address-type') }}"
                load-address-preview-path="{{ route('voyager.communities.load-address-preview') }}"
                :community="{{ json_encode($community) }}"
                :address-types="{{ json_encode($address_types) }}"
            ></add-addresses>
        </div>
    </div>

    {{-- Address Format Help --}}
    <div class="modal modal-info fade" tabindex="-1" id="address_format_modal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="{{ __('voyager::generic.close') }}"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title"><i class="voyager-info-circled"></i> Address Format</h4>
                </div>
                <div class="modal-body">
                    <h5>Tokens</h5>
                    <ul>
                        @php 
                        $tokens = setting("admin.address_format_tokens");
                        $tokens = json_decode($tokens);
                        @endphp

                        @foreach($tokens as $token) 
                            <li><code>{{ $token->token }}</code> - {{ $token->description }}</li>
                        @endforeach
                    </ul>
                    <h5>Example</h5>
                    <p>House [HOUSE] [COMMUNITY], [POSTAL_CODE], [CITY], [STATE], [COUNTRY]</p>
                    <h5>Output</h5>
                    <p>House 1 Smart Town, 43000, Kajang, Selangor, Malaysia</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-right" data-dismiss="modal">{{ __('voyager::generic.cancel') }}</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->    
@stop

@section('javascript')
   
@stop
