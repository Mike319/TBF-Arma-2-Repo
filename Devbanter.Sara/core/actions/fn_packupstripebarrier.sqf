/*
    File: fn_packupstripebarrier.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: OLLI aka Hauklotz

    Description:
    Packs up a stripebarrier.
*/
private["_stripebarrier"];
_stripebarrier = nearestObjects[getPos player,["Land_CncBarrier_stripes_F"],8] select 0;
if(isNil "_stripebarrier") exitWith {};

if(([true,"stripebarrier",1] call life_fnc_handleInv)) then
{
    titleText["You have removed the stripe barrier.","PLAIN"];
    player removeAction life_action_stripebarrierPickup;
    life_action_stripebarrierPickup = nil;
    deleteVehicle _stripebarrier;
};