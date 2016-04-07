#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret pushBack ["policeUniform","Cop Uniform",25];
		_ret pushBack ["commandUniform",nil,25];
		_ret pushBack ["SCOUniform",nil,25];
		_ret pushBack ["chiefUniform",nil,25];
		_ret pushBack ["arm","SWAT Uniform",25];
		_ret pushBack ["armm","SWAT Uniform Black",25];
		_ret pushBack ["demian2435_pilot_uniform","Pilot Uniform",25];
	};

	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["H_Watchcap_blk",nil,75];
			_ret pushBack ["TRYK_ESS_CAP",nil,75];
			_ret pushBack ["H_Beret_02",nil,75];
			_ret pushBack ["TRYK_H_PASGT_BLK",nil,75];
			_ret pushBack ["demian2435_pilot_helmet",nil,75];
			_ret pushBack ["FIR_USHelmetType1_Navy_Black_Open",nil,75];
			_ret pushBack ["FIR_USHelmetType1_Navy_Black_Close",nil,75];
			_ret pushBack ["FIR_JHMCS_II",nil,75];
			_ret pushBack ["FIR_JHMCS_II",nil,75];
			_ret pushBack ["FIR_JHMCS_II",nil,75];
			_ret pushBack ["TRYK_H_headsetcap_blk_Glasses",nil,75];
			_ret pushBack ["H_HelmetB_light_black",nil,75];

		};
	};

	//Glasses
	case 2:
	{
		_ret =
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["Balaclava_Blk_Warthog",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["Mask_M40",nil,30],
			["AJ_Mask_Black_Teamlead",nil,30],
			["AJ_Mask_black_Standard",nil,30],
			["TRYK_headset_Glasses",nil,30],
			["G_Diving",nil,55]
		];
	};

	//Vest
	case 3:
	{
	    _ret pushBack ["ukPolice_Vest",nil,3000];
	    _ret pushBack ["V_Rangemaster_belt",nil,800];
		if(__GETC__(life_coplevel) > 0) then
		{
			_ret pushBack ["TAC_HGB_B",nil,1500];
			_ret pushBack ["demian2435_police_vest",nil,2000];
			_ret pushBack ["TAC_EI_RRV211_B",nil,2000];
			_ret pushBack ["TAC_EI_RRV24_B",nil,2000];
			_ret pushBack ["TAC_EI_RRV24L_B",nil,2000];
		};
	};

	//Backpacks
	case 4:
	{
		_ret =
		[
			["tf_rt1523g_black",nil,3500],
			["AM_PoliceBelt",nil,3500]
		];
	};
};

_ret;