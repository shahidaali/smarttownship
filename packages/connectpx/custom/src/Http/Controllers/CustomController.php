<?php

namespace Connectpx\Custom\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Intervention\Image\Constraint;
use Intervention\Image\Facades\Image;
use Connectpx\Custom\Facades\Custom;

class CustomController extends Controller
{
    public function snippets()
    {
    	return 'Hello';
        return view('custom::snippets.snippets');
    }
}
