/*
    File: fn_holzgross.sqf
    Author: OLLI aka Hauklotz
    
    Description:
    Holt das Item aus dem Inventar und setzt es auf der Map.
*/
private["_position","_roadbarrierlarge"];
_roadbarrierlarge = "RoadBarrier_F" createVehicle [0,0,0];
_roadbarrierlarge attachTo[player,[0,2,0.6]];
_roadbarrierlarge setDir 0;
_roadbarrierlarge setVariable["item","roadbarrierlargeDeployed",true];

life_action_roadbarrierlargeDeploy = player addAction[localize "STR_ISTR_roadbarrierlarge_Place",{if(!isNull life_roadbarrierlarge) then {detach life_roadbarrierlarge; life_roadbarrierlarge = ObjNull;}; player removeAction life_action_roadbarrierlargeDeploy; life_action_roadbarrierlargeDeploy = nil;},"",999,false,false,"",'!isNull life_roadbarrierlarge'];
life_roadbarrierlarge = _roadbarrierlarge;
waitUntil {isNull life_roadbarrierlarge};
if(!isNil "life_action_roadbarrierlargeDeploy") then {player removeAction life_action_roadbarrierlargeDeploy;};
if(isNull _roadbarrierlarge) exitWith {life_roadbarrierlarge = ObjNull;};
_roadbarrierlarge setPos [(getPos _roadbarrierlarge select 0),(getPos _roadbarrierlarge select 1),0];
_roadbarrierlarge allowDamage false;

life_action_roadbarrierlargePickup = player addAction[localize "STR_ISTR_roadbarrierlarge_Pack",life_fnc_packuproadbarrierlarge,"",0,false,false,"",
' _roadbarrierlarge = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0; !isNil "_roadbarrierlarge" && !isNil {(_roadbarrierlarge getVariable "item")}'];
[[_roadbarrierlarge],"TON_fnc_roadbarrierlarge",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.