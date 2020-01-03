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
    public function loadAddressType($community_id, $address_type_id)
    {
        $address_type = App\AddressType::find($address_type_id);
        $community = App\Community::find($community_id);
        $community_address_type = App\CommunityAddressType::where([
            'community_id' => $community_id,
            'address_type_id' => $address_type_id,
        ])->first();
        $count = $address_type->addresses()->where('community_id', $community_id)->get()->count();

        $tokens = setting("admin.address_format_tokens");
        return [
            'is_checked' => ($community_address_type && $community_address_type->status == "active") ? 1 : 0, 
            'tokens' => json_decode($tokens),
            'count' => $count,
        ];
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function loadAddressPreview($community_id, Request $request)
    {
        $addresses = $this->createAddresses($community_id, $request);
        return [
            'addresses' => $addresses, 
        ];
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function loadAddressSave($community_id, Request $request)
    {
        $addresses = $this->createAddresses($community_id, $request);
        foreach ($addresses as $address_lines) {
            foreach ($address_lines as $address_series) {
                $res =  App\Address::insert($address_series);
            }
        }

        $message = $res
            ? [
                'message'    => __('Addresses created successfully'),
                'type' => 'success',
            ] : [
                'message'    => __('Error updating Addresses'),
                'type' => 'error',
            ];

        return [
            'status' => $res, 
            'message' => $message,
            'redirect' => route('voyager.communities.add-addresses', $community_id) 
        ];
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function addAddresses($community_id, Request $request)
    {
        $community = App\Community::find($community_id);
        $address_types = App\AddressType::where(['status' => 'active', 'show_add_view' => 1])->get();

        return view('vendor.voyager.communities.add-addresses', [
            'community' => $community, 
            'address_types' => $address_types, 
        ]);
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function createAddresses($community_id, Request $request)
    {
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
                $series = $line['series'];
                $address_type_name = $addressType->title;
                $address_count = $addressType->addresses()->get()->count();

                foreach ($series as $series_key => $series_data) {
                    $from = (int) $series_data['from'];
                    $to = (int) $series_data['to'];

                    $street = $series_data['street'];
                    $block = $series_data['block'];

                    $floors = (int) $series_data['floors'];
                    $flats = (int) $series_data['flats'];

                    $bedroom = (int) $series_data['bedroom'];
                    $bath = (int) $series_data['bath'];
                    $garage = (int) $series_data['garage'];

                    $area = $series_data['area'];
                    $area_unit = $series_data['area_unit'];

                    $ground_floor = isset($series_data['ground_floor']) && $series_data['ground_floor'] == "on" ?  1 : 0;

                    $format = $series_data['format'];

                    if( $to <= 0 || $to < $from ) {
                        continue;
                    }

                    // SERIES
                    for ($i=$from; $i <= $to; $i++) { 

                        $house_no = $i;
                        $address_name = $address_type_name . ' ' . $house_no;

                        $address = $this->generateAddress($community, $format);
                        $address = str_replace([
                            '[HOUSE]',
                            '[STREET]',
                            '[BLOCK]',
                        ], [
                            $house_no,
                            $street,
                            $block,
                        ], $address);

                        // FLOORS & FLATS in EACH SERIES
                        if( $floors > 0 && $flats > 0) {
                            for ($floor=1; $floor <= $floors; $floor++) {
                                for ($flat=1; $flat <= $flats; $flat++) {
                                    $floor_address = str_replace([
                                        '[FLOOR]',
                                        '[FLAT]',
                                    ], [
                                        $floor,
                                        $flat,
                                    ], $address);
                                    $addresses[$address_type_id][$series_key][] = [
                                        'community_id' => $community_id,
                                        'address_type_id' => $address_type_id,
                                        'name' => $address_name,
                                        'house' => $house_no,
                                        'floor' => $floor,
                                        'flat' => $flat,
                                        'street' => $street,
                                        'block' => $block,
                                        'bedroom' => $bedroom,
                                        'bath' => $bath,
                                        'garage' => $garage,
                                        'has_ground_floor' => $ground_floor,
                                        'address' => $floor_address,
                                        'area' => $area,
                                        'area_unit' => $area_unit,
                                        'status' => 'active',
                                        'created_at'=>$now, 
                                        'updated_at'=>$now
                                    ];
                                }
                            }
                        } else {
                            $addresses[$address_type_id][$series_key][] = [
                                'community_id' => $community_id,
                                'address_type_id' => $address_type_id,
                                'name' => $address_name,
                                'house' => $house_no,
                                'floor' => 0,
                                'flat' => 0,
                                'street' => $street,
                                'block' => $block,
                                'bedroom' => $bedroom,
                                'bath' => $bath,
                                'garage' => $garage,
                                'has_ground_floor' => $ground_floor,
                                'address' => $address,
                                'area' => $area,
                                'area_unit' => $area_unit,
                                'status' => 'active',
                                'created_at'=>$now, 
                                'updated_at'=>$now
                            ];
                        }
                    }
                    
                }
            } else {
                // Update Coummunity Addresses
                App\CommunityAddressType::updateAddressTypes($community_id, $address_type_id, 'inactive');
            }
        }

        return $addresses;
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function saveAddresses($community_id, $addresses)
    {
        foreach ($addresses as $address_lines) {
            $res =  App\Address::insert($address_lines);
        }

        $data = $res
            ? [
                'message'    => __('Addresses created successfully'),
                'alert-type' => 'success',
            ] : [
                'message'    => __('Error updating Addresses'),
                'alert-type' => 'error',
            ];

        return redirect()->route('voyager.communities.edit-address-types', $community_id)->with($data);
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
                    $series = $line['series'];
                    $address_type_name = $addressType->title;
                    $address_count = $addressType->addresses()->get()->count();

                    foreach ($series as $key => $series_data) {
                        $from = (int) $series_data['from'];
                        $to = (int) $series_data['to'];

                        $street = $series_data['street'];
                        $block = $series_data['block'];
                        $format = $series_data['format'];

                        if( $to <= 0 || $to < $from ) {
                            continue;
                        }

                        for ($i=$from; $i <= $to; $i++) { 
                            $house_no = $i;
                            $address_name = $address_type_name . ' ' . $house_no;

                            $address = $this->generateAddress($community, $format);
                            $address = str_replace([
                                '[HOUSE]',
                                '[STREET]',
                                '[BLOCK]',
                            ], [
                                $address_name,
                                $street,
                                $block,
                            ], $address);

                            $addresses[$address_type_name][] = [
                                'community_id' => $community_id,
                                'address_type_id' => $address_type_id,
                                'name' => $address_name,
                                'house' => $house_no,
                                'street' => $street,
                                'block' => $block,
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

            dd($addresses);

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
    public function formatSeries( $series )
    {
        $formated = [];
        foreach ($series as $field => $data) {
            foreach ($data as $key => $value) {
                $formated[$key][$field] = $value;
            }
        }
        return $formated;
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getMatchedSeries( $series, $number )
    {
        foreach ($series as $key => $data) {
            $from = $data['from'];
            $to = $data['to'];

            if( $number >= $from && $number <= $to ) {
                return $data;
            }
        }
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
