/*
	File: fn_texturehandler.sqf
	Author: Cobra
	
	Description:
	Handles all of the textures for civs
*/
#include <macro.h>

if(playerSide == west) then 
{
	switch (uniform player) do {
		case "U_B_CTRG_1": {
			player setObjectTextureGlobal[0,"textures\swat.jpg"];
		};
		case "": {
			player setObjectTextureGlobal[0,"textures\clothing\cowshirt.jpg"];
		};
		case "": {
			player setObjectTextureGlobal[0,"textures\clothing\putin.jpg"];
		};
		case "": {
			player setObjectTextureGlobal[0,"textures\clothing\llama.jpg"];
		};
		case "": {
			player setObjectTextureGlobal[0,"textures\clothing\withstupid.paa"];
		};
		case "": {
			player setObjectTextureGlobal[0,"textures\clothing\moose.jpg"];
		};
	};
};
