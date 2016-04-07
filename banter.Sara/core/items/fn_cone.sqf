/*
    File: fn_hut.sqf
    Author: OLLI aka Hauklotz
    
    Description:
    Holt das Item aus dem Inventar und setzt es auf der Map.
*/
private["_position","_cone"];
_cone = "RoadCone_L_F" createVehicle [0,0,0];
_cone attachTo[player,[0,2,0.5]];
_cone setDir 0;
_cone setVariable["item","coneDeployed",true];

life_action_coneDeploy = player addAction[localize "STR_ISTR_cone_Place",{if(!isNull life_cone) then {detach life_cone; life_cone = ObjNull;}; player removeAction life_action_coneDeploy; life_action_coneDeploy = nil;},"",999,false,false,"",'!isNull life_cone'];
life_cone = _cone;
waitUntil {isNull life_cone};
if(!isNil "life_action_coneDeploy") then {player removeAction life_action_coneDeploy;};
if(isNull _cone) exitWith {life_cone = ObjNull;};
_cone setPos [(getPos _cone select 0),(getPos _cone select 1),0];
_cone allowDamage false;

life_action_conePickup = player addAction[localize "STR_ISTR_cone_Pack",life_fnc_packupcone,"",0,false,false,"",
' _cone = nearestObjects[getPos player,["RoadCone_L_F"],8] select 0; !isNil "_cone" && !isNil {(_cone getVariable "item")}'];
[[_cone],"TON_fnc_cone",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.