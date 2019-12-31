<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use Carbon\Carbon;
use TCG\Voyager\Facades\Voyager;
use App;

class CascadingFieldController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {

    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function cascadingOptions(Request $request)
    {
        $label = $request->input('label', 'name');
        $target_model = $request->input('target_model');
        $model = "App\\" . $target_model;

        $slug = $request->input('slug');
        $page = $request->input('page');
        $selected_parent_id = $request->input('selected_parent_id', 0);

        $on_page = 50;
        $search = $request->input('search', false);
        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        $rows = $request->input('method', 'add') == 'add' ? $dataType->addRows : $dataType->editRows;
        foreach ($rows as $key => $row) {
            if ($row->field === $request->input('type')) {

                $options = $row->details;
                $skip = $on_page * ($page - 1);
                $cascading = $options->cascading;
                $model_name = "App\\" . $cascading->target_model;
                $search_column = isset($cascading->search_column) ? $cascading->search_column : $cascading->label;
                
                $filters = [];

                // If search query, use LIKE to filter results depending on field label
                if ($search) {
                    // $query::where($cascading->label, 'LIKE', '%'.$search.'%');
                    $filters[] = [$search_column, 'LIKE', '%'.$search.'%'];
                }

                if( !empty($cascading->filters) ) {
                    foreach ($cascading->filters as $key => $value) {
                        $filters[] = [$key, $value];
                    }
                }

                if(!empty($cascading->parent->column) && !empty($selected_parent_id)) {
                    $filters[] = [$cascading->parent->column, $selected_parent_id];
                }

                $total_count = app($model_name)->where($filters)->count();
                $relationshipOptions = app($model_name)
                    ->where($filters)
                    ->take($on_page)
                    ->skip($skip)
                    ->get();

                $results = [];

                if (!$row->required && !$search) {
                    $results[] = [
                        'id'   => '',
                        'text' => __('voyager::generic.none'),
                    ];
                }

                foreach ($relationshipOptions as $relationshipOption) {
                    $results[] = [
                        'id'   => $relationshipOption->{$cascading->key},
                        'text' => $relationshipOption->{$cascading->label},
                    ];
                }

                return response()->json([
                    'results'    => $results,
                    'pagination' => [
                        'more' => ($total_count > ($skip + $on_page)),
                    ],
                ]);
            }
        }

        // No result found, return empty array
        return response()->json([], 404);
    }
}
