_vehs = []; 
{ 
    _veh = vehicle _x; 
    _inArray = _veh in _vehs; 
    if (not _inArray and {_veh != _x}) then 
    { 
		if(isnil (_x getVariable "Admin_Veh")) then {
			_vehs set [count _vehs, _veh]; 
		};
    }; 
} forEach units group player; 
{
	deleteVehicle _x;
} foreach _vehs;