<?php
namespace App\Http\Controllers\API;

use Illuminate\Http\Request; 
use App\Http\Controllers\Controller; 
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

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

    /** 
     * API Response
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function uploadBase64($upload_path, $filedata){ 
        $filesystem = config('voyager.storage.disk');

        $mimetype = explode(";", $filedata);
        if( !empty($mimetype) ) {
            $mimetype = strtolower($mimetype[0]); 
        } else {
            $mimetype = "image/jpeg"; 
        }

        $ext = "jpg";
        if($mimetype == "image/jpeg" || $mimetype == "image/jpg") {
            $ext = "jpg";
        }
        else if($mimetype == "image/png") {
            $ext = "png";
        }

        $uploadPath = $upload_path;
        $filename = Str::random(20);
        $filename = $uploadPath . $filename . "." . $ext;

        $data = (strpos($filedata, ',')) ? substr($filedata, strpos($filedata, ',') + 1) : $filedata;
        $data = base64_decode($data);
        $file_response = Storage::disk($filesystem)->put($filename, $data);

        if($file_response) {
            return $filename;
        }
        
        return false;
    }
}