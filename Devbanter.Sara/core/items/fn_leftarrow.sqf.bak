/*
    File: fn_pfeillinks.sqf
    Author: OLLI aka Hauklotz
    
    Description:
    Holt das Item aus dem Inventar und setzt es auf der Map.
*/
private["_position","_leftarrow"];
_leftarrow = "ArrowDesk_L_F" createVehicle [0,0,0];
_leftarrow attachTo[player,[0,2,0.5]];
_leftarrow setDir 0;
_leftarrow setVariable["item","leftarrowDeployed",true];

life_action_leftarrowDeploy = player addAction[localize "STR_ISTR_leftarrow_Place",{if(!isNull life_leftarrow) then {detach life_leftarrow; life_leftarrow = ObjNull;}; player removeAction life_action_leftarrowDeploy; life_action_leftarrowDeploy = nil;},"",999,false,false,"",'!isNull life_leftarrow'];
life_leftarrow = _leftarrow;
waitUntil {isNull life_leftarrow};
if(!isNil "life_action_leftarrowDeploy") then {player removeAction life_action_leftarrowDeploy;};
if(isNull _leftarrow) exitWith {life_leftarrow = ObjNull;};
_leftarrow setPos [(getPos _leftarrow select 0),(getPos _leftarrow select 1),0];
_leftarrow allowDamage false;

life_action_leftarrowPickup = player addAction[localize "STR_ISTR_leftarrow_Pack",life_fnc_packupleftarrow,"",0,false,false,"",
' _leftarrow = nearestObjects[getPos player,["ArrowDesk_R_F"],8] select 0; !isNil "_leftarrow" && !isNil {(_leftarrow getVariable "item")}'];
[[_leftarrow],"TON_fnc_leftarrow",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.