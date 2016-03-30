/*
    File: fn_pfeilrechts.sqf
    Author: OLLI aka Hauklotz
    
    Description:
    Holt das Item aus dem Inventar und setzt es auf der Map.
*/
private["_position","_rightarrow"];
_rightarrow = "ArrowDesk_R_F" createVehicle [0,0,0];
_rightarrow attachTo[player,[0,2,0.5]];
_rightarrow setDir 0;
_rightarrow setVariable["item","rightarrowDeployed",true];

life_action_rightarrowDeploy = player addAction[localize "STR_ISTR_rightarrow_Place",{if(!isNull life_rightarrow) then {detach life_rightarrow; life_rightarrow = ObjNull;}; player removeAction life_action_rightarrowDeploy; life_action_rightarrowDeploy = nil;},"",999,false,false,"",'!isNull life_rightarrow'];
life_rightarrow = _rightarrow;
waitUntil {isNull life_rightarrow};
if(!isNil "life_action_rightarrowDeploy") then {player removeAction life_action_rightarrowDeploy;};
if(isNull _rightarrow) exitWith {life_rightarrow = ObjNull;};
_rightarrow setPos [(getPos _rightarrow select 0),(getPos _rightarrow select 1),0];
_rightarrow allowDamage false;

life_action_rightarrowPickup = player addAction[localize "STR_ISTR_rightarrow_Pack",life_fnc_packuprightarrow,"",0,false,false,"",
' _rightarrow = nearestObjects[getPos player,["ArrowDesk_L_F"],8] select 0; !isNil "_rightarrow" && !isNil {(_rightarrow getVariable "item")}'];
[[_rightarrow],"TON_fnc_rightarrow",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.