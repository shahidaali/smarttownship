<?php
namespace App\Http\Controllers\API;

use Illuminate\Http\Request; 
use App\Http\Controllers\Controller; 
use Validator;

class ApiController extends Controller {
    /** 
     * API Response
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function response($status = 'error', $messages = [], $data = [], $code = 200){ 
        $response = [
            'status' => $status,
            'messages' => is_array($messages) ? $messages : [$messages],
            'data' => $data,
        ];
        return response()->json($response, $code);  
    }
}