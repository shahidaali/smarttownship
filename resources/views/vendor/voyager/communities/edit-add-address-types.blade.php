@extends('voyager::master')

@section('page_title', __('Add Address Types'))

@section('css')
    
@stop

@section('page_header')
    <h1 class="page-title">
        <i class="icon voyager-calendar"></i>
        {{ __('Add Address Types for') }} <em>{{ $community->name }}</em>
    </h1>
    @include('voyager::multilingual.language-selector')
@stop

@section('content')
    <div class="page-content container-fluid">
        <form class="form-edit-add" role="form" action="{{ route('voyager.communities.save-address-types', $community->id) }}" method="POST" enctype="multipart/form-data">
            {{ csrf_field() }}

            <div class="row">
                <div class="col-md-12">
                    <!-- ### TITLE ### -->
                     @if (count($errors) > 0)
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                        
                        @foreach($address_types as $address_type)
                            @php
                            $count = $address_type->addresses()->where('community_id', $community->id)->get()->count();
                            $checked = (isset($statuse[$address_type->id]) && $statuse[$address_type->id] == 'active') ? 'checked="checked"' : "";
                            @endphp
                            <div class="listing-simple clearfix">
                                  <div class="listing-detail">
                                      <h5><label><input type="checkbox" name="lines[{{ $address_type->id }}][enabled]" value="1" {{ $checked }} class="enable-address">  {{ $address_type->title }}</label> <span class="count">({{ $count }})</span></h5>
                                      <div class="field-panel" style="display: none;">
                                          <div class="edit-fields">
                                              <div class="edit-field"><label>Add New Addresses: <input type="text" name="lines[{{ $address_type->id }}][total]" class="address-total" value="0"></label></div>
                                          </div>
                                          <div class="panel series-panel" style="display: none;">
                                              <div class="panel-heading">
                                                  Address Series <!-- - Tokens <code>@foreach($address_tokens as $token) {{ $token->token }} @endforeach</code> -->
                                              </div>
                                              <div class="panel-body">
                                                  <div class="address-format">
                                                    <div class="edit-fields">
                                                          <div class="edit-field"><label>#1</label></div>
                                                          <div class="edit-field"><label>From: <input type="text" name="lines[{{ $address_type->id }}][series][from][]" value="{{ $count + 1 }}" class="series_from"></label></div>
                                                          <div class="edit-field"><label>To: <input type="text" name="lines[{{ $address_type->id }}][series][to][]" value="0" class="series_to"></label></div>
                                                          <div class="edit-field"><label>Format: <input type="text" name="lines[{{ $address_type->id }}][series][format][]" value="{{ $community->address_format }}" style="width: 500px" class="address-format-input"></label><div class="sample_output" style="display: none;"></div></div>
                                                          <div class="edit-field"><a href="#" class="series-show-example"><span class="voyager-angle-down"></span></a></div>
                                                          <div class="edit-field"><a href="#" data-toggle="modal" data-target="#address_format_modal"><span class="voyager-info-circled"></span></a></div>
                                                    </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                        @endforeach
                </div>
            </div>

            <button type="submit" class="btn btn-primary pull-right">
                <i class="icon wb-plus-circle"></i> {{ __('Update Address Types') }}
            </button>

            <input type="hidden" name="community_id" value="{{ $community->id }}">
        </form>

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
                        <li><code>[HOUSE]</code> - Auto generated house no</li>
                        <li><code>[COMMUNITY]</code> - Community name</li>
                        <li><code>[POSTAL_CODE]</code> - Community postal code</li>
                        <li><code>[CITY]</code> - Community city</li>
                        <li><code>[STATE]</code> - Community state</li>
                        <li><code>[COUNTRY]</code> - Community country</li>
                    </ul>
                    <h5>Example</h5>
                    <p>[HOUSE] [COMMUNITY], [POSTAL_CODE], [CITY], [STATE], [COUNTRY]</p>
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
    <script type="text/javascript">
        // var address = "[HOUSE] [COMMUNITY], [POSTAL_CODE] [CITY], [STATE], [COUNTRY]";
        function get_sample_address( address ) {
            var tokens = JSON.parse('{!! json_encode($address_tokens) !!}');
            $.each(tokens, function(i, token){
                address = address.replace(token.token, token.example);
            });
            return "<code>Example Output: " + address + "</code>";
        }

        jQuery(document).ready(function() {
            $(document).on('click', '.series-show-example', function(e) {
                e.preventDefault();
                $(this).closest('.address-format').find('.sample_output').slideToggle();
            });
            $(document).on('keyup change', '.address-format-input', function() {
                $(this).closest('.address-format').find('.sample_output').html( get_sample_address( $(this).val() ) );
            });
            $('.address-format-input').change();

            $(document).on('change', '.enable-address', function() {
                if($(this).is(':checked')) {
                    $(this).closest('.listing-simple').find('.field-panel').slideDown();
                } else {
                    $(this).closest('.listing-simple').find('.field-panel').slideUp();
                }
            });
            $('.enable-address').change();

            $(document).on('keyup change', '.address-total', function() {
                if( $(this).val() > 0 ) {
                    var from = $(this).closest('.listing-simple').find('.address-format:first .series_from').val();
                    var to = parseInt(from) + parseInt($(this).val()) - 1;
                    $(this).closest('.listing-simple').find('.series-panel').slideDown();
                    $(this).closest('.listing-simple').find('.address-format:first .series_to').val(to);
                } else {
                    $(this).closest('.listing-simple').find('.series-panel').slideUp();
                }
            });
        });
    </script>
@stop
