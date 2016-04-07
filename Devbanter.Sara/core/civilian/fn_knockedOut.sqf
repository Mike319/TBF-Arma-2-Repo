/*
	File: fn_knockedOut.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts and monitors the knocked out state.
*/
private["_target","_who","_obj","_wh"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_who = [_this,1,"",[""]] call BIS_fnc_param;
if(isNull _target) exitWith {};
if(_target != player) exitWith {};
if(_who == "") exitWith {};
if ("ItemRadio" in (assignedItems player) OR "ItemRadio" in (items player)) then {
	player unassignItem "ItemRadio";
	player removeItem "ItemRadio";
	_wh = createVehicle ["groundweaponholder", player modeltoworld [0,1,0], [], 0, "can_collide"];
	_wh addItemCargoGlobal ["ItemRadio",1];
};
titleText[format[localize "STR_Civ_KnockedOut",_who],"PLAIN"];
player playMoveNow "Incapacitated";
_obj = "Land_ClutterCutter_small_F" createVehicle (getPosATL player);
_obj setPosATL (getPosATL player);
player attachTo [_obj,[0,0,0]];
sleep 15;
player playMoveNow "amovppnemstpsraswrfldnon";
if(!(player getVariable "restrained")) then
{
	detach player;
};
deleteVehicle _obj;
player setVariable["robbed",FALSE,TRUE];