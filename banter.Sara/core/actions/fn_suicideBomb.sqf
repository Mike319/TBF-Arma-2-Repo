/ *
Explosive Jacket Roleplay + timer + AntiSpam
        Created By: TAW_Tonic
        Edited By: Sebastien Meltzer and CanadienFr
        Tested and Approved by: Capt. Fitzsimmons and 617th PMC
* / 
If ( vest player =!  "A3L_SuicideVest" ) exitWith {};

if  ( life_bombesuicide ==  0 )  then  { 
life_bombesuicide =  1 ; 
[[ player ,  "countdown" , 75 ], "life_fnc_playSound" , true , false ] spawn life_fnc_MP ; 
[[ 0 , size [ "A suicide bomber will explode in 20 seconds" ]], "life_fnc_broadcast" , true , false ] spawn life_fnc_MP ; 
sleep 5 ; 
[[ 0 , size [ "A suicide bomber will explode in 15 seconds" ] ] "life_fnc_broadcast" , true , false ] spawn life_fnc_MP ;  
sleep 5 ; 
[[ 0 , size [ "A suicide bomber will explode in 10 seconds" ]], "life_fnc_broadcast" , true , false ] spawn life_fnc_MP ; 
sleep 5 ; 
[[ 0 , size [ "A suicide bomber will explode in 5 seconds" ]], "life_fnc_broadcast" , true , false ] spawn life_fnc_MP ;  
sleep 5 ;

[[ 0 , size [ "% 1 detonated his explosive vest !!!" , name player ]], "life_fnc_broadcast" , true , false ] spawn life_fnc_MP ; 

removeVest player ; 
'Bomb_03_F' createVehicleLocal   [ getPos player select  0 , getPos player select  1 ,  ( getPos player select  2 )  + 1 ]; 
life_bombesuicide =  0 ; 
if ( alive player )  Then  { player setDamage 1 ;};};