/*
    File: fn_packuplandmarker.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: OLLI aka Hauklotz

    Description:
    Packs up a deployed wall.
*/
private["_landmarker"];
_landmarker = nearestObjects[getPos player,["Land_LandMark_F"],8] select 0;
if(isNil "_landmarker") exitWith {};

if(([true,"landmarker",1] call life_fnc_handleInv)) then
{
    titleText["You've removed the land marker.","PLAIN"];
    player removeAction life_action_landmarkerPickup;
    life_action_landmarkerPickup = nil;
    deleteVehicle _landmarker;
};