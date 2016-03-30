/*
    File: fn_packupleftarrow.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: OLLI aka Hauklotz

    Description:
    Packs up left arrow.
*/
private["_leftarrow"];
_leftarrow = nearestObjects[getPos player,["ArrowDesk_L_F"],8] select 0;
if(isNil "_leftarrow") exitWith {};

if(([true,"leftarrow",1] call life_fnc_handleInv)) then
{
    titleText["You have removed the left arrow.","PLAIN"];
    player removeAction life_action_leftarrowPickup;
    life_action_leftarrowPickup = nil;
    deleteVehicle _leftarrow;
};