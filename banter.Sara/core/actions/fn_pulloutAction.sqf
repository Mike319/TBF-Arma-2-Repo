/*
	File: fn_pulloutAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Pulls civilians out of a car if it's stopped.
*/
private["_crew"];
_crew = crew cursorTarget;

if ((side player == west) OR (cursorTarget in life_vehicles) OR (locked cursorTarget == 0)) then {
	if (playerSide == civilian) then {
		{
			if(_x getVariable "restrained") then
			{
				_x setVariable ["transporting",false,true]; _x setVariable ["Escorting",false,true];
				[[_x],"life_fnc_pulloutVeh",_x,false] spawn life_fnc_MP;
			};
		} foreach _crew;
	} else {
		{
			if(side _x != west || (_x getVariable "restrained")) then
			{
				_x setVariable ["transporting",false,true]; _x setVariable ["Escorting",false,true];
				[[_x],"life_fnc_pulloutVeh",_x,false] spawn life_fnc_MP;
			};
		} foreach _crew;
	};
} else {hint "You must have the keys to this vehicle to pull players out."};