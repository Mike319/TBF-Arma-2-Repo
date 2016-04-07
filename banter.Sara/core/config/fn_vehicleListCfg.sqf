#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["B_Quadbike_01_F",100]
	    ];
		if(__GETC__(life_donator) > 0) then
		{
		    _return set[count _return,
			["C_Kart_01_Fuel_F",2000]
			];
			_return set[count _return,
			["C_Kart_01_Blu_F",2000]
			];
			_return set[count _return,
			["C_Kart_01_Red_F",2000]
			];
			_return set[count _return,
			["C_Kart_01_Vrana_F",2000]
			];
			_return set[count _return,
			["C_Hatchback_01_sport_F",30000]
			];
			_return set[count _return,
			["O_Truck_03_covered_F",120000]
			];
			_return set[count _return,
			["O_Truck_03_repair_F",20000]
			];
			_return set[count _return,
			["O_Truck_03_device_F",1350000]
			];
			_return set[count _return,
			["B_Heli_Light_01_F",30000]
			];
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",120000]
			];
			_return set[count _return,
			["I_Heli_Transport_02_F",620000]
			];
		};
		if(__GETC__(life_donator) > 0) then
		{
		    _return set[count _return,
			["I_MRAP_03_F",180000]
			];
			_return set[count _return,
			["O_G_Offroad_01_armed_F",420000]
			];
			_return set[count _return,
			["O_MRAP_02_hmg_F",2000000]
			];
		};
		if(__GETC__(life_donator) > 0) then
		{
		    _return set[count _return,
			["B_Heli_Light_01_armed_F",6000000]
			];
			_return set[count _return,
			["O_Heli_Light_02_F",4200000]
			];
			_return set[count _return,
			["I_MRAP_03_hmg_F",4200000]
			];
		};
		if(__GETC__(life_donator) > 0) then
		{
		    _return set[count _return,
			["O_MRAP_02_gmg_F",7200000]
			];
			_return set[count _return,
			["B_Heli_Transport_01_camo_F",5520000]
			];
			_return set[count _return,
			["O_APC_Wheeled_02_rcws_F",5200000]
			];
		};
		if(__GETC__(life_donator) > 0) then
		{
		    _return set[count _return,
			["I_MRAP_03_gmg_F",7200000]
			];
			_return set[count _return,
			["I_Heli_light_03_F",8200000]
			];
			_return set[count _return,
			["B_Heli_Transport_03_unarmed_F",4200000]
			];
			_return set[count _return,
			["O_Heli_Light_02_v2_F",10000000]
			];
		};
	};

	case "donator_1":
	{
        switch(true) do {
            case (__GETC__(life_donator) == 1):
			{
                _return = [
                    ["C_Hatchback_01_sport_F",100000],
                    ["C_SUV_01_F",20000],
					["C_Offroad_01_F",10000],
					["B_G_Offroad_01_F",10000],
					["B_G_Offroad_01_armed_F",200000],
					["O_Truck_02_covered_F",200000],
					["O_Truck_02_transport_F",200000],
					["O_Truck_03_transport_F",200000],
					["O_Truck_03_covered_F",200000],
                    ["B_Truck_01_transport_F",200000],
                    ["B_Truck_01_covered_F",200000],
                    ["B_Truck_01_box_F",200000],
                    ["O_Truck_03_fuel_F",200000],
                    ["B_Truck_01_fuel_F",200000],
                    ["O_Truck_03_device_F",2000000],
                    ["B_MRAP_01_F",1000000],
                    ["O_MRAP_02_F",1000000],
                    ["I_MRAP_03_F",1000000],
					["B_MRAP_01_hmg_F",10000000],
					["O_MRAP_02_hmg_F",10000000],
					["C_Heli_Light_01_civil_F",100000],
					["B_Heli_Light_01_F",100000],
					["B_Heli_Light_01_armed_F",12000000],
					["I_Heli_light_03_unarmed_F",400000],
					["O_Heli_Light_02_unarmed_F",400000],
					["I_Heli_Transport_02_F",600000],
					["B_Heli_Transport_03_unarmed_F",1000000],
					["O_Heli_Transport_04_F",1000000],
					["O_Heli_Transport_04_bench_F",1000000],
					["O_Heli_Transport_04_covered_F",1000000],
					["O_Heli_Transport_04_fuel_F",1000000]
                ];
			};
		};
    };
	
	case "super_cars":
	{
		_return =
		[
			["A3L_Veyron",2000000],
			["A3L_Veyron_black",2000000],
			["A3L_Veyron_red",2000000],
			["A3L_Veyron_white",2000000],
			["A3L_Veyron_orange",2000000],
			["A3L_Veyron_purple",2000000],
			["shounka_f430_spider",750000],
			["shounka_f430_spider_noir",750000],
			["shounka_gt",650000],
			["shounka_gt_noir",650000],
			["shounka_gt_bleufonce",650000],
			["mrshounka_huracan_c",600000],
			["mrshounka_huracan_c_grise",600000],
			["mrshounka_huracan_c_orange",600000],
			["Mrshounka_veneno_c",2200000],
			["Mrshounka_veneno_c",2200000],
			["Mrshounka_veneno_c_bleu",2200000],
			["Mrshounka_veneno_c_jaune",2200000],
			["Mrshounka_lykan_c",3200000],
			["Mrshounka_lykan_c_noir",3200000],
			["Mrshounka_lykan_c_violet",3200000],
			["Mrshounka_lykan_c_jaune",3200000],
			["shounka_mp4",1200000],
			["shounka_mp4_bleufonce",1200000],
			["S_McLarenP1_Black",1800000],
			["S_McLarenP1_Blue",1800000],
			["S_McLarenP1_Orange",1800000],
			["S_McLarenP1_Silver",1800000],
			["S_McLarenP1_White",1800000],
			["S_McLarenP1_Yellow",1800000],
			["Mrshounka_pagani_c",1600000],
			["Mrshounka_pagani_c_jaune",1600000],
			["S_Vantage_Red",400000],
			["S_Vantage_Black",400000],
			["S_Vantage_Orange",400000],
			["S_Vantage_Purple",400000],
			["ivory_m3_gts",100000],
			["ivory_supra_tuned",120000],
			["A3L_Atom",4400000]
		];
	};

	case "med_shop":
	{
		_return = [
			["ivory_wrx_med_ems",10000],
			["C_Offroad_01_F",10000],
			["C_SUV_01_F",25000]
		];
		if(__GETC__(life_mediclevel) > 1) then
		{
			_return set[count _return,
			["B_MRAP_01_F",70000]
			];
			_return set[count _return,
			["I_MRAP_03_F",70000]
			];
			_return set[count _return,
			["O_Truck_03_medical_F",100000]
			];
			_return set[count _return,
			["I_Truck_02_medical_F",100000]
			];
	    };
    };

	case "med_air_hs": {
		_return = [
			["C_Heli_Light_01_civil_F",7000]
		];
		if(__GETC__(life_mediclevel) > 1) then
		{
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",10000]
			];
		};
		if(__GETC__(life_mediclevel) > 2) then
		{
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",200000]
			];
	    };
    };

	case "civ_car":
	{
		_return =
		[
			["C_Kart_01_Fuel_F",20000],
			["C_Kart_01_Blu_F",20000],
			["C_Kart_01_Red_F",20000],
			["C_Kart_01_Vrana_F",20000],
			["B_Quadbike_01_F",4500],
			["C_Hatchback_01_F",19500],
			["C_Offroad_01_F",22500],
			["C_SUV_01_F",45000],
			["C_Van_01_transport_F",50000],
			["Jonzie_Mini_Cooper",10000],
			["Jonzie_Mini_Cooper_R_spec",15000],
			["Jonzie_Galant",20000],
			["Jonzie_30CSL",23000],
			["Jonzie_Datsun_Z432",25000],
			["Jonzie_Ute",270000],
			["Jonzie_Ceed",30000],
			["Jonzie_Escalade",50000],
			["Jonzie_Viper",570000],
			["Jonzie_VE",60000],
			["Jonzie_STI",70000],
			["Jonzie_Quattroporte",80000],
			["ivory_m3",80000],
			["ivory_supra",80000],
			["ivory_lfa",90000],
			["ivory_m3_gts",100000],
			["ivory_supra_tuned",120000],
			["C_Hatchback_01_sport_F",250000]
		];
	};
	
	case "civ_BAF":
	{
		_return =
		[
			["LandRover_ACR",50000],
			["LandRover_CZ_EP1",50000],
			["BAF_Offroad_W",50000],
			["BAF_Offroad_D",50000],
			["LandRover_TK_CIV_EP1",50000]
		];
	};

	case "civ_truck":
	{
		_return =
		[
			["O_Truck_02_fuel_F",100000],
            ["B_G_Van_01_fuel_F",50000],
            ["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",175000],
			["I_Truck_02_covered_F",200000],
			["B_Truck_01_transport_F",375000],
			["O_Truck_03_transport_F",300000],
			["O_Truck_03_covered_F",350000],
			["B_Truck_01_box_F",450000],
			["Jonzie_Flat_Bed",450000],
			["Jonzie_Tanker_Truck",550000],
			["Jonzie_Box_Truck",580000],
			["Jonzie_Superliner",650000],
			["Jonzie_Western",690000],
			["B_MRAP_01_F",1000000],
			["O_Truck_03_device_F",2950000]
		];
	};


	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["B_Heli_Light_01_F",350000]
		];

		if(license_civ_rebel) then
		{
			_return pushBack
			["B_G_Offroad_01_armed_F",3750000];
			_return pushBack
			["Gurkha_f5",900000];
			_return pushBack
			["Gurkha_M60",13050000];
		};
	};

	case "cop_car":
	{
		_return =
		[
			["policeevo",10000],
			["A3L_TaurusPD1",10000],
			["Mrshounka_agera_gend_p",100000],
			["shounka_a3_audiq7_v2_gendarmerie",20000],
			["Mrshounka_bmw_gend",25000],
			["Mrshounka_a3_rs_gend",10000],
			["Mrshounka_a3_308_gend",10000],
			["shounka_a3_508gend",10000],
			["Mrshounka_ducati_police_p",10000],
			["shounka_buggy",10000],
			["ivory_wrx_cop_marked",10000],
			["DAR_ImpalaUM",10000],
			["ivory_wrx_cop_unmarked",10000],
			["ivory_wrx_cop_slicktop",10000],
			["EvoXSo3",10000],
			["DAR_SWATPolice",10000]
		];
	};

	case "civ_air":
	{
		_return =
		[
			["C_Heli_Light_01_civil_F",233000],
			["sab_RobinDR400",233000],
			["O_Heli_Light_02_unarmed_F",750000],
			["I_Heli_Transport_02_F",1000000],
			["I_Heli_light_03_unarmed_F",850000],
			["sab_C130_H",990000],
			["O_Heli_Transport_04_F",2000000]
		];
	};

	case "cop_baf":
	{
		if(__GETC__(life_coplevel) > 7) then
		{
			_return set[count _return,
		    ["kyo_CH47_HC3",75000]
		    ];
			_return set[count _return,
			["UK3CB_BAF_Wildcat_HMA2_TRN_8A",20000]
			];
			_return set[count _return,
			["UK3CB_BAF_Vehicles_Merlin_RAF_ZJ124",20000]
			];
			_return set[count _return,
			["UK3CB_BAF_Coyote_Logistics_L111A1_W",20000]
			];
			_return set[count _return,
			["UK3CB_BAF_Jackal2_L2A1_W",20000]
			];
			_return set[count _return,
			["UK3CB_BAF_Vehicles_Merlin_RAF_ZJ124",20000]
			];
		};
	};

	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
		    ["B_Heli_Light_01_F",75000]
		    ];
			_return set[count _return,
			["NH90",20000]
			];
			_return set[count _return,
			["EC635_Unarmed",20000]
			];
		};
	};

	case "cop_airhq":
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
		    ["B_Heli_Light_01_F",75000]
		    ];
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",200000]
			];
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",300000]
			];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",300000]
			];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
		        _return set[count _return,
			["I_Heli_light_03_unarmed_F",400000]
			];
	    };
	};

	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",175000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
