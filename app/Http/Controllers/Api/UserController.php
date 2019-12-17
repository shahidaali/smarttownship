<?php
namespace App\Http\Controllers\API;

use Illuminate\Http\Request; 
use App\Http\Controllers\Controller; 
use App\User; 
use Illuminate\Support\Facades\Auth; 
use Validator;

class UserController extends ApiController {

    /** 
     * login api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function login(Request $request){ 
        $validator = Validator::make($request->all(), [ 
            'email' => 'required|email', 
            'password' => 'required', 
        ]);

        if ($validator->fails()) { 
            return $this->response('error', $validator->errors()->all());
        }

        if(Auth::attempt(['email' => $request->email, 'password' => $request->password])){ 
            $user = Auth::user(); 

            $data['user'] = $user;
            return $this->response('success', [], $data);
        } 
        else{ 
            return $this->response('error', 'Incorrect email or password.');
        } 
    }

    /** 
     * Register api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function register(Request $request){ 
        $validator = Validator::make($request->all(), [ 
            'name' => 'required', 
            'email' => 'required|email', 
            'password' => 'required', 
            'confirm_password' => 'required|same:password', 
        ]);

        if ($validator->fails()) { 
            return $this->response('error', $validator->errors()->all());
        }

        if (User::where('email', $request->email)->exists()) {
            return $this->response('error', 'Email already registered.');
        }

        $input = $request->all(); 
        $input['password'] = bcrypt($input['password']); 
        $input['role_id'] = 2;
        $user = User::create( $input );

        if( $user ){ 
            $data['user'] = User::find( $user->id );
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