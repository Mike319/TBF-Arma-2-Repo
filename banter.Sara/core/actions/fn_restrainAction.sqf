/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable "restrained")) exitWith {};
if(side _unit == west) exitWith {};
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};

if (side player == civilian) then {
	if(life_inv_zipties < 1) exitWith { hint "You do not have any zipties."; };
	life_inv_zipties = life_inv_zipties - 1;
	player say3D "Zipties";
	[[getPlayerUID player,profileName,"207"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
};

if (side player == west) then {
	player say3D "Handcuffs";
};

//Broadcast!
player say3D "handcuff";
_unit setVariable["restrained",true,true];
[[player], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;
[[0,format[localize "STR_NOTF_Restrained",_unit getVariable["realname", name _unit], profileName]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;