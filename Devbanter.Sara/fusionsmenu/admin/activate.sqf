
#include <macro.h>
diag_log "Admin Menu Activation";
waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in ["76561198039773575","76561198150810088","76561198033878017","76561198042843082","76561198018724012","76561198120753139"]) then {
	act = player addaction [("<t color=""#FFFFFF"">" + ("Admin Menu") +"</t>"),"fusionsmenu\admin\tools.sqf","",5,false,true,"",""];
};


****************************************************