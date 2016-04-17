/*
	File: fn_useMeth.sqf
*/

#include <macro.h>
 
closeDialog 0;
sleep 0.5;
drugs_used = true;
["You are feeling invincible!", false] spawn domsg;
life_crazy = life_crazy + 1000;
life_rip = 1;
sleep 1;
drugs_used = false;

if(life_crazy > 1000) then { life_crazy = 1; ["Remove",1] call fnc_doHealth; ["You had a drug overdose!", false] spawn domsg; };

player setAnimSpeedCoef 1.3;

while {!drugs_used} do {
	sleep 5;
	life_crazy = life_crazy - 5;

	_chance = round (random 100);
	if(_chance < 1) then {
		["You had a heart convulsion! This Meth is strong!", false] spawn domsg;
		[] spawn KK_fnc_forceRagdoll;
	};

	if(getAnimSpeedCoef player < 1.2) then { player setAnimSpeedCoef 1.2; };
	if(life_crazy == 30) then { ["Your high runs out in 30 seconds!", false] spawn domsg; };
	if(life_crazy == 0) exitwith { ["Your high has run out!", false] spawn domsg; };
};


player setAnimSpeedCoef 0.9;
