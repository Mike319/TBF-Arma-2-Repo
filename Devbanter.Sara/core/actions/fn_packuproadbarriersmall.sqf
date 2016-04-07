/*
    File: fn_packuproadbarriersmall.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: OLLI aka Hauklotz

    Description:
    Packs up a deployed road barrier small.
*/
private["_roadbarriersmall"];
_roadbarriersmall = nearestObjects[getPos player,["RoadBarrier_small_F"],8] select 0;
if(isNil "_roadbarriersmall") exitWith {};

if(([true,"roadbarriersmall",1] call life_fnc_handleInv)) then
{
    titleText["You have removed the road barrier small.","PLAIN"];
    player removeAction life_action_roadbarriersmallPickup;
    life_action_roadbarriersmallPickup = nil;
    deleteVehicle _roadbarriersmall;
};