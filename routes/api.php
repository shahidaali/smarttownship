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
	Route::post('verification/vehicle', 'API\VerificationController@vehicleVerification');

	// VISITOR API
	Route::post('visitor/invite', 'API\VisitorController@inviteVisitor');

	// ISSUE API
	Route::post('issues/add', 'API\IssueController@reportIssue');
	Route::get('issues/list', 'API\IssueController@list');

	// LOST FOUND API
	Route::post('lost-found/add', 'API\LostFoundController@addLostFound');
	Route::get('lost-found/list', 'API\LostFoundController@list');

	// SECURITY UPDATES API
	Route::post('security-updates/add', 'API\SecurityUpdateController@add');
	Route::get('security-updates/list', 'API\SecurityUpdateController@list');

	// RECOMMENDATIONS API
	Route::post('recommendations/add', 'API\RecommendationController@add');
	Route::get('recommendations/list', 'API\RecommendationController@list');

	// ADDRESS API
	Route::get('address/get', 'API\AddressController@get');
	Route::get('address/list', 'API\AddressController@list');

	// COMMUNITY API
	Route::get('community/get', 'API\CommunityController@get');
	Route::get('community/list', 'API\CommunityController@list');

	// ACTIVITY API
	Route::get('activity/get', 'API\ActivityController@get');
	Route::get('activity/list', 'API\ActivityController@list');
});
