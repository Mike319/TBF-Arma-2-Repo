/*
    File: fn_packupholzgross.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: OLLI aka Hauklotz

    Description:
    Packs up a deployed wall.
*/
private["_roadbarrierlarge"];
_roadbarrierlarge = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0;
if(isNil "_roadbarrierlarge") exitWith {};

if(([true,"roadbarrierlarge",1] call life_fnc_handleInv)) then
{
    titleText["You removed the road barrier.","PLAIN"];
    player removeAction life_action_roadbarrierlargePickup;
    life_action_roadbarrierlargePickup = nil;
    deleteVehicle _roadbarrierlarge;
};