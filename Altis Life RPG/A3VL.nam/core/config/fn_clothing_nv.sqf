/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["UNS_NVA_G",nil,100],
			["UNS_NVA_GC",nil,100],
			["ACV_NVA_01",nil,100],
			["ACV_NVA_PILOT",nil,100]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["UNS_NVA_HG",nil,10],
			["UNS_NVA_HGG",nil,10],
			["UNS_NVA_HK",nil,10],
			["UNS_NVA_HKG",nil,10],
			["UNS_PAVN_HN",nil,10],
			["UNS_PAVN_HC",nil,10], 
			["nva_helo_helmet",nil,20]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["UNS_Band_H",nil,25],
			["UNS_Towel",nil,20],
			["G_Bandanna_oli",nil,20],
			["G_Bandanna_khk",nil,20],
			["G_Bandanna_blk",nil,20]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["UNS_NVA_A1",nil,250],
			["UNS_NVA_A2",nil,250],
			["UNS_NVA_A3",nil,250],
			["UNS_NVA_S1",nil,250],
			["UNS_NVA_S2",nil,250],
			["UNS_NVA_MG",nil,250],
			["UNS_NVA_SP",nil,250]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["tf_rt1523g_green",nil,600],
			["UNS_NVA_RPG",nil,300],
			["UNS_NVA_R1",nil,300]
	};
};