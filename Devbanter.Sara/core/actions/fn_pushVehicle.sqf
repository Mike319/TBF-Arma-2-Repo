/*
	File Name: fn_pushVehicle.sqf
	Author: FEINT's Boat Pushing
	Edit: Travis Boi to make a vehicle work
*/
private["_target","_caller","_posCaller","_dir"];
_target = cursorTarget;
_caller = player;
_posCaller = getPos _caller;
_dir = getDir _caller;

if(isNull _target) exitWith {};
if(_caller distance _target > 5) exitWith {};

if(local _target) then {
	[_caller,_target,_posCaller,_dir] spawn life_fnc_pushFunction;
} else {
	[_caller,_target,_posCaller,_dir] remoteExec ["life_fnc_pushFunction",_target];
};