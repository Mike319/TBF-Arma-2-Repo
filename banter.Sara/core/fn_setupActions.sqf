/*
	File: fn_setupActions.sqf

	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction["Rob Person",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget in ["Incapacitated","amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"] && !(cursorTarget getVariable["robbed",FALSE]) ']];
		// Suicide Bomb 
		life_actions = life_actions +  [ player addAction [ "Active explosive vest" , life_fnc_suicideBomb , "" , 0 , false , false , '' , 
		'vest player == "A3L_SuicideVest" && && player alive playerSide civilian == &&! life_istazed && (player getVariable "restrained") && (player getVariable "escort") && (player getVariable "Transporting") '!!! ]];	
		//ziptie
		life_actions = life_actions + [player addAction["Tie person",life_fnc_tieingAction,cursorTarget,9999999,false,false,"",' 		!isNull cursorTarget && !(player getVariable "tied") && !(player getVariable "restrained") && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && !(cursorTarget getVariable "tied") && speed cursorTarget < 1 ']];
	};
	case west:
	{
		//copitems aufheben
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Cancel stripe barrier</t>",life_fnc_packupstripebarrier,"",0,false,false,"",' _stripebarrier = nearestObjects[getPos player,["Land_CncBarrier_stripes_F"],8] select 0; !isNil "_stripebarrier" && !isNil {(_stripebarrier getVariable "item")}']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Cancel cone</t>",life_fnc_packupcone,"",0,false,false,"",' _cone = nearestObjects[getPos player,["RoadCone_L_F"],8] select 0; !isNil "_cone" && !isNil {(_cone getVariable "item")}']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Cancel small road barrier</t>",life_fnc_packuproadbarriersmall,"",0,false,false,"",' _roadbarriersmall = nearestObjects[getPos player,["RoadBarrier_small_F"],8] select 0; !isNil "_roadbarriersmall" && !isNil {(_roadbarriersmall getVariable "item")}']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Cancel road barrier</t>",life_fnc_packuproadbarrierlarge,"",0,false,false,"",' _roadbarrierlarge = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0; !isNil "_roadbarrierlarge" && !isNil {(_roadbarrierlarge getVariable "item")}']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Cancel bargate</t>",life_fnc_packupbargate,"",0,false,false,"",' _bargate = nearestObjects[getPos player,["Land_BarGate_F"],8] select 0; !isNil "_bargate" && !isNil {(_bargate getVariable "item")}']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Cancel sign</t>",life_fnc_packuplandmarker,"",0,false,false,"",' _landmarker = nearestObjects[getPos player,["Land_LandMark_F"],8] select 0; !isNil "_landmarker" && !isNil {(_landmarker getVariable "item")}']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Cancel right arrow</t>",life_fnc_packuprightarrow,"",0,false,false,"",' _rightarrow = nearestObjects[getPos player,["ArrowDesk_R_F"],8] select 0; !isNil "_rightarrow" && !isNil {(_rightarrow getVariable "item")}']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Cancel left arrow</t>",life_fnc_packupleftarrow,"",0,false,false,"",' _leftarrow = nearestObjects[getPos player,["ArrowDesk_L_F"],8] select 0; !isNil "_leftarrow" && !isNil {(_leftarrow getVariable "item")}']];
		life_actions = life_actions + [player addAction["confiscate weapon",life_fnc_seizePlayerWeapon,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && (cursorTarget getVariable "restrained")']];    //...};
		life_actions pushBack (player addAction["Seize Items",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'(count(nearestObjects [player,["weaponholder"],3])>0)']);
	};

	// Head Set for Chopper
	life_actions = life_actions + [player addAction["<t color='#00FF00'>Headset Toggle</t>",life_fnc_headSetController,"",99,false,false,"", ' (vehicle player) != player && !isNull (vehicle player) && (vehicle player) isKindOf "Air" ']];// Remove EarPlugs	life_actions = life_actions + [player addAction["<t color='#FF0000'>Pull Out Earplugs</t>",life_fnc_headSetController,"",99,false,false,"", ' (life_headSet) && life_inv_earPlugs == 0 && !((vehicle player) isKindOf "Air") ']];
};
