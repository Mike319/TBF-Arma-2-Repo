#include <macro.h>
/*
	File: fn_clothing_baf.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master config file for baf clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"British Armed Forces Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret pushBack ["UK3CB_BAF_U_CombatUniform_MTP_RM",nil,25];
		_ret pushBack ["UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve_RM",nil,25];
		_ret pushBack ["UK3CB_BAF_U_CombatUniform_MTP_TShirt_RM",nil,25];
		_ret pushBack ["UK3CB_BAF_U_HeliPilotCoveralls_RN",nil,25];
	};

	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 7) then
		{
			_ret pushBack ["UK3CB_BAF_H_Beret_RM_Bootneck",nil,75];
			_ret pushBack ["UK3CB_BAF_H_Beret_RM_Bootneck_PRR",nil,75];
			_ret pushBack ["UK3CB_BAF_H_Beret_SBS",nil,75];
			_ret pushBack ["UK3CB_BAF_H_Beret_SBS_PRR",nil,75];
			_ret pushBack ["UK3CB_BAF_H_PilotHelmetHeli_A",nil,75];
			_ret pushBack ["UK3CB_BAF_H_Mk7_Camo_A",nil,75];
			_ret pushBack ["UK3CB_BAF_H_Mk7_Net_A",nil,75];
			_ret pushBack ["UK3CB_BAF_H_Mk7_Scrim_E",nil,75];
			_ret pushBack ["FIR_HGU55PJ_Close",nil,75];

		};
	};

	//Glasses
	case 2:
	{
		_if(__GETC__(life_coplevel) > 7) then
		[
			["UK3CB_BAF_G_Tactical_Black",nil,25],
			["UK3CB_BAF_G_Tactical_Grey",nil,20],
			["UK3CB_BAF_G_Tactical_Orange",nil,20],
			["UK3CB_BAF_G_Tactical_Yellow",nil,20],
			["G_mas_wpn_gasmask",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["TRYK_headset_Glasses",nil,30],
			["G_Diving",nil,55]
		];
	};

	//Vest
	case 3:
	{
	    _ret pushBack ["V_TacVest_blk_POLICE","Police vest teargas protection",3000];
	    _ret pushBack ["V_Rangemaster_belt",nil,800];
		if(__GETC__(life_coplevel) > 7) then
		{
			_ret pushBack ["UK3CB_BAF_V_Osprey",nil,1500];
			_ret pushBack ["UK3CB_BAF_V_Osprey_Holster",nil,2000];
			_ret pushBack ["UK3CB_BAF_V_Osprey_Marksman_A",nil,2000];
			_ret pushBack ["UK3CB_BAF_V_Osprey_Medic_C",nil,2000];
			_ret pushBack ["UK3CB_BAF_V_Osprey_MG_A",nil,2000];
			_ret pushBack ["UK3CB_BAF_V_Osprey_Rifleman_E",nil,2000];
			_ret pushBack ["UK3CB_BAF_V_Osprey_SL_C",nil,2000];
			_ret pushBack ["UK3CB_BAF_V_Pilot_A",nil,2000];
		};
	};

	//Backpacks
	case 4:
	{
		_ret =
		[
			["UK3CB_BAF_B_Bergen_MTP_JTAC_H_A",nil,3500],
			["UK3CB_BAF_B_Bergen_MTP_Radio_L_B",nil,3500],
			["UK3CB_BAF_B_Bergen_MTP_Rifleman_H_A",nil,3500],
			["UK3CB_BAF_B_Bergen_MTP_PointMan_L_A",nil,3500],
			["AM_PoliceBelt",nil,3500]
		];
	};
};

_ret;