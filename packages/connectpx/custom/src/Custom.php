<?php
// Shahid Hussain
namespace Connectpx\Custom;

use Illuminate\Filesystem\Filesystem;
use Illuminate\Support\Str;
use Illuminate\Support\Arr;

/**
*	Start Custom
*/
class Custom{
	protected $filesystem;
	private $version;

	/**
	*	Global Config
	*/
	private $config = array();


	public function __construct() {
		$this->filesystem = app(Filesystem::class);

		$this->config = config('custom');

		// Constants
		$this->version = $this->findVersion();
		
	}

	protected function findVersion()
    {
        if (!is_null($this->version)) {
            return;
        }

        if ($this->filesystem->exists(base_path('composer.lock'))) {
            // Get the composer.lock file
            $file = json_decode(
                $this->filesystem->get(base_path('composer.lock'))
            );

            // Loop through all the packages and get the version of connectpx
            foreach ($file->packages as $package) {
                if ($package->name == 'connectpx/custom') {
                    $this->version = $package->version;
                    break;
                }
            }
        }
    }

    public function getVersion()
    {
        return $this->version;
    }

}