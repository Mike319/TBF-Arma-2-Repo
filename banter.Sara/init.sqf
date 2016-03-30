enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.8";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "scripts\safezone.sqf";
[] execVM "scripts\intro.sqf";;
[] execVM "nosidechat.sqf";
[] execVM "scripts\ScarCode\sRestartWarnings.sqf";
[] execVM "Server Messages\message.sqf";
[] execVM "scripts\fn_statusBar.sqf";
[] execVM "repetitive_cleanup.sqf";;
[] execVM "scripts\teargas.sqf" 

player addEventHandler ["InventoryOpened",
{
   _result = false;
   _container = _this select 1;                          	 // get the second argument, which is the object you're opening
   _isBackpack = _container isKindOf "Bag_Base";		 	 // check if you're opening someone else's backpack
	if(_isBackpack) then {								 	 // if you are opening a backpack (maybe add a check to allow someone in your group/gang to do it)
		hint "No stealing allowed!";					 	 // chastise them for stealing. Add a bounty maybe.
		_result = false;									 	 // set the return value to not show the inventory
	} else {												 // if it's not a backpack:
	   _lk = locked _container;                              // check if the object is locked (for vehicles)
	   _lk_var = _container getVariable ["isLocked", false]; // check if the object has a variable set to define it as locked (for crates, since they don't return their locked value properly)
	   if(_lk > 1 || _lk_var) then {                         // if it's locked with either method then do this code block to prevent it from being accessed
	      hint "Object Locked";                              // explain why the inventory can't be accessed
	      _result = true;                                    // set the return value to true to override the default event handler (and therefore don't open the inventory window)
	   };
	};
   _result													 // return true if you want to hide the inventory, false if you want to show it.
}
];

StartProgress = true;

_seconds = 21600;
diag_log "Set Sunny Weather";
_seconds setOvercast 0;
diag_log "Set Fog Minimal";
_seconds setFog 0;
diag_log "Set Rain";
_seconds setRain 0;
diag_log "Set New Weather Changes to 240min/4Hours";
_seconds = nextWeatherChange




