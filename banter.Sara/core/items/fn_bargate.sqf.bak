/*
    File: fn_schranke.sqf
    Author: OLLI aka Hauklotz
    
    Description:
    Holt das Item aus dem Inventar und setzt es auf der Map.
*/
private["_position","_bargate"];
_bargate = "Land_BarGate_F" createVehicle [0,0,0];
_bargate attachTo[player,[0,5.5,4.0]];
_bargate setDir 0;
_bargate setVariable["item","bargateDeployed",true];

life_action_bargateDeploy = player addAction[localize "STR_ISTR_bargate_Place",{if(!isNull life_bargate) then {detach life_bargate; life_bargate = ObjNull;}; player removeAction life_action_bargateDeploy; life_action_bargateDeploy = nil;},"",999,false,false,"",'!isNull life_bargate'];
life_bargate = _bargate;
waitUntil {isNull life_bargate};
if(!isNil "life_action_bargateDeploy") then {player removeAction life_action_bargateDeploy;};
if(isNull _bargate) exitWith {life_bargate = ObjNull;};
_bargate setPos [(getPos _bargate select 0),(getPos _bargate select 1),0];
_bargate allowDamage false;

life_action_bargatePickup = player addAction[localize "STR_ISTR_bargate_Pack",life_fnc_packupbargate,"",0,false,false,"",
' _bargate = nearestObjects[getPos player,["Land_BarGate_F"],8] select 0; !isNil "_bargate" && !isNil {(_bargate getVariable "item")}'];
[[_bargate],"TON_fnc_bargate",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.