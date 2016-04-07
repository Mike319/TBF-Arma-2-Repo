/*
    File: fn_holz.sqf
    Author: OLLI aka Hauklotz
    
    Description:
    Gets the item from your inventory and place it on the map.
*/
private["_position","_roadbarriersmall"];
_roadbarriersmall = "RoadBarrier_small_F" createVehicle [0,0,0];
_roadbarriersmall attachTo[player,[0,2,0.6]];
_roadbarriersmall setDir 0;
_roadbarriersmall setVariable["item","roadbarriersmallDeployed",true];

life_action_roadbarriersmallDeploy = player addAction[localize "STR_ISTR_roadbarriersmall_Place",{if(!isNull life_roadbarriersmall) then {detach life_roadbarriersmall; life_roadbarriersmall = ObjNull;}; player removeAction life_action_roadbarriersmallDeploy; life_action_roadbarriersmallDeploy = nil;},"",999,false,false,"",'!isNull life_roadbarriersmall'];
life_roadbarriersmall = _roadbarriersmall;
waitUntil {isNull life_roadbarriersmall};
if(!isNil "life_action_roadbarriersmallDeploy") then {player removeAction life_action_roadbarriersmallDeploy;};
if(isNull _roadbarriersmall) exitWith {life_roadbarriersmall = ObjNull;};
_roadbarriersmall setPos [(getPos _roadbarriersmall select 0),(getPos _roadbarriersmall select 1),0];
_roadbarriersmall allowDamage false;

life_action_roadbarriersmallPickup = player addAction[localize "STR_ISTR_roadbarriersmall_Pack",life_fnc_packuproadbarriersmall,"",0,false,false,"",
' _roadbarriersmall = nearestObjects[getPos player,["RoadBarrier_small_F"],8] select 0; !isNil "_roadbarriersmall" && !isNil {(_roadbarriersmall getVariable "item")}'];
[[_roadbarriersmall],"TON_fnc_roadbarriersmall",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.