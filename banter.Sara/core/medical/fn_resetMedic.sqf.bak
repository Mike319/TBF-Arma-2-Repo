#include <macro.h>
/*
	Author: TheTotenkopf
	
	Description: Deletes all respawn and sets all things new
*/

// Sets the Medic back to respawn
removeUniform player;
removeHeadgear player;
removeBackpack player;
removeAllItems player;
removeVest player;
removeAllWeapons player;
removeAllAssignedItems player;
{player removeMagazine _x;} foreach (magazines player);
RemoveGoggles player;

//Medic Gear + Setup
if((__GETC__(life_medicLevel)) == 1) exitWith {
	player forceAddUniform "U_Rangemaster";
	player setObjectTextureGlobal [0,"textures\medic1_uniform.jpg"];
	player addHeadgear "H_Cap_blk";
	player addBackpackGlobal "B_FieldPack_blk";
	hint "GET BACK TO WORK!!!";
	[] call life_fnc_medicLoadout;
};


if((__GETC__(life_medicLevel)) == 2) exitWith {
	player forceAddUniform "U_C_WorkerCoveralls";
	player setObjectTextureGlobal [0,"textures\medic2_uniform.jpg"];
	player addHeadgear "H_Cap_marshal";
	player addBackpackGlobal "B_Kitbag_cbr";
	hint "GET BACK TO WORK!!!";
	[] call life_fnc_medicLoadout;
};

if((__GETC__(life_medicLevel)) == 3) exitWith {
	player forceAddUniform "U_C_Scientist";
	player setObjectTextureGlobal [0,"textures\medic3_uniform.jpg"];
	player addHeadgear "H_Beret_Colonel";
	player addBackpackGlobal "B_Carryall_mcamo";
	hint "GET BACK TO WORK!!!";
	[] call life_fnc_medicLoadout;
};