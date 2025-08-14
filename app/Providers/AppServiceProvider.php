<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Schema;
use Laravel\Fortify\Fortify;
use App\Models\Order;
use App\Observers\OrderObserver;


class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        //
        View::share('global_var', 'Notre variable globale');
        Schema::defaultStringLength(191);
        //Fortify::loginView(function () {
        //    return view('auth.login');
        //});
            Order::observe(OrderObserver::class);

    }
}
