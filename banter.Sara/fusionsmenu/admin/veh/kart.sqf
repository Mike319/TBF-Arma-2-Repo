#include <macro.h>
_spawn = switch(_this) do{
	case(0):{"C_Kart_01_Blu_F"};
	case(1):{"C_Kart_01_Fuel_F"};
	case(2):{"C_Kart_01_Red_F"};
	case(3):{"C_Kart_01_Vrana_F"};
	default {"C_Kart_01_Blu_F"};
};
_posplr = [((getPos player) select 0) - 3, ((getPos player) select 1) + 3, 0];
_dirplr = getDir player;
_spwnveh = _spawn createVehicle (_posplr);
_spwnveh setVariable ["Sarge",1,true];
_spwnveh lock 0;
_spwnveh setVariable["Admin_Veh", true, true];
//laptop removeAction car1;
//laptop removeAction car2;
//laptop removeAction car3;
//laptop removeAction car4;
//laptop removeAction car5;
//laptop removeAction car6;