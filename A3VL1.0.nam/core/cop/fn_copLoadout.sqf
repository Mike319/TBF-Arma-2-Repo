#include <macro.h>
/*
File: fn_copLoadout.sqf
Author: Bryan "Tonic" Boardwine
Edited: Itsyuka
 
Description:
Loads the cops out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};
 
if(FETCH_CONST(life_coplevel) == 1) then
{
player addUniform "UNS_ARMY_BDU_1stCav65pv1";
player addVest "UNS_M1956_A2";
player addMagazines ["30Rnd_556x45_Stanag_Tracer_Red", 5];
player addWeapon "RH_M16a1";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
};
 
if(FETCH_CONST(life_coplevel) == 2) then
{
player addUniform "UNS_ARMY_BDU_1stCav65pv1";
player addVest "UNS_M1956_A2";
player addMagazines ["20Rnd_SA_45ACP", 5];
player addWeapon "smg_SA_m1a1_F";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
};
 
[] call life_fnc_saveGear;