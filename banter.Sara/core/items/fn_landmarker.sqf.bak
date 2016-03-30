/*
    File: fn_landmarker.sqf
    Author: OLLI aka Hauklotz
    
    Description:
    Holt das Item aus dem Inventar und setzt es auf der Map.
*/
private["_position","_landmarker"];
_landmarker = "Land_LandMark_F" createVehicle [0,0,0];
_landmarker attachTo[player,[0,2,0.5]];
_landmarker setDir 90;
_landmarker setVariable["item","landmarkerDeployed",true];

life_action_landmarkerDeploy = player addAction[localize "STR_ISTR_Landmarker_Place",{if(!isNull life_landmarker) then {detach life_landmarker; life_landmarker = ObjNull;}; player removeAction life_action_landmarkerDeploy; life_action_landmarkerDeploy = nil;},"",999,false,false,"",'!isNull life_landmarker'];
life_landmarker = _landmarker;
waitUntil {isNull life_landmarker};
if(!isNil "life_action_landmarkerDeploy") then {player removeAction life_action_landmarkerDeploy;};
if(isNull _landmarker) exitWith {life_landmarker = ObjNull;};
_landmarker setPos [(getPos _landmarker select 0),(getPos _landmarker select 1),0];
_landmarker allowDamage false;

life_action_landmarkerPickup = player addAction[localize "STR_ISTR_Landmarker_Pack",life_fnc_packupLandmarker,"",0,false,false,"",
' _landmarker = nearestObjects[getPos player,["Land_LandMark_F"],8] select 0; !isNil "_landmarker" && !isNil {(_landmarker getVariable "item")}'];
[[_landmarker],"TON_fnc_landmarker",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.