/*
    GrenadeStop v0.8 for ArmA 3 Alpha by Bake (tweaked slightly by Rarek)
    
    DESCRIPTION:
    Stops players from throwing grenades in safety zones.
    
    CONFIGURATION:
    Edit the #defines below.
*/

#define SAFETY_ZONES    [["Safe_Kav", 100],["safe_pyrg", 100],["safe_peach", 200],["safe_ath", 50],["safezone_reb1", 100],["safe_don", 300],["safezone_reb2", 75]] // Syntax: [["marker1", radius1], ["marker2", radius2], ...]
#define MESSAGE "THIS IS A SAFE ZONE, DO NOT KILL PLAYERS HERE"

     if (isDedicated) exitWith {};
     waitUntil {!isNull player};

switch (playerSide) do
{
	case west:
	{};
	
	case civilian:
	{


     player addEventHandler ["Fired", {
            if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then
            {
             deleteVehicle (_this select 6);
             titleText [MESSAGE, "PLAIN", 3];
             };
        }];  
	};
};