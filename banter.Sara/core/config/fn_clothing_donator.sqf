/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Edited by: [noLife]casp0or
	
	Description:
	Master configuration file for Donator Clothing Store.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Donator Clothing Store"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_C_Poloshirt_blue","Poloshirt Blue",200],
		["U_C_Poloshirt_burgundy","Poloshirt Burgundy",200],
		["U_C_Poloshirt_redwhite","Poloshirt Red/White",200],
		["U_C_Poloshirt_salmon","Poloshirt Salmon",200],
		["U_C_Poloshirt_stripped","Poloshirt stripped",200],
		["U_C_Poloshirt_tricolour","Poloshirt Tricolor",200],
		["U_C_Poor_2","Rag tagged clothes",200],
		["U_IG_Guerilla2_2","Green stripped shirt & Pants",500],
		["U_IG_Guerilla3_1","Brown Jacket & Pants",500],
		["U_IG_Guerilla2_3","The Outback Rangler",500],
		["U_C_HunterBody_grn","The Hunters Look",500],
		["U_C_WorkerCoveralls","Mechanic Coveralls",500],
		["U_OrestesBody","Surfing On Land",200],
		["U_B_GhillieSuit","Ghillie NATO",500],
		["U_O_GhillieSuit","Ghillie CSAT",500],
		["U_I_GhillieSuit","Ghillie AAF",500],
		["U_O_CombatUniform_ocamo","Fatigues (Hex) [CSAT]",500],
		["U_O_PilotCoveralls","Pilot Coveralls [CSAT]",500],
		["U_B_PilotCoveralls","Pilot Coveralls [NATO]",500],
		["U_I_pilotCoveralls","Pilot Coveralls [AAF]",500],
		["U_O_Wetsuit","Wetsuit [CSAT]",500],
		["U_I_Wetsuit","Wetsuit [AAF]",500],
		["U_B_Wetsuit","Wetsuit [NATO]",500],
		["U_C_Driver_1_black",nil,500],
		["U_C_Driver_1_blue",nil,500],
		["U_C_Driver_1_red",nil,500],
		["U_C_Driver_1_orange",nil,500],
		["U_C_Driver_1_green",nil,500],
		["U_C_Driver_1_white",nil,500],
		["U_C_Driver_1_yellow",nil,500],
		["U_C_Driver_2",nil,500],
		["U_C_Driver_1",nil,500],
		["U_C_Driver_3",nil,500],
		["U_C_Driver_4",nil,500]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_camo","Camo Bandanna",100],
			["H_Bandanna_surfer","Surfer Bandanna",100],
			["H_Bandanna_gry","Grey Bandanna",100],
			["H_Bandanna_cbr",nil,100],
			["H_RacingHelmet_1_orange_F",nil,100],
			["H_RacingHelmet_1_yellow_F",nil,100],
			["H_RacingHelmet_1_white_F",nil,100],
			["H_RacingHelmet_1_red_F",nil,100],
			["H_RacingHelmet_1_green_F",nil,100],
			["H_RacingHelmet_1_blue_F",nil,100],
			["H_RacingHelmet_1_black_F",nil,100],
			["H_RacingHelmet_4_F",nil,100],
			["H_RacingHelmet_3_F",nil,100],
			["H_RacingHelmet_2_F",nil,100],
			["H_Bandanna_khk","Khaki Bandanna",100],
			["H_Bandanna_sgg","Sage Bandanna",100],
			["H_StrawHat","Straw Fedora",100],
			["H_BandMask_blk","Hat & Bandanna",100],
			["H_Booniehat_tan",nil,100],
			["H_Hat_blue",nil,100],
			["H_Hat_brown",nil,100],
			["H_Hat_checker",nil,100],
			["H_Hat_grey",nil,100],
			["H_Hat_tan",nil,100],
			["H_Cap_blu",nil,100],
			["H_Cap_grn",nil,100],
			["H_Cap_grn_BI",nil,100],
			["H_Cap_oli",nil,100],
			["H_Cap_red",nil,100],
			["H_Cap_tan",nil,100]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,100],
			["G_Shades_Blue",nil,100],
			["G_Sport_Blackred",nil,100],
			["G_Sport_Checkered",nil,100],
			["G_Sport_Blackyellow",nil,100],
			["G_Sport_BlackWhite",nil,100],
			["G_Squares",nil,100],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,100],
			["G_Lady_Dark",nil,100],
			["G_Lady_Blue",nil,100],
			["G_Lowprofile",nil,100],
			["G_Combat",nil,100]
		];
	};
	
	//Vest
	case 3:
	{
		[
		    ["V_RebreatherB",nil,500],
			["V_RebreatherIR",nil,500],
			["V_RebreatherIA",nil,500],
			["V_PlateCarrier1_rgr",nil,500],
			["V_PlateCarrier1_blk",nil,500],
			["V_PlateCarrier3_rgr",nil,500],
			["V_PlateCarrierGL_rgr",nil,500],
			["V_PlateCarrierIA1_dgtl",nil,500],
			["V_PlateCarrierIA2_dgtl",nil,500],
			["V_BandollierB_cbr",nil,500],
			["V_BandollierB_rgr",nil,500],
			["V_BandollierB_oli",nil,500],
			["V_Chestrig_rgr",nil,500],
			["V_Chestrig_oli",nil,500],
			["V_Chestrig_khk",nil,500],
			["V_TacVest_khk",nil,500],
			["V_TacVest_oli",nil,500],
			["V_TacVest_camo",nil,500],
			["V_HarnessOSpec_brn",nil,500],
			["V_HarnessO_gry",nil,500],
			["V_HarnessO_brn",nil,500]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,500],
			["B_Kitbag_mcamo",nil,500],
			["B_TacticalPack_oli",nil,500],
			["B_FieldPack_ocamo",nil,500],
			["B_Bergen_sgg",nil,500],
			["B_Kitbag_cbr",nil,500],
			["B_Carryall_oli",nil,500],
			["B_Carryall_khk",nil,500]
		];
	};
};