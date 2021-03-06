<?php
namespace App\Http\Controllers\API;

use Illuminate\Http\Request; 
use App\Http\Controllers\Controller; 
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth; 
use Validator;
use App\User; 

class UserController extends ApiController {

    /** 
     * login api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function login(Request $request){ 
        $validator = Validator::make($request->all(), [ 
            'username' => 'required', 
            'password' => 'required', 
        ]);

        if ($validator->fails()) { 
            return $this->response('error', $validator->errors()->all());
        }

        if(Auth::attempt(['username' => $request->username, 'password' => $request->password])){ 
            $user = Auth::user(); 
            $address_ids = $user->residents()->pluck('address_id')->toArray();
            $data['user'] = $user;
            $data['user']['address_ids'] = $address_ids;
            //$data['user']['roles_all'] = $user->roles_all()->pluck('name','id')->toArray();
            return $this->response('success', [], $data);
        } 
        else{ 
            return $this->response('error', 'Incorrect username or password.');
        } 
    }

    /** 
     * Register api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function register(Request $request){ 
        $validator = Validator::make($request->all(), [ 
            'username' => ['required', 'string', 'max:30', 'unique:users'],
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:6', 'confirmed'],
            'community_id' => ['required'],
            'phone_number' => ['required'],
            'dob' => ['required'],
            'gender' => ['required'],
            'role_id' => ['required'],
        ]);

        if ($validator->fails()) { 
            return $this->response('error', $validator->errors()->all());
        }

        $avatar = "users/default.png";
        if( !empty($request->avatar) ) {
            $uploadPath = "users/";
            $file_response = $this->uploadBase64($uploadPath, $request->avatar);

            if( $file_response ) {
                $avatar = $file_response;
            }
        }

        // if (User::where('email', $request->email)->exists()) {
        //     return $this->response('error', 'Email already registered.');
        // }

        $input = $request->all(); 
        $input['password'] = Hash::make($input['password']); 
        $input['avatar'] = $avatar;

        $user = User::create( $input );

        if( $user ){ 
            $user = User::find( $user->id );
            // $address_ids = $user->residents()->pluck('address_id')->toArray();
            $data['user'] = $user;
            // $data['address_ids'] = $address_ids;
            return $this->response('success', [], $data);
        } 
        else{ 
            return $this->response('error', 'Error in register user.');
        } 
    }

    /** 
     * User api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function getUser(Request $request){ 
        $validator = Validator::make($request->all(), [ 
            'id' => 'required', 
        ]);

        if ($validator->fails()) { 
            return $this->response('error', $validator->errors()->all());
        }

        if (!$user = User::find( $request->id )) {
            return $this->response('error', 'User not exists');
        }

        return $this->response('success', [], [
            'user' => $user
        ]);
    }
}