<?php
namespace Connectpx\Custom;

use TCG\Voyager\Facades\Voyager;

use Illuminate\Contracts\Events\Dispatcher;
use Illuminate\Foundation\AliasLoader;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Arr;
use Illuminate\Support\Str;
use Illuminate\Routing\Router;
use Illuminate\Support\Facades\View;
use Connectpx\Custom\Facades\Custom as CustomFacade;
use Connectpx\Custom\FormFields\CascadingSelectFormField;

class CustomServiceProvider extends ServiceProvider
{
    /**
     * Register the application services.
     */
    public function register()
    {
        $loader = AliasLoader::getInstance();
        $loader->alias('Custom', CustomFacade::class);

        $this->app->singleton('custom', function () {
            return new Custom();
        });

        $this->loadHelpers();
        $this->registerConfigs();

        if ($this->app->runningInConsole()) {
            $this->registerPublishableResources();
        }

        // Voyager::addFormField(CascadingSelectFormField::class);
    }

    /**
     * Bootstrap the application services.
     *
     * @param \Illuminate\Routing\Router $router
     */
    public function boot(Router $router, Dispatcher $event)
    {

        $this->loadRoutesFrom(__DIR__.'/../routes/routes.php');
        $this->loadViewsFrom(__DIR__.'/../resources/views', 'custom');

        $this->registerViewComposers();
    }

    /**
     * Register view composers.
     */
    protected function registerViewComposers()
    {
        // Register alerts
        // View::composer('voyager::*', function ($view) {
        //     // $contents = $view->getFactory()->getSections();
        //     // dd($contents);
        //     // config(['voyager.additional_css' => config('custom.styles')]);
        //     // config(['voyager.additional_js' => config('custom.scripts')]);

        //     // $view->with('custom_scripts', ['xyx', '123']);
        //     // $view->with('custom_styles', ['xyx', '123']);
        // });
    }

    /**
     * Register the publishable files.
     */
    private function registerPublishableResources()
    {
        $publishablePath = dirname(__DIR__).'/publishable';

        $publishable = [
            'config' => [
                "{$publishablePath}/config/custom.php" => config_path('custom.php'),
            ],
            'assets' => [
                "{$publishablePath}/assets/" => public_path('custom'),
            ],
        ];

        foreach ($publishable as $group => $paths) {
            $this->publishes($paths, $group);
        }
    }

    /**
     * Load helpers.
     */
    protected function loadHelpers()
    {
        foreach (glob(__DIR__.'/Helpers/*.php') as $filename) {
            require_once $filename;
        }
    }

    public function registerConfigs()
    {
        $this->mergeConfigFrom(
            dirname(__DIR__).'/publishable/config/custom.php', 'custom'
        );
    }

}
