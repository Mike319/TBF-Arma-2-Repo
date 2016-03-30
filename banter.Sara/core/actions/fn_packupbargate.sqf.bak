/*
    File: fn_packupbarrier.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: OLLI aka Hauklotz

    Description:
    Packs up a bargate.
*/
private["_bargate"];
_bargate = nearestObjects[getPos player,["Land_BarGate_F"],8] select 0;
if(isNil "_bargate") exitWith {};

if(([true,"bargate",1] call life_fnc_handleInv)) then
{
    titleText["You've removed the bargate.","PLAIN"];
    player removeAction life_action_bargatePickup;
    life_action_bargatePickup = nil;
    deleteVehicle _bargate;
};