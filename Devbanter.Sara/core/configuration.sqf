#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_siren2_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 5; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_fatigue = 0; //Set the max fatigue limit (50%)
Varlife_headSet = false;
life_fadeSound = false;

//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?

//Revive constant variables.
__CONST__(life_revive_cops,false); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,4250); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,8); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,75000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

/*
*****************************
****** Cop Items *****
*****************************
*/
life_stripebarrier = ObjNull;
life_cone = ObjNull;
life_roadbarriersmall = ObjNull;
life_roadbarrierlarge = ObjNull;
life_bargate = ObjNull;
life_landmarker = ObjNull;
life_leftarrow = ObjNull;
life_rightarrow = ObjNull;

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];;
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 58; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,7350);
__CONST__(life_impound_boat,7250);
__CONST__(life_impound_air,11850);
__CONST__(life_impound_tank,100000);
life_istazed = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west:
	{
		life_atmcash = 60000; //Starting Bank Money
		life_paycheck = 3000; //Paycheck Amount
	};
	case civilian:
	{
		life_atmcash = 60000; //Starting Bank Money
		life_paycheck = 2350; //Paycheck Amount
	};

	case independent: {
		life_atmcash = 60000;
		life_paycheck = 9000;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_Heli_Light_01_armed_F","O_MRAP_02_hmg_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items =
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_stripebarrier",
	"life_inv_cone",
	"life_inv_zipties",
	"life_inv_roadbarriersmall",
	"life_inv_roadbarrierlarge",
	"life_inv_bargate",
	"life_inv_landmarker",
	"life_inv_rightarrow",
	"life_inv_leftarrow"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_rebeladv","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",3200],["heroinp",4500],["cocaine",4500],["cocainep",4500],["marijuana",3000],["turtle",3000],["blastingcharge",10000],["boltcutter",500]];


/*
	Sell / buy arrays
*/
sell_array =
[
	["apple",50],
	["heroinu",850],
	["heroinp",1650],
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",200],
	["mullet",250],
	["catshark",100],
	["rabbit",65],
	["oilp",2200],
	["turtle",4000],
	["water",5],
	["coffee",5],
	["turtlesoup",300],
	["donuts",5],
	["marijuana",590],
	["tbacon",50],
	["lockpick",75],
	["zipties",50],
	["pickaxe",700],
	["redgull",150],
	["peach",55],
	["cocaine",1200],
	["cocainep",2895],
	["diamond",1000],
	["diamondc",3000],
	["iron_r",760],
	["copper_r",500],
	["salt_r",650],
	["glass",450],
	["fuelF",500],
	["spikeStrip",1200],
	["cement",750],
	["goldbar",100000],
	["stripebarrier",2500],
	["cone",200],
	["roadbarriersmall",1000],
	["roadbarrierlarge",1500],
	["bargate",2000],
	["landmarker",500],
	["rightarrow",700],
	["leftarrow",700]
];
__CONST__(sell_array,sell_array);

buy_array =
[
	["apple",65],
	["rabbit",75],
	["salema",55],
	["ornate",50],
	["mackerel",200],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",10],
	["turtle",4000],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",150],
	["zipties",2000],
	["pickaxe",1200],
	["redgull",1500],
	["fuelF",850],
	["peach",68],
	["spikeStrip",2500],
	["blastingcharge",25000],
	["boltcutter",7500],
	["defusekit",2500],
	["storagesmall",1000],
	["storagebig",2000],
	["stripebarrier",5000],
	["cone",400],
	["roadbarriersmall",2000],
	["roadbarrierlarge",3000],
	["bargate",4000],
	["landmarker",1000],
	["rightarrow",1400],
	["leftarrow",1400]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",7500],
	["arifle_MX_SW_F",nil,4000],
	["hgun_P07_snds_F",650],
	["hgun_P07_F",1500],
	["ItemGPS",45],
	["ToolKit",75],
	["FirstAidKit",65],
	["Medikit",450],
	["NVGoggles",980],
	["16Rnd_9x21_Mag",15],
	["20Rnd_556x45_UW_mag",35],
	["ItemMap",35],
	["ItemCompass",25],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",5000],
	["30Rnd_556x45_Stanag",65],
	["20Rnd_762x51_Mag",1000],
	["30Rnd_65x39_caseless_green",50],
	["DemoCharge_Remote_Mag",7500],
	["SLAMDirectionalMine_Wire_Mag",2575],
	["optic_ACO_grn",250],
	["acc_flashlight",100],
	["srifle_EBR_F",5000],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["MineDetector",500],
	["optic_Holosight",275],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",2500],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30],
    ["optic_Nightstalker",7500],
	["Rangefinder",nil,2000],
	["muzzle_snds_acp",nil,500],
	["muzzle_snds_B",nil,500],
	["muzzle_snds_H",nil,500],
	["muzzle_snds_L",nil,500],
	["muzzle_snds_M",nil,500],
	["srifle_LRR_SOS_F",nil,30000],
	["7Rnd_408_Mag",nil,10000],
	["launch_B_Titan_F",nil,10000],
	["3Rnd_HE_Grenade_shell",nil,1000],
	["1Rnd_HE_Grenade_shell",nil,1000],
	["Titan_AA",nil,1500]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_QuadBike_01_F",550],
	["C_Hatchback_01_F",1500],
    ["B_UAV_02_F",30000],
	["C_Offroad_01_F", 2500],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",5250],
	["C_Van_01_transport_F",7890],
	["C_Hatchback_01_sport_F",2350],
	["C_Van_01_fuel_F",4500],
	["I_Heli_Transport_02_F",50000],
	["C_Van_01_box_F",9000],
	["I_Truck_02_transport_F",12000],
	["I_Truck_02_covered_F",14500],
	["B_Truck_01_transport_F",25650],
	["B_Truck_01_box_F", 35000],
	["O_MRAP_02_F",45000],
	["B_Heli_Light_01_F",45000],
	["O_Heli_Light_02_unarmed_F",65000],
	["C_Rubberboat",400],
	["C_Boat_Civil_01_F",4500],
	["B_Boat_Transport_01_F",450],
	["C_Boat_Civil_01_police_F",3500],
	["B_Boat_Armed_01_minigun_F",16500],
	["B_SDV_01_F",25000],
	["B_Truck_01_Repair_F",25000],
	["B_Heli_Transport_03_unarmed_F",42000],
	["B_G_Offroad_01_repair_F",10000],
	["B_MRAP_01_F",7500],
    ["B_G_Van_01_fuel_F",1000],
    ["O_Truck_02_fuel_F",5000],
    ["O_Truck_03_device_F",2000000],
	["O_Heli_Transport_04_F",20000],
	["B_Heli_Transport_03_F",10000],
	["C_Heli_Light_01_civil_F",23300],
	["O_Heli_Light_02_v2_F",20000],
	["O_Heli_Transport_04_medevac_F",2000],
	["I_MRAP_03_F",7500]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Quadbike_01_F",950],
	["C_Hatchback_01_F",4500],
	["C_Offroad_01_F", 6500],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",15000],
	["C_Van_01_transport_F",25000],
	["C_Hatchback_01_sport_F",7500],
	["C_Van_01_fuel_F",3850],
	["I_Heli_Transport_02_F",125000],
	["C_Van_01_box_F",35000],
	["I_Truck_02_transport_F",49800],
	["I_Truck_02_covered_F",62000],
	["B_Truck_01_transport_F",135000],
	["B_Truck_01_box_F", 5000],
	["O_MRAP_02_F",65000],
	["B_Heli_Light_01_F",57000],
	["O_Heli_Light_02_unarmed_F",72500],
	["C_Rubberboat",950],
	["C_Boat_Civil_01_F",6800],
	["B_Boat_Transport_01_F",850],
	["C_Boat_Civil_01_police_F",4950],
	["B_Boat_Armed_01_minigun_F",21000],
	["B_SDV_01_F",45000],
	["B_MRAP_01_F",10000],
    ["B_G_Van_01_fuel_F",10000],
    ["B_UAV_02_F",10000],
	["B_Truck_01_Repair_F",25000],
    ["O_Truck_02_fuel_F",20000],
    ["O_Truck_03_device_F",1000000],
	["B_Heli_Transport_03_unarmed_F",42000],
	["B_G_Offroad_01_repair_F",10000],
	["O_Heli_Transport_04_F",20000],
	["B_Heli_Transport_03_F",10000],
	["C_Heli_Light_01_civil_F",2330],
	["O_Heli_Light_02_v2_F",20000],
	["O_Heli_Transport_04_medevac_F",2000],
	["I_MRAP_03_F",10500]
];

life_fadeSound = false;

__CONST__(life_garage_sell,life_garage_sell);