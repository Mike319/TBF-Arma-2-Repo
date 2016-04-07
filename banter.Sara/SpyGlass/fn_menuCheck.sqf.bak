#define GVAR_UINS uiNamespace getVariable
#define steamid getPlayerUID player
#define SPYGLASS_END \
    vehicle player setVelocity[1e10,1e14,1e18]; \
    sleep 3; \
    preProcessFile "SpyGlass\endoftheline.sqf"; \
    sleep 2.5; \
    failMission "SpyGlass";
    
/*
    Author: Bryan "Tonic" Boardwine
    
    Description:
    Checks for known cheat menus and closes them then reports them to the server.
*/
private["_displays","_detection","_display","_timeStamp"];
disableSerialization;

_displays = getArray(missionConfigFile >> "SpyConfig" >> "bannedDisplays");

_detection = false;
_timeStamp = time;
while {true} do {
    {
        _targetDisplay = _x select 0;
        _targetName = _x select 1;
        switch(typeName _targetDisplay) do {
            case (typeName ""): {if(!isNull (GVAR_UINS [_targetDisplay,displayNull])) exitWith {_detection = true;};};
            default {if(!isNull (findDisplay _targetDisplay)) exitWith {_detection = true;};};
        };
            
        if(_detection) exitWith {
            SPY_cookieJar    = [profileName,steamid,format["MenuBasedHack_%1",_targetName]]; publicVariableServer "SPY_cookieJar";
            SPY_NotifyAdmins = [profileName,format["Menu Hack: %1",_targetName]]; publicVariable "SPY_NotifyAdmins";
            sleep 0.5;
            SPYGLASS_END
        };
    } forEach _displays;
        
    if(_detection) exitWith {};

    /* A very old menu that can cause false-positives so we close it */
    if(!isNull (findDisplay 129)) then {
        closeDialog 0;
    };
    
    /* Check to see if RscDisplayInventory has more controls then it should */
    _display = findDisplay 602;
    if(!isNull _display && {count (allControls _display) > 85}) then {
        _count = count allControls _display;
		SPY_cookieJar    = [profileName,steamid,format["MenuBasedHack_RscDisplayInventory_Controls_%1",_count]]; publicVariableServer "SPY_cookieJar";
        SPY_NotifyAdmins = [profileName,format["Menu Hack: RscDisplayInventory number of controls do not match (Count %1)",_count]]; publicVariable "SPY_NotifyAdmins";
        closeDialog 0;
        SPYGLASS_END
    };
        
    if(!isNull (findDisplay 148)) then {
        sleep 0.5;
        if((lbSize 104)-1 > 3) exitWith {
			SPY_cookieJar    = [profileName,steamid,"MenuBasedHack_RscDisplayConfigureControllers"]; publicVariableServer "SPY_cookieJar";
			SPY_NotifyAdmins = [profileName,"Menu Hack: RscDisplayConfigureControllers (JME 313)"]; publicVariable "SPY_NotifyAdmins";
            closeDialog 0;
            SPYGLASS_END
        };
    };
    
    _display = findDisplay 54;
    if(!isNull _display) then {
        {
            if (_x && !isNull _display) exitWith {
				SPY_cookieJar    = [profileName,steamid,"MenuBasedHack_RscDisplayInsertMarker"]; publicVariableServer "SPY_cookieJar";
				SPY_NotifyAdmins = [profileName,steamid,"Menu Hack: RscDisplayInsertMarker"]; publicVariable "SPY_NotifyAdmins";
                closeDialog 0;
                SPYGLASS_END
            };
        } forEach [
            (toLower ctrlText (_display displayCtrl 1001) != toLower localize "STR_A3_RscDisplayInsertMarker_Title"),
            {if (buttonAction (_display displayCtrl _x) != "") exitWith {true}; false} forEach [1,2]
        ];
    };
        
    _display = findDisplay 131;
    if(!isNull _display) then {
        //These shouldn't be here...
        (_display displayCtrl 102) ctrlRemoveAllEventHandlers "LBDblClick";
        (_display displayCtrl 102) ctrlRemoveAllEventHandlers "LBSelChanged";
        
        {
            if (_x && !isNull _display) exitWith {
				SPY_cookieJar    = [profileName,steamid,"MenuBasedHack_RscDisplayConfigureAction"]; publicVariableServer "SPY_cookieJar";
				SPY_NotifyAdmins = [profileName,"Menu Hack: RscDisplayConfigureAction"]; publicVariable "SPY_NotifyAdmins";
                closeDialog 0;
                SPYGLASS_END
            };
        } forEach [
            (toLower ctrlText (_display displayCtrl 1000) != toLower localize "STR_A3_RscDisplayConfigureAction_Title"),
            {if (buttonAction (_display displayCtrl _x) != "") exitWith {true}; false} forEach [1,104,105,106,107,108,109]
        ];
    };
        
    _display = findDisplay 163;
    if(!isNull _display) then {
        (_display displayCtrl 101) ctrlRemoveAllEventHandlers "LBDblClick";
        (_display displayCtrl 101) ctrlRemoveAllEventHandlers "LBSelChanged";
        
        {
            if (_x && !isNull _display) exitWith {
				SPY_cookieJar    = [profileName,steamid,"MenuBasedHack_RscDisplayControlSchemes"]; publicVariableServer "SPY_cookieJar";
				SPY_NotifyAdmins = [profileName,"Menu Hack: RscDisplayControlSchemes"]; publicVariable "SPY_NotifyAdmins";
                closeDialog 0;
                SPYGLASS_END
            };
        } forEach [
            (toLower ctrlText (_display displayCtrl 1000) != toLower localize "STR_DISP_OPTIONS_SCHEME"),
            {if (buttonAction (_display displayCtrl _x) != "") exitWith {true}; false} forEach [1,2]
        ];
    };
    
    /*
        Display Validator
        Loops through and makes sure none of the displays were modified..
        
        Checks every 5 minutes.
    */
    if((time - _timeStamp) > 300) then {
        _timeStamp = time;
        {
            _onLoad = getText(configFile >> (_x select 0) >> "onLoad");
            _onUnload = getText(configFile >> (_x select 0) >> "onUnload");
            if(_onLoad != (_x select 1) OR _onUnload != (_x select 2)) exitWith {
                SPY_cookieJar = [profileName,getPlayerUID player,format["Modified_Method_%1",_x select 0]]; publicVariableServer "SPY_cookieJar";
                SPY_NotifyAdmins = [profileName,format["Modified Display Method %1 (Memory Edit)",_x select 0]]; publicVariable "SPY_NotifyAdmins";
                sleep 0.5;
                SPYGLASS_END
            };
        } forEach getArray(missionConfigFile >> "SpyConfig" >> "rscDisplayList");
    };
    uiSleep 2;
};