<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Models\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        Gate::define('is-user', function ($user) {
            return $user->hasAnyRoles(['admin','user']);
        });

        Gate::define('is-admin', function ($user) {
            return $user->hasRole('admin');
        });
        Gate::define('is-super admin', function ($user) {
            return $user->hasRole('super admin');
        });
    }
}