<?php

use Illuminate\Support\Str;
use Illuminate\Routing\Router;
use Connectpx\LaravelBuilder\Facades\LaravelBuilder;

/*
|--------------------------------------------------------------------------
| Voyager Routes
|--------------------------------------------------------------------------
|
| This file is where you may override any of the routes that are included
| with Voyager.
|
*/

Route::group(['prefix' => 'custom', 'as' => 'custom.'], function () {
	$namespacePrefix = '\\'.config('custom.controllers.namespace').'\\';

	Route::get('snippets', ['uses' => $namespacePrefix.'CustomController@snippets',     'as' => 'snippets']);
});