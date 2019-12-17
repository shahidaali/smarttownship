<?php

namespace App\Http\Middleware;

use Closure;
use Ejarnutowski\LaravelApiKey\Models\ApiKey;
use Ejarnutowski\LaravelApiKey\Models\ApiKeyAccessEvent;
use Illuminate\Http\Request;
use Ejarnutowski\LaravelApiKey\Http\Middleware\AuthorizeApiKey as BaseAuthorizeApiKey;

class AuthorizeApiKeyCustom extends BaseAuthorizeApiKey
{
    /**
     * Handle the incoming request
     *
     * @param Request $request
     * @param Closure $next
     * @return \Illuminate\Contracts\Routing\ResponseFactory|mixed|\Symfony\Component\HttpFoundation\Response
     */
    public function handle(Request $request, Closure $next)
    {
        $header = $request->header(self::AUTH_HEADER);
        $apiKey = ApiKey::getByKey($header);

        if ($apiKey instanceof ApiKey) {
            $this->logAccessEvent($request, $apiKey);
            return $next($request);
        }

        $response = [
            'status' => 'error',
            'messages' => ['Missing or Invalid Api Key'],
            'data' => [],
        ];
        return response()->json($response, 200); 
    }
}
