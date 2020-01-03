<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return redirect('/admin');
    return view('welcome');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();

    Route::get('communities/{id}/edit-address-types', 'CommunityController@editAddressTypes')->name('voyager.communities.edit-address-types');
    Route::get('communities/{id}/add-addresses', 'CommunityController@addAddresses')->name('voyager.communities.add-addresses');
    Route::get('communities/load-address-type/{community_id?}/{id?}', 'CommunityController@loadAddressType')->name('voyager.communities.load-address-type');
    Route::post('communities/load-address-preview/{community_id?}', 'CommunityController@loadAddressPreview')->name('voyager.communities.load-address-preview');
    Route::post('communities/load-address-save/{community_id?}', 'CommunityController@loadAddressSave')->name('voyager.communities.load-address-save');
    Route::post('communities/{id}/add-addresses', 'CommunityController@addAddresses')->name('voyager.communities.save-addresses');
    Route::post('communities/{id}/save-address-types', 'CommunityController@saveAddressTypes')->name('voyager.communities.save-address-types');
    Route::get('cascading-options', 'CascadingFieldController@cascadingOptions')
		->name('voyager.cascading.options');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

// STATION
Route::group(['prefix' => 'community'], function () {
	Route::get('dashboard', 'CommunityController@dashboardListing')
		->name('community.dashboard');
});