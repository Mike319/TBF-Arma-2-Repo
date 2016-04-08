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
ctrlSetText[3103,"Viet-Cong Clothing Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["UNS_VC_C",nil,100],
			["UNS_VC_U",nil,100],
			["UNS_VC_S",nil,100],
			["vc_coverall",nil,100],
			["vc_garment",nil,100]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["UNS_Headband_OD",nil,10],
			["UNS_Headband_ED",nil,10],
			["UNS_Headband_BK",nil,10],
			["UNS_Boonie_VC",nil,10],
			["UNS_Conehat_VC",nil,10]
			
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["UNS_Band_H",nil,25],
			["UNS_Bullets",nil,20],
			["UNS_Ear",nil,20],
			["UNS_Finger",nil,20],
			["UNS_Towel",nil,20],
			["G_Bandanna_oli",nil,20],
			["G_Bandanna_khk",nil,10],
			["G_Bandanna_blk",nil,30]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["UNS_VC_A1",nil,350],
			["UNS_VC_A2",nil,350],
			["UNS_VC_S2",nil,350],
			["UNS_VC_B1",nil,350],
			["UNS_VC_MG",nil,350],
			["ACV_Jacket01",nil,350],
			["vc_Bandollier",nil,350]
			
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["CUP_B_AlicePack_Khaki",nil,500]
		];
	};
};