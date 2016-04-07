/*
	File: fn_gather.sqf
	Author: Bryan "Tonic" Boardwine
	modified by z0Kng
	
	Description:
	Main functionality for gathering.
*/
closeDialog 0;
private["_gather","_itemWeight","_diff","_itemName","_val","_resourceZones","_zone","_text","_noesckey","_noEscKey"];
_resourceZones = ["apple_1","apple_2","apple_3","apple_4","peaches_1","peaches_2","peaches_3","peaches_4","heroin_1","heroin_2","cocaine_1","weed_1","lead_1","iron_1","salt_1","sand_1","diamond_1","oil_1","oil_2","rock_1"];_zone = "";

//Find out what zone we're near
gather_var = true;
_noEscKey = (findDisplay 46) displayAddEventHandler ["KeyDown", "if ((_this select 1) == 1) then { true }"];
noesckey = (findDisplay 46) displayAddEventHandler ["KeyDown", "if ((_this select 1) == 1) then { gather_var = false }"]; 


titleText ["Press ESC To cancel gathering.","PLAIN",2]; // translate this into your language. In english "Press ESC to cancle gathering."
life_action_inUse = true;
while {gather_var} do {
{
	if(player distance (getMarkerPos _x) < 30) exitWith {_zone = _x;};
} foreach _resourceZones;

if(_zone == "") exitWith {
	hint localize "STR_NOTF_notNearResource";

	gather_var = false;
	life_action_inUse = false;
};

//Get the resource that will be gathered from the zone name...
 switch(true) do {
	case (_zone in ["apple_1","apple_2","apple_3","apple_4"]): {_gather = "apple"; _val = 3;};
	case (_zone in ["peaches_1","peaches_2","peaches_3","peaches_4"]): {_gather = "peach"; _val = 3;};
	case (_zone in ["heroin_1","heroin_2"]): {_gather = "heroinu"; _val = 1;};
	case (_zone in ["cocaine_1"]): {_gather = "cocaine"; _val = 1;};
	case (_zone in ["weed_1"]): {_gather = "cannabis"; _val = 1;};
	case (_zone in ["lead_1"] && life_inv_pickaxe > 0): {_gather = "copperore"; _val = 1;};
	case (_zone in ["iron_1"] && life_inv_pickaxe > 0): {_gather = "ironore"; _val = 1;};
	case (_zone in ["salt_1"] && life_inv_pickaxe > 0): {_gather = "salt"; _val = 1;};
	case (_zone in ["sand_1"] && life_inv_pickaxe > 0): {_gather = "sand"; _val = 1;};
	case (_zone in ["diamond_1"] && life_inv_pickaxe > 0): {_gather = "diamond"; _val = 1;};
	case (_zone in ["oil_1","oil_2"] && life_inv_pickaxe > 0): {_gather = "oilu"; _val = 1;};
	case (_zone in ["rock_1"] && life_inv_pickaxe > 0): {_gather = "rock"; _val = 1;};
	default {""};
};
//gather check??
if(vehicle player != player) exitWith { gather_var = false; hint localize "STR_NOTF_GatherVeh";};

_diff = [_gather,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull";  gather_var = false;};

for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,_gather,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_gather,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_NOTF_Gather_Success",_itemName,_diff],"PLAIN"];
};


// _display = findDisplay 8123;
};
life_action_inUse = false;
(findDisplay 46) displayRemoveEventHandler ["KeyDown", _noEscKey];
(findDisplay 46) displayRemoveEventHandler ["KeyDown",noesckey];