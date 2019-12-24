<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;

use App;

class CommunityController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {

    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function dashboardListing()
    {
        $communities = App\Community::all();
        return [
            'type' => 'success',
            'communities' => $communities,
        ];
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function editAddressTypes($community_id)
    {
        $community = App\Community::find($community_id);
        $address_types = App\AddressType::where('status', 'active')->get();
        $addresses = $community->addresses()->get();
        $community_address_types = $community->communityAddressTypes()->get();
        $statuse = $community_address_types->pluck('status', 'address_type_id')->toArray();

        $address_tokens = setting("admin.address_format_tokens");
        $address_tokens = json_decode($address_tokens);

        return view('vendor.voyager.communities.edit-add-address-types', compact('community', 'addresses', 'address_types', 'community_address_types ', 'statuse', 'address_tokens'));
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function addAddresses($community_id)
    {
        $community = App\Community::find($community_id);
        $address_types = App\AddressType::where('status', 'active')->get();
        $addresses = $community->addresses()->get();
        $community_address_types = $community->communityAddressTypes()->get();
        $statuse = $community_address_types->pluck('status', 'address_type_id')->toArray();

        $address_tokens = setting("admin.address_format_tokens");
        $address_tokens = json_decode($address_tokens);

        return view('vendor.voyager.communities.add-addresses', compact('community', 'addresses', 'address_types', 'community_address_types ', 'statuse', 'address_tokens'));
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function saveAddressTypes($community_id, Request $request)
    {
        try {
            $community = App\Community::findOrFail($community_id);
            $default_address = $this->generateAddress($community, $community->format);

            $lines = $request->lines;
            $now = Carbon::now()->toDateTimeString();

            $addresses = [];
            $active_address_types = [];
            foreach ($lines as $address_type_id => $line) {
                $addressType = App\AddressType::find($address_type_id);
                if(isset($line['enabled']) && $line['enabled'] == 1) {
                    $active_address_types[] = $address_type_id;

                    // Update Coummunity Addresses
                    App\CommunityAddressType::updateAddressTypes($community_id, $address_type_id, 'active');

                    // Create Addresses
                    $total = $line['total'];
                    $address_type_name = $addressType->title;

                    if( $total > 0 ) {
                        $address_count = $addressType->addresses()->get()->count();
                        $series = $line['series'];

                        $address_series = [];

                        // dd($address_series);

                        for ($i=($address_count + 1); $i <= ($address_count + $total); $i++) { 
                            $house_no = $i;
                            $address_name = $address_type_name . ' ' . $house_no;

                            $format = $this->getAddressFormat($community, $series, $i, $default_address);
                            $address = str_replace("[HOUSE]", $address_name, $format);
                            $addresses[] = [
                                'community_id' => $community_id,
                                'address_type_id' => $address_type_id,
                                'name' => $address_name,
                                'house' => $house_no,
                                'address' => $address,
                                'status' => 'active',
                                'created_at'=>$now, 
                                'updated_at'=>$now
                            ];
                        }
                        
                    }
                } else {
                    // Update Coummunity Addresses
                    App\CommunityAddressType::updateAddressTypes($community_id, $address_type_id, 'inactive');
                }
            }

            // dd($addresses);

            $res =  App\Address::insert($addresses);

            $data = $res
                ? [
                    'message'    => __('Addresses created successfully'),
                    'alert-type' => 'success',
                ] : [
                    'message'    => __('Error updating Addresses'),
                    'alert-type' => 'error',
                ];

            if ($res) {

            }

            return redirect()->route('voyager.communities.edit-address-types', $community_id)->with($data);
        } catch (Exception $e) {
            return redirect()->route('voyager.communities.edit-address-types', $community_id)->with($this->alertException($e, 'Saving Failed'));
        }
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function generateAddress($community, $address_format)
    {
        $community_name = $community->name;
        $postal_code = $community->postal_code;
        $city = $community->city;
        $state = $community->state;
        $country = $community->country;

        $address = str_replace([
            '[COMMUNITY]',
            '[POSTAL_CODE]',
            '[CITY]',
            '[STATE]',
            '[COUNTRY]'
        ], [
            $community_name,
            $postal_code,
            $city,
            $state,
            $country,
        ], $address_format);

        return $address;
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getAddressFormat($community, $series, $number, $default_address)
    {
        $formated_address = $default_address;
        foreach ($series['from'] as $key => $from) {
            $to = $series['to'][$key];
            $format = $series['format'][$key];

            if( $number >= $from && $number <= $to ) {
                $formated_address = $this->generateAddress($community, $format);
                break;
            }
        }

        return $formated_address;
    }
}
