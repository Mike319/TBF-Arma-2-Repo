#include <macro.h>
/*
	COP UNIFORM SCRIPT
	Author: coldgas
	Quick Edit: Me
	Created for www.altisliferpg.com
*/
if (playerSide == west) then
{
    // Cadet & Pubslot (1)
	if ((__GETC__(life_coplevel) >= 1) && ((uniform player) == "U_Rangemaster")) then {
		player setObjectTextureGlobal [0, "textures\police_shirt.paa"];
	};

    // Duty/Patrol (2)
	if ((__GETC__(life_coplevel) >= 2) && ((uniform player) == "U_Rangemaster")) then {
		player setObjectTextureGlobal [0, "textures\police_shirt.paa"];
	};

    // NCO (3)
    if ((__GETC__(life_coplevel) >= 3) && ((uniform player) == "U_Rangemaster")) then {
		player setObjectTextureGlobal [0, "textures\police_shirt.paa"];
	};

    // LT
    if ((__GETC__(life_coplevel) >= 4) && ((uniform player) == "U_Rangemaster")) then {
		player setObjectTextureGlobal [0, "textures\police_shirt.paa"];
	};

    // CPT Swat
	if ((__GETC__(life_coplevel) >= 5) && ((uniform player) == "U_B_CTRG_1")) then {
		player setObjectTextureGlobal [0, "textures\police_spg_black.jpg"];
	};

    // SPG Multicam
    if ((__GETC__(life_coplevel) >= 6) && (__GETC__(life_coplevel) <= 7) && ((uniform player) == "U_B_CTRG_1")) then {
		player setObjectTextureGlobal [0, "textures\police_spg_black.jpg"];
	};

    // Pilot Uniform
	if (((uniform player) == "U_B_HeliPilotCoveralls")) then {
		player setObjectTextureGlobal [0, "textures\police_pilot.jpg"];
	};

	if ((backpack player) == "B_Carryall_mcamo") then {
		(unitbackpack player) setObjectTextureGlobal[0,"textures\PoliceBackPack.jpg"];
	};
};