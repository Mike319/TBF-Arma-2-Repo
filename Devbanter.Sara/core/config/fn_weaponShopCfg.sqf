#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration file for the weapon shops.

	Return:
	String: Close the menu
	Array:
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Altis Cop Shop",
					[
						["arifle_sdar_F","Police Tazer Rifle",5000],
						["hgun_Pistol_heavy_01_MRD_F","Police Pistol",8000],
						["hgun_P07_snds_F",nil,2000],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ItemMap",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["Medikit",nil,1000],
						["pmc_earpiece",nil,2000],
						["tf_anprc152",nil,1200],
						["16Rnd_9x21_Mag",nil,50],
						["U_B_Wetsuit",nil,2000],
						["G_Diving",nil,500],
						["V_RebreatherB",nil,5000],
						["20Rnd_556x45_UW_mag","Tazer Rifle Magazine",125],
						["11Rnd_45ACP_Mag",nil,250],
						["H_Cap_police",nil,100]
					]
				];
			};
		};
	};

	case "med_basic":
	{
		switch (true) do
		{
			case (playerSide != independent): {"You are not a Medic"};
			default {
				["Medic Shop 1",
					[
					    ["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["pmc_earpiece",nil,500],
						["tf_anprc152",nil,1200],
						["V_BandollierB_blk",nil,1000],
						["V_RebreatherB","Rebreather",500],
						["U_B_Wetsuit","Wetsuit",500],
						["H_Cap_blk","Black Cap",200],
						["B_FieldPack_blk","Medic Backpack",1200],
						["nhscommandUniform",nil,1000],
						["NHSUniform","Medic Uniform",500]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 1): {"You are not at a patrol officer rank!"};
			default
			{
				["Altis Patrol Officer Shop",
					[
					    ["hlc_smg_mp5a4",nil,17000],
						["hlc_smg_mp5k_PDW",nil,17000],
						["hlc_30Rnd_9x19_B_MP5",nil,100],
						["RH_p226",nil,5000],
				        ["RH_15Rnd_9x19_SIG",nil,750],
                        ["RH_barska_rds",nil,4500],
						["RH_SFM952V",nil,500],
						["RH_X300",nil,500]
					]
				];
			};
		};
	};

	case "cop_Corporal":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not at a patrol officer rank!"};
			default
			{
				["Corporal Shop",
					[
					    ["hlc_smg_mp5a4",nil,7000],
						["hlc_smg_mp5k_PDW",nil,7000],
						["hlc_30Rnd_9x19_B_MP5",nil,100],
						["hlc_rifle_G36C",nil,12000],
						["hlc_30rnd_556x45_EPR_G36",nil,700],
						["RH_p226s",nil,5000],
						["RH_p226",nil,5000],
				        ["RH_15Rnd_9x19_SIG",nil,750],
                        ["RH_barska_rds",nil,4500],
						["RH_compM2l",nil,5000],
						["RH_15Rnd_9x19_SIG",nil,250]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not at a sergeant rank!"};
			default
			{
				["Sergeant Officer Shop",
					[
					    ["hlc_smg_mp5a4",nil,7000],
						["hlc_smg_mp5k_PDW",nil,7000],
						["hlc_30Rnd_9x19_B_MP5",nil,100],
						["hlc_rifle_G36C",nil,12000],
						["hlc_rifle_G36KV",nil,17000],
						["hlc_30rnd_556x45_EPR_G36",nil,700],
						["hlc_rifle_Colt727",nil,15000],
						["30Rnd_556x45_Stanag",nil,500],
						["RH_p226s",nil,5000],
						["RH_p226",nil,5000],
				        ["RH_15Rnd_9x19_SIG",nil,750],
						["RH_fnp45",nil,7000],
						["RH_15Rnd_45cal_fnp",nil,100],
                        ["RH_barska_rds",nil,4500],
						["RH_compM2l",nil,5000],
						["RH_eotech553",nil,5200],
						["RH_15Rnd_9x19_SIG",nil,250]
                    ]
				];
			};
		};
	};

        case "cop_lieutenant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 4): {"You are not at a lieutenant rank!"};
			default
			{
				["Altis Lieutenant Officer Shop",
					[
					    ["hlc_smg_mp5a4",nil,7000],
						["hlc_smg_mp5k_PDW",nil,7000],
						["hlc_30Rnd_9x19_B_MP5",nil,100],
						["hlc_rifle_G36C",nil,12000],
						["hlc_rifle_G36KV",nil,17000],
						["hlc_30rnd_556x45_EPR_G36",nil,700],
						["hlc_rifle_Colt727",nil,15000],
						["hlc_rifle_M4",nil,15000],
						["30Rnd_556x45_Stanag",nil,500],
						["hlc_30rnd_556x45_S",nil,600],
						["hlc_rifle_g3ka4",nil,15000],
						["hlc_20rnd_762x51_b_G3",nil,1000],
						["RH_p226s",nil,5000],
						["RH_p226",nil,5000],
				        ["RH_15Rnd_9x19_SIG",nil,750],
						["RH_fnp45",nil,7000],
						["RH_15Rnd_45cal_fnp",nil,100],
						["RH_usp",nil,8000],
						["RH_12Rnd_45cal_usp",nil,700],
                        ["RH_barska_rds",nil,4500],
						["RH_compM2l",nil,5000],
						["RH_eotech553",nil,5200],
						["RH_eothhs1",nil,250]
					]
				];
			};
		};
	};

	    case "cop_swat":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 6): {"You are not at a SWAT rank!"};
			default
			{
				["Altis SWAT Officer Shop",
					[
						["bpx_uts15",nil,17000],
						["BPX_snds_UTS15",nil,7000],
						["BPX_UTS15_Pellets",nil,700],
						["hlc_smg_mp5a4",nil,7000],
						["hlc_smg_mp5sd6",nil,7000],
						["hlc_30Rnd_9x19_B_MP5",nil,100],
						["hlc_rifle_G36C",nil,12000],
						["hlc_rifle_g36KTac",nil,17000],
						["hlc_30rnd_556x45_EPR_G36",nil,700],
						["hlc_rifle_Colt727",nil,15000],
						["hlc_rifle_M4",nil,15000],
						["hlc_rifle_CQBR",nil,15000],
						["hlc_rifle_m4m203",nil,25000],
						["hlc_muzzle_556NATO_KAC",nil,5000],
						["30Rnd_556x45_Stanag",nil,500],
						["hlc_30rnd_556x45_S",nil,600],
						["hlc_rifle_g3ka4",nil,15000],
						["hlc_20rnd_762x51_b_G3",nil,15000],
						["hlc_rifle_falosw",nil,15000],
						["hlc_muzzle_snds_fal",nil,5000],
						["hlc_20Rnd_762x51_B_fal",nil,500],
						["RH_SR25EC",nil,35000],
						["RH_m110sd",nil,5000],
						["RH_leu_mk4",nil,5000],
						["RH_HBLM",nil,500],
						["RH_20Rnd_762x51_M80A1",nil,500],
						["hlc_rifle_awmagnum_BL",nil,35000],
						["hlc_5rnd_300WM_FMJ_AWM",nil,500],
						["optic_LRPS",nil,500],
						["RH_p226s",nil,5000],
						["RH_p226",nil,5000],
				        ["RH_15Rnd_9x19_SIG",nil,750],
						["RH_fnp45",nil,7000],
						["RH_15Rnd_45cal_fnp",nil,100],
						["RH_usp",nil,8000],
						["RH_12Rnd_45cal_usp",nil,700],
						["RH_bullb",nil,8000],
						["RH_6Rnd_454_Mag",nil,8000],
                        ["RH_barska_rds",nil,4500],
						["RH_shortdot",nil,4500],
						["RH_compM2l",nil,5000],
						["RH_eotech553",nil,5200],
						["SmokeShellYellow",nil,200],
						["1Rnd_SmokeYellow_Grenade_shell",nil,200],
						["RH_eothhs1",nil,250]
					]
				];
			};
		};
	};
	
	    case "cop_CID":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 6): {"You are not at a SWAT rank!"};
			default
			{
				["CID Weapon Shop",
					[
						["RH_g18",nil,5000],
						["RH_33Rnd_9x19_g18",nil,100],
						["RH_muzi",nil,6000],
						["RH_30Rnd_9x19_UZI",nil,100],
						["RH_tec9",nil,8000],
						["RH_32Rnd_9x19_tec",nil,100],
						["RH_fn57_t",nil,5000],
						["RH_20Rnd_57x28_FN",nil,100],
						["RH_Deagles",nil,5000],
						["RH_7Rnd_50_AE",nil,1000],
						["chakFNP90_50rnd_skin1",nil,9000],
						["chakFNP90_57x28_B_skin1",nil,500],
						["AG_MP9_folded_sand",nil,5000],
						["AG_MP9_sand",nil,5000],
						["AG_MP9_sidearm",nil,5500],
						["30Rnd_45ACP_Mag_SMG_01",nil,90],
						["GG_Weaponpack_M1_Garand",nil,4000],
						["GG_M1_Garand_Magazine",nil,900],
						["hlc_rifle_akm",nil,4500],
						["hlc_30Rnd_762x39_b_ak",nil,200],
						["hlc_rifle_aks74u",nil,35000],
						["hlc_30Rnd_545x39_B_AK",nil,300],
						["hlc_rifle_augpara_t",nil,4400],
						["hlc_25Rnd_9x19mm_M882_AUG",nil,300],
						["hlc_rifle_aks74",nil,6500],
						["hlc_rifle_aks74u",nil,8500],
						["hlc_muzzle_545SUP_AK",nil,10500],
						["hlc_rifle_ak12",nil,9600],
						["hlc_rifle_aku12",nil,9600],
						["hlc_30Rnd_545x39_B_AK",nil,300],
						["hlc_rifle_RU556",nil,14800],
						["hlc_rifle_bcmjack",nil,15500],
						["hlc_30rnd_556x45_EPR",nil,100],
						["hlc_rifle_M14_Bipod",nil,10800],
						["hlc_20Rnd_762x51_B_M14",nil,1000],
						["hlc_rifle_hk51",nil,7800],
						["hlc_rifle_g3ka4",nil,16800],
						["hlc_20rnd_762x51_b_G3",nil,100],
						["hlc_rifle_L1A1SLR",nil,17800],
						["hlc_rifle_FAL5061Rail",nil,18800],
						["hlc_20Rnd_762x51_B_fal",nil,16800],
						["Trixie_M40A3_Clean",nil,27000],
						["Trixie_5x762_Mag",nil,1000],
						["Trixie_M24_Black_Clean",nil,28000],
						["Trixie_5x762_Mag",nil,1000],
						["hlc_rifle_rpk74n",nil,20000],
						["hlc_rifle_RPK12",nil,21000],
						["hlc_45Rnd_545x39_t_rpk",nil,2500],
						["optic_DMS",nil,500],
						["optic_NVS",nil,500],
						["optic_ACO_grn",nil,300],
						["optic_Holosight",nil,3600],
						["RH_ta31rmr_tan_2D",nil,6600],
						["hlc_optic_artel_m14",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,700],
						["optic_Arco",nil,750],
						["optic_AMS",nil,5500],
						["optic_KHS_blk",nil,5550],
						["bipod_01_F_blk",nil,2500]
					]
				];
			};
		};
	};
	
	    case "cop_CID_CLOTHES":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 6): {"You are not at a SWAT rank!"};
			default
			{
				["CID Clothes Shop",
					[
						["U_O_CombatUniform_ocamo",nil,5000],
						["U_BG_Guerrilla_6_1",nil,5000],
						["U_BG_Guerilla1_1",nil,5000],
						["U_BG_Guerilla1_1",nil,5000],
						["TRYK_U_B_ARO1_GR_R_CombatUniform",nil,5000],
						["TRYK_U_B_ARO1_GRY_CombatUniform",nil,5000],
						["TRYK_U_B_3CD_Delta_BDU",nil,5000],
						["TRYK_U_B_OD_OD_CombatUniform",nil,5000],
						["TRYK_U_B_Snow_CombatUniform",nil,5000],
						["TRYK_U_B_TANOCP_CombatUniform",nil,5000],
						["TRYK_U_B_Woodland",nil,5000],
						["TRYK_U_B_WDL_GRY_R_CombatUniform",nil,5000],
						["IRA_Soldier_Outfit_9",nil,5000],
						["TRYK_B_TRYK_UCP_T",nil,7500],
						["ISIS_Uniform",nil,7500],
						["TRYK_T_camo_desert_marpat_BG",nil,11500],
						["TRYK_U_B_ARO2_CombatUniform",nil,17500],
						["TRYK_U_B_ARO1_CBR_CombatUniform",nil,15610],
						["TRYK_U_B_JSDF_CombatUniform","Guerilla Leader",15340],
						["UVF_Soldier_Outfit_1",nil,15610],
						["UVF_Soldier_Outfit_2",nil,15610],
						["IRA_Soldier_Outfit_11",nil,15610],
						["IRA_Soldier_Outfit_4",nil,15610],
						["IRA_Soldier_Outfit_3",nil,15610],
						["IRA_Soldier_Outfit_2",nil,15610],
						["IRA_Soldier_Outfit_1",nil,15610],
						["UVF_Soldier_Outfit_3",nil,15610],
						["IRA_Soldier_Outfit_6",nil,15610],
						["UVF_Soldier_Outfit_8",nil,15610],
						["IRA_Soldier_Outfit_8",nil,15610],
						["UVF_Soldier_Outfit_9",nil,15610],
						["UVF_Soldier_Outfit_6",nil,15610],
						["UVF_Soldier_Outfit_5",nil,15610],
						["IRA_Soldier_Outfit_10",nil,15610],
						["UVF_Soldier_Outfit_7",nil,15610],
						["U_B_FullGhillie_ard",nil,100000],
						["U_B_FullGhillie_sard",nil,100000],
						["U_I_FullGhillie_lsh",nil,100000],
						["U_B_CombatUniform_mcam_vest",nil,12500],
						["U_I_CombatUniform",nil,15340],
						["H_ShemagOpen_tan",nil,850],
						["H_Booniehat_dgtl",nil,500],
						["H_Watchcap_blk",nil,500],
						["ISIS_Shemag",nil,500],
						["H_Booniehat_dirty",nil,400],
						["H_Shemag_olive",nil,850],
						["H_ShemagOpen_khk",nil,800],
						["H_HelmetO_ocamo",nil,2500],
						["H_MilCap_oucamo",nil,1200],
						["Bravo93_BoonieHat_DPM",nil,5200],
						["TRYK_H_pakol",nil,200],
						["H_PilotHelmetFighter_O",nil,5200],
						["H_Beret_blk",nil,5200],
						["H_Bandanna_camo",nil,650],
						["SAS_shemagh_OD",nil,25],
						["Bravo93_IRA_Balaclava_Brown",nil,25],
						["Bravo93_IRA_Balaclava_Green",nil,25],
						["Bravo93_UVF_Balaclava_Navy",nil,25],
						["Mask_M40_OD",nil,25000],
						["T_HoodMW",nil,25],
						["G_Shades_Blue",nil,20],
						["G_Sport_Blackred",nil,20],
						["G_Sport_Checkered",nil,20],
						["G_Sport_Blackyellow",nil,20],
						["G_Sport_BlackWhite",nil,20],
						["G_Squares",nil,10],
						["TRYK_US_ESS_Glasses",nil,30],
						["TRYK_US_ESS_Glasses_TAN",nil,30],
						["TRYK_US_ESS_Glasses_TAN_BLK",nil,30],
						["G_Lowprofile",nil,30],
						["G_Combat",nil,55],
						["V_TacVest_khk",nil,12500],
						["V_TacVest_blk",nil,12500],
						["V_TacVest_brn",nil,12500],
						["V_TacVest_camo",nil,12500],
						["V_TacVest_oli",nil,12500],
						["V_I_G_resistanceLeader_F",nil,12500],
						["TAC_EI_RRV24L_OD",nil,17500],
						["TAC_EI_RRVCQB_Khaki",nil,17500],
						["TAC_EI_RRV28_Khaki",nil,17500],
						["TAC_EI_RRV28_OD",nil,17500],
						["TAC_EI_RRV211_OD",nil,17500],
						["TAC_EI_RRV211_Khaki",nil,17500],
						["TAC_FS_FO_mL_K",nil,17500],
						["V_TacVest_khk",nil,12500],
						["V_BandollierB_cbr",nil,4500],
						["V_HarnessO_brn",nil,7500],
						["B_AssaultPack_cbr",nil,2500],
						["B_Kitbag_mcamo",nil,4500],
						["B_TacticalPack_oli",nil,3500],
						["B_FieldPack_ocamo",nil,3000],
						["B_Bergen_sgg",nil,4500],
						["B_Kitbag_cbr",nil,4500],
						["B_Carryall_oli",nil,5000],
						["B_Carryall_khk",nil,5000]
					]
				];
			};
		};
	};

	    case "cop_command":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 7): {"You are not a Commander"};
			default
			{
				["Altis Command Officer Shop",
					[
					    ["hlc_smg_mp5a4",nil,7000],
						["hlc_smg_mp5k_PDW",nil,7000],
						["hlc_30Rnd_9x19_B_MP5",nil,100],
						["hlc_rifle_G36C",nil,12000],
						["hlc_rifle_G36KV",nil,17000],
						["hlc_rifle_G36V",nil,17000],
						["hlc_30rnd_556x45_EPR_G36",nil,700],
						["hlc_rifle_Colt727",nil,15000],
						["hlc_rifle_M4",nil,15000],
						["30Rnd_556x45_Stanag",nil,500],
						["hlc_30rnd_556x45_S",nil,600],
						["hlc_rifle_auga3_b",nil,15000],
						["hlc_30Rnd_556x45_B_AUG",nil,500],
						["hlc_rifle_g3ka4",nil,15000],
						["hlc_20rnd_762x51_b_G3",nil,15000],
						["RH_p226s",nil,5000],
						["RH_p226",nil,5000],
				        ["RH_15Rnd_9x19_SIG",nil,750],
						["RH_fnp45",nil,7000],
						["RH_15Rnd_45cal_fnp",nil,100],
						["RH_usp",nil,8000],
						["RH_12Rnd_45cal_usp",nil,700],
                        ["RH_barska_rds",nil,4500],
						["RH_compM2l",nil,5000],
						["RH_eotech553",nil,5200],
						["RH_eothhs1",nil,250]
					]
				];
			};
		};
	};

	    case "cop_chief":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 8): {"You are not at a Chief rank!"};
			default
			{
				["Altis Chief Officer Shop",
					[
						["hlc_smg_mp5a4",nil,7000],
						["hlc_smg_mp5k_PDW",nil,7000],
						["hlc_30Rnd_9x19_B_MP5",nil,100],
						["hlc_rifle_G36C",nil,12000],
						["hlc_rifle_G36KV",nil,17000],
						["hlc_rifle_G36V",nil,17000],
						["hlc_30rnd_556x45_EPR_G36",nil,700],
						["hlc_rifle_Colt727",nil,15000],
						["hlc_rifle_M4",nil,15000],
						["30Rnd_556x45_Stanag",nil,500],
						["hlc_30rnd_556x45_S",nil,600],
						["hlc_rifle_auga3_b",nil,15000],
						["hlc_30Rnd_556x45_B_AUG",nil,500],
						["hlc_rifle_g3ka4",nil,15000],
						["hlc_20rnd_762x51_b_G3",nil,15000],
						["hlc_rifle_m14sopmod",nil,15000],
						["hlc_20Rnd_762x51_B_M14",nil,500],
						["RH_p226s",nil,5000],
						["RH_p226",nil,5000],
				        ["RH_15Rnd_9x19_SIG",nil,750],
						["RH_fnp45",nil,7000],
						["RH_15Rnd_45cal_fnp",nil,100],
						["RH_usp",nil,8000],
						["RH_12Rnd_45cal_usp",nil,700],
						["RH_bull",nil,7000],
						["RH_6Rnd_454_Mag",nil,700],
                        ["RH_barska_rds",nil,4500],
						["RH_compM2l",nil,5000],
						["RH_eotech553",nil,5200],
						["RH_shortdot",nil,5200],
						["RH_eothhs1",nil,250]
					]
				];
			};
		};
	};

	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["RH_g18",nil,15000],
						["RH_33Rnd_9x19_g18",nil,100],
						["RH_muzi",nil,16000],
						["RH_30Rnd_9x19_UZI",nil,100],
						["RH_tec9",nil,18000],
						["RH_tecsd",nil,48000],
						["RH_32Rnd_9x19_tec",nil,100],
						["RH_fn57_t",nil,35000],
						["RH_20Rnd_57x28_FN",nil,100],
						["RH_Deagles",nil,45000],
						["RH_7Rnd_50_AE",nil,1000],
						["chakFNP90_50rnd_skin1",nil,90000],
						["chakFNP90_57x28_B_skin1",nil,500],
						["AG_MP9_folded_sand",nil,50000],
						["AG_MP9_sand",nil,50000],
						["AG_MP9_sidearm",nil,55000],
						["30Rnd_45ACP_Mag_SMG_01",nil,90],
						["GG_Weaponpack_M1_Garand",nil,40000],
						["GG_M1_Garand_Magazine",nil,900],
						["hlc_rifle_akm",nil,45000],
						["hlc_30Rnd_762x39_b_ak",nil,200],
						["hlc_rifle_aks74u",nil,35000],
						["hlc_30Rnd_545x39_B_AK",nil,300],
						["hlc_rifle_augpara_t",nil,44300],
						["hlc_25Rnd_9x19mm_M882_AUG",nil,300]
					]
				];
			};
		};
	};
	
	case "rebeladv":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebeladv): {"You don't have a advRebel training license!"};
			default
			{
				["Kiika's Big Guns Shop",
					[
						["hlc_rifle_aks74",nil,65000],
						["hlc_rifle_aks74u",nil,85000],
						["hlc_muzzle_545SUP_AK",nil,105000],
						["hlc_rifle_ak12",nil,96000],
						["hlc_rifle_aku12",nil,96000],
						["hlc_30Rnd_545x39_B_AK",nil,300],
						["hlc_rifle_RU556",nil,148000],
						["hlc_rifle_bcmjack",nil,155000],
						["hlc_30rnd_556x45_EPR",nil,1000],
						["hlc_rifle_M14_Bipod",nil,108000],
						["hlc_20Rnd_762x51_B_M14",nil,1000],
						["hlc_rifle_hk51",nil,78000],
						["hlc_rifle_g3ka4",nil,168000],
						["hlc_20rnd_762x51_b_G3",nil,1000],
						["hlc_rifle_L1A1SLR",nil,178000],
						["hlc_rifle_FAL5061Rail",nil,188000],
						["hlc_20Rnd_762x51_B_fal",nil,8000],
						["Trixie_M40A3_Clean",nil,270000],
						["Trixie_5x762_Mag",nil,1000],
						["Trixie_M24_Black_Clean",nil,280000],
						["Trixie_5x762_Mag",nil,1000],
						["hlc_rifle_rpk74n",nil,200000],
						["hlc_rifle_RPK12",nil,210000],
						["hlc_45Rnd_545x39_t_rpk",nil,25000],
						["optic_DMS",nil,5000],
						["optic_NVS",nil,5000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["RH_ta31rmr_tan_2D",nil,6600],
						["hlc_optic_artel_m14",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["optic_Arco",nil,7500],
						["optic_AMS",nil,55000],
						["optic_KHS_blk",nil,55500],
						["bipod_01_F_blk",nil,25000]
					]
				];
			};
		};
	};

	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["arifle_SDAR_F","Underwater gun",45000],
						["RH_m9",nil,6500],
						["RH_g17",nil,7850],
						["RH_sw659",nil,8500],
						["RH_mateba",nil,10000],
						["RH_gsh18",nil,20000],
						["RH_kimber",nil,25000],
						["TAC_HGB_OD",nil,8900],
						["20Rnd_556x45_UW_mag",nil,300],
						["RH_15Rnd_9x19_M9",nil,25],
						["RH_17Rnd_9x19_g17",nil,45],
						["RH_14Rnd_9x19_sw",nil,50],
						["RH_6Rnd_44_Mag",nil,50],
						["RH_18Rnd_9x19_gsh",nil,75],
						["RH_7Rnd_45cal_m1911",nil,105]
					]
				];
			};
		};
	};

	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,1000],
						["30Rnd_45ACP_Mag_SMG_01",nil,125]
					]
				];
			};
		};
	};

	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ItemMap",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,1000],
				["tf_anprc152",nil,1000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
