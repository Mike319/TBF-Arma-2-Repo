/*
    File: fn_mauer.sqf
    Author: OLLI aka Hauklotz
    
    Description:
    Holt das Item aus dem Inventar und setzt es auf der Map.
*/
private["_position","_stripebarrier"];
_stripebarrier = "Land_CncBarrier_stripes_F" createVehicle [0,0,0];
_stripebarrier attachTo[player,[0,2,0.5]];
_stripebarrier setDir 0;
_stripebarrier setVariable["item","stripebarrierDeployed",true];

life_action_stripebarrierDeploy = player addAction[localize "STR_ISTR_stripebarrier_Place",{if(!isNull life_stripebarrier) then {detach life_stripebarrier; life_stripebarrier = ObjNull;}; player removeAction life_action_stripebarrierDeploy; life_action_stripebarrierDeploy = nil;},"",999,false,false,"",'!isNull life_stripebarrier'];
life_stripebarrier = _stripebarrier;
waitUntil {isNull life_stripebarrier};
if(!isNil "life_action_stripebarrierDeploy") then {player removeAction life_action_stripebarrierDeploy;};
if(isNull _stripebarrier) exitWith {life_stripebarrier = ObjNull;};
_stripebarrier setPos [(getPos _stripebarrier select 0),(getPos _stripebarrier select 1),0];
_stripebarrier allowDamage false;

life_action_stripebarrierPickup = player addAction[localize "STR_ISTR_stripebarrier_Pack",life_fnc_packupstripebarrier,"",0,false,false,"",
' _stripebarrier = nearestObjects[getPos player,["Land_CncBarrier_stripes_F"],8] select 0; !isNil "_stripebarrier" && !isNil {(_stripebarrier getVariable "item")}'];
[[_stripebarrier],"TON_fnc_stripebarrier",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.