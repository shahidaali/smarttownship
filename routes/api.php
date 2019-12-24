<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::group(['middleware' => 'check.apikey'], function(){
	// USER
	Route::post('login', 'API\UserController@login');
	Route::post('register', 'API\UserController@register');
	Route::get('user', 'API\UserController@getUser');

	// VEHICLE VERIFICATION
	Route::post('vehicle_verification', 'API\VerificationController@vehicleVerification');

	// VISITOR API
	Route::post('invite_visitor', 'API\VisitorController@inviteVisitor');
});
