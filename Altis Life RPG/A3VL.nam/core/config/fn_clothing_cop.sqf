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
		_ret pushBack ["U_Rangemaster","Cop Uniform",25];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["MNugget",nil,100];
			_ret pushBack ["CNugget",nil,100];
			_ret pushBack ["UNS_ARMY_BDU_1stCav65pv1",nil,100];
			_ret pushBack ["UNS_ARMY_BDU_1stCav65pv2",nil,100];
			_ret pushBack ["UNS_ARMY_BDU_1stCav65pfc",nil,100];
			_ret pushBack ["UNS_ARMY_BDU_1stCav65spc",nil,100];
			_ret pushBack ["UNS_ARMY_BDU_1stCav65spc5",nil,100];
			_ret pushBack ["UNS_ARMY_BDU_1stCav65cpl",nil,100];
			_ret pushBack ["UNS_ARMY_BDU_1stCav65sgt",nil,100];
			_ret pushBack ["UNS_ARMY_BDU_1stCav65ssg",nil,100];
			_ret pushBack ["UNS_ARMY_BDU_1stCav65sfc",nil,100];
			_ret pushBack ["UNS_ARMY_BDU_1stCav65msg",nil,100];
			_ret pushBack ["UNS_ARMY_BDU_1stCav651stsgt",nil,100];
			_ret pushBack ["UNS_ARMY_BDU_1stCav65sgm",nil,100];
			_ret pushBack ["UNS_ARMY_BDU_1stCav652ndlt",nil,100];
			_ret pushBack ["UNS_ARMY_BDU_1stCav651stlt",nil,100];
			_ret pushBack ["UNS_ARMY_BDU_1stCav65cpt",nil,100];
			_ret pushBack ["UNS_ARMY_BDU_1stCav65maj",nil,100];
			_ret pushBack ["UNS_ARMY_BDU_1stCav65ltcol",nil,100];
			_ret pushBack ["UNS_ARMY_BDU_1stCav65col",nil,100];
		};
	};
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["UNS_M1_9A",nil,75];
			_ret pushBack ["UNS_M1_8A",nil,120];
			_ret pushBack ["UNS_M1_7A",nil,75];
			_ret pushBack ["UNS_M1_6A",nil,120];
			_ret pushBack ["UNS_M1_5A",nil,75];
			_ret pushBack ["UNS_M1_4A",nil,120];
			_ret pushBack ["UNS_M1_3A",nil,75];
			_ret pushBack ["UNS_M1_2A",nil,120];
			_ret pushBack ["UNS_M1_1A",nil,75];
			_ret pushBack ["UNS_M1_13",nil,120];
			_ret pushBack ["UNS_M1_12",nil,75];
			_ret pushBack ["UNS_M1_11",nil,120];
			_ret pushBack ["UNS_M1_10",nil,75];
			_ret pushBack ["UNS_M1_9",nil,120];
			_ret pushBack ["UNS_M1_8",nil,75];
			_ret pushBack ["UNS_M1_7",nil,120];
			_ret pushBack ["UNS_M1_6",nil,75];
			_ret pushBack ["UNS_M1_5",nil,120];
			_ret pushBack ["UNS_M1_4",nil,75];
			_ret pushBack ["UNS_M1_3",nil,120];
			_ret pushBack ["UNS_M1_2",nil,75];
			_ret pushBack ["UNS_M1_1",nil,120];
		};
		

	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["UNS_Band_H",nil,25],
			["G_Aviator",nil,20]
		];
	};
	
	//Vest
	case 3:
	{
		_ret pushBack ["V_Rangemaster_belt",nil,800];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["UNS_M1956_A2",nil,150];
			_ret pushBack ["UNS_M1956_A3",nil,150];
			_ret pushBack ["UNS_M1956_A4",nil,150];
			_ret pushBack ["UNS_M1956_A5",nil,150];
			_ret pushBack ["UNS_M1956_A6",nil,150];
			_ret pushBack ["UNS_M1956_A7",nil,150];
			_ret pushBack ["UNS_M1956_A8",nil,150];
			_ret pushBack ["UNS_M1956_A9",nil,150];
			_ret pushBack ["UNS_M1956_A10",nil,150];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["UNS_Alice_F1",nil,100],
			["UNS_Alice_F2",nil,100],
			["UNS_Alice_F3",nil,100],
			["UNS_Alice_F4",nil,100],
			["UNS_Alice_F5",nil,100],
			["UNS_Alice_F6",nil,100],
			["UNS_Alice_F7",nil,100],
			["UNS_Alice_F8",nil,100],
			["UNS_Alice_F9",nil,100],
			["UNS_Alice_FR",nil,100],
			["UNS_Alice_1",nil,100],
			["UNS_Alice_2",nil,100],
			["UNS_ARMY_AT",nil,100]
			
		];
	};
};

_ret;