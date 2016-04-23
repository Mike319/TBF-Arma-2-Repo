/ *
	ALAH Snack!
        Created By: TAW_Tonic
        Edited By: Sebastien Meltzer
        Tested and Approved by: Capt. Fitzsimmons and 617th PMC
* / 
Private [ "_test" ]; 
if ( vest player =!  "V_HarnessOGL_gry" ) exitWith {}; 
[[ 0 , size [ "A Kamikaze will explode" ]], "life_fnc_broadcast" , true , false ] spawn life_fnc_MP ;  / / warning shown in the cat 
sleep 1 ;  
[[ 0 , size [ "% 1 This blew !!" , name player ]], "life_fnc_broadcast" , true , false ] spawn life_fnc_MP ;  // Reveals the player who enable chat

_test =  "Bo_Mk82" createVehicle [ 0 , 0 , 9999 ]; 
_test setPos ( getPos player ) 
_test setVelocity [ 100 , 0 , 0 ];

if ( alive player )  Then  { player setDamage 1 ;};