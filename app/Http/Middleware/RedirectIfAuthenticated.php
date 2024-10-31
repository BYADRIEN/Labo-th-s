<?php

namespace App\Http\Middleware;

use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Log;
use Closure;
use Illuminate\Http\Request;
use App\Providers\RouteServiceProvider; // Assurez-vous d'importer ce namespace

class RedirectIfAuthenticated
{
    public function handle(Request $request, Closure $next, string ...$guards): Response
    {
        Log::info('RedirectIfAuthenticated middleware called', ['guards' => $guards, 'request' => $request->all()]);

        if (empty($guards) || !is_array($guards) || (count($guards) === 1 && $guards[0] === '')) {
            $guards = ['web']; // Défaut à 'web'
        }

        Log::info('Guards provided', ['guards' => $guards]);

        foreach ($guards as $guard) {
            Log::info('Checking guard', ['guard' => $guard, 'authenticated' => Auth::guard($guard)->check()]);

            if (Auth::guard($guard)->check()) {
                Log::info('User is authenticated, redirecting...');
                return redirect(RouteServiceProvider::HOME);
            }
        }

        return $next($request);
    }
}
