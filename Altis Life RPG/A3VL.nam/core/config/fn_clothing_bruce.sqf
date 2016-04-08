/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["UNS_CIV_U",nil,250],
		["U_C_HunterBody_grn",nil,250],
		["U_C_Poor_1",nil,250],
		["U_BG_Guerilla2_3",nil,250],
		["U_BG_Guerilla2_1",nil,250],
		["U_BG_Guerilla2_2",nil,250],
		["U_BG_Guerilla3_1",nil,250]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["vietsh_Head",nil,120],
			["H_Cap_red",nil,130],
			["H_Cap_oli",nil,150],
			["H_Cap_blk",nil,165],
			["H_Bandanna_sgg",nil,135],
			["UNS_Headband_OD",nil,145],
			["UNS_Headband_BK",nil,160]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["UNS_Band_H",nil,25],
			["UNS_Peace",nil,20],
			["UNS_Towel",nil,20],
			["G_Bandanna_blk",nil,20]
		];
	};
	
	//Vest
	case 3:
	{
		[
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["CUP_B_AlicePack_Khaki",nil,650],
			["CUP_B_AlicePack_Brown",nil,650],
			["CUP_B_AlicePack_DarkGreen",nil,650]
		];
	};
};