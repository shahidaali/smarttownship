@php
    $cascading = $options->cascading;
    $cascading->slug = $dataType->slug;
    $params = http_build_query($cascading);
    $parent_id = (isset($cascading->parent->field_id)) ? $cascading->parent->field_id : "";
@endphp
<select
        class="form-control cascading-select2-ajax cascading-select {{ $parent_id ? 'cascading-select-child' : 'cascading-select-parent' }}" 
        id="{{ $row->field }}"
        name="{{ $row->field }}"
        data-get-items-route="{{route('voyager.cascading.options')}}?{{$params}}"
        data-get-items-field="{{ $row->field }}"
        data-method="{{ isset($dataTypeContent) ? 'edit' : 'add' }}"
        data-parent="{{ $parent_id }}"
    >
    @php
        $model = app("App\\" . $cascading->target_model);
        $query = $model::where($cascading->key, $dataTypeContent->{$row->field})->get();
    @endphp

    @if(!$row->required)
        <option value="">{{__('voyager::generic.none')}}</option>
    @endif

    @foreach($query as $relationshipData)
        <option value="{{ $relationshipData->{$cascading->key} }}" @if($dataTypeContent->{$row->field} == $relationshipData->{$cascading->key}){{ 'selected="selected"' }}@endif>{{ $relationshipData->{$cascading->label} }}</option>
    @endforeach
</select>