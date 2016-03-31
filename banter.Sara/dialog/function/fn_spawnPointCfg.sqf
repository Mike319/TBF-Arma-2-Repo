#include <macro.h>
/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration for available spawn points depending on the units side.

	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_ret"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		    _ret = [
			        ["cop_spawn_1","Paraiso HQ","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			        ["cop_spawn_2","Bagango HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		    ];
	};

	case civilian:
	{
		//if have reb license, only spawn here
		if(license_civ_rebel && playerSide == civilian) then {
		_ret = [
		                        ["reb_spawn_1","Rebel","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
								["spawn_b","Belfast","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
								["civ_spawn_1","Paraiso","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			                    ["civ_spawn_2","Bagango","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			                    ["civ_spawn_3","Dolores","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
						];
		};
		//if no rebel license, than can spawn normal loc

		if(!license_civ_rebel && playerSide == civilian) then {
		_ret = [
			                    ["civ_spawn_1","Paraiso","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			                    ["civ_spawn_2","Bagango","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			                    ["civ_spawn_3","Dolores","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
								["spawn_b","Belfast","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		                ];

		};
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");

				_ret pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
			} foreach life_houses;
		};
	};

	case independent: {
		    _ret = [
			     ["medic_spawn_1","Base","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			     ["medic_spawn_2","Base","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			     ["medic_spawn_3","Base","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		    ];
	};
};

_ret;