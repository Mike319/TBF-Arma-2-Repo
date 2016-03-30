/*
    File: fn_packuprightarrow.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: OLLI aka Hauklotz

    Description:
    Packs up a right arrow.
*/
private["_rightarrow"];
_rightarrow = nearestObjects[getPos player,["ArrowDesk_R_F"],8] select 0;
if(isNil "_rightarrow") exitWith {};

if(([true,"rightarrow",1] call life_fnc_handleInv)) then
{
    titleText["You removed the right arrow.","PLAIN"];
    player removeAction life_action_rightarrowPickup;
    life_action_rightarrowPickup = nil;
    deleteVehicle _rightarrow;
};