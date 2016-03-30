/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_O_CombatUniform_ocamo",nil,5000],
			["U_BG_Guerrilla_6_1",nil,5000],
			["U_BG_Guerilla1_1",nil,5000],
			["U_BG_Guerilla1_1",nil,5000],
			["TRYK_U_B_ARO1_GR_R_CombatUniform",nil,5000],
			["TRYK_U_B_ARO1_GRY_CombatUniform",nil,5000],
			["TRYK_U_B_3CD_Delta_BDU",nil,5000],
			["TRYK_U_B_OD_OD_CombatUniform",nil,5000],
			["TRYK_U_B_Snow_CombatUniform",nil,5000],
			["TRYK_U_B_TANOCP_CombatUniform",nil,5000],
			["TRYK_U_B_Woodland",nil,5000],
			["TRYK_U_B_WDL_GRY_R_CombatUniform",nil,5000],
			["IRA_Soldier_Outfit_9",nil,5000],
			["TRYK_B_TRYK_UCP_T",nil,7500],
			["ISIS_Uniform",nil,7500],
			["TRYK_T_camo_desert_marpat_BG",nil,11500],
			["TRYK_U_B_ARO2_CombatUniform",nil,17500],
			["TRYK_U_B_ARO1_CBR_CombatUniform",nil,15610],
			["TRYK_U_B_JSDF_CombatUniform","Guerilla Leader",15340],
			["UVF_Soldier_Outfit_1",nil,15610],
			["UVF_Soldier_Outfit_2",nil,15610],
			["IRA_Soldier_Outfit_11",nil,15610],
			["IRA_Soldier_Outfit_4",nil,15610],
			["IRA_Soldier_Outfit_3",nil,15610],
			["IRA_Soldier_Outfit_2",nil,15610],
			["IRA_Soldier_Outfit_1",nil,15610],
			["UVF_Soldier_Outfit_3",nil,15610],
			["IRA_Soldier_Outfit_6",nil,15610],
			["UVF_Soldier_Outfit_8",nil,15610],
			["IRA_Soldier_Outfit_8",nil,15610],
			["UVF_Soldier_Outfit_9",nil,15610],
			["UVF_Soldier_Outfit_6",nil,15610],
			["UVF_Soldier_Outfit_5",nil,15610],
			["IRA_Soldier_Outfit_10",nil,15610],
			["UVF_Soldier_Outfit_7",nil,15610],
			["U_B_FullGhillie_ard",nil,100000],
			["U_B_FullGhillie_sard",nil,100000],
			["U_I_FullGhillie_lsh",nil,100000],
			["U_B_CombatUniform_mcam_vest",nil,12500],
			["U_I_CombatUniform",nil,15340]
		];
	};

	//Hats
	case 1:
	{
		[
			["H_ShemagOpen_tan",nil,850],
			["H_Booniehat_dgtl",nil,500],
			["H_Watchcap_blk",nil,500],
			["ISIS_Shemag",nil,500],
			["H_Booniehat_dirty",nil,400],
			["H_Shemag_olive",nil,850],
			["H_ShemagOpen_khk",nil,800],
			["H_HelmetO_ocamo",nil,2500],
			["H_MilCap_oucamo",nil,1200],
			["Bravo93_BoonieHat_DPM",nil,5200],
			["TRYK_H_pakol",nil,200],
			["H_PilotHelmetFighter_O",nil,5200],
			["H_Beret_blk",nil,5200],
			["H_Bandanna_camo",nil,650]
		];
	};

	//Glasses
	case 2:
	{
		[
			["SAS_shemagh_OD",nil,25],
			["Bravo93_IRA_Balaclava_Brown",nil,25],
			["Bravo93_IRA_Balaclava_Green",nil,25],
			["Bravo93_UVF_Balaclava_Navy",nil,25],
			["Mask_M40_OD",nil,25000],
			["T_HoodMW",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["TRYK_US_ESS_Glasses",nil,30],
			["TRYK_US_ESS_Glasses_TAN",nil,30],
			["TRYK_US_ESS_Glasses_TAN_BLK",nil,30],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};

	//Vest
	case 3:
	{
		[
			["V_TacVest_khk",nil,12500],
			["V_TacVest_blk",nil,12500],
			["V_TacVest_brn",nil,12500],
			["V_TacVest_camo",nil,12500],
			["V_TacVest_oli",nil,12500],
			["V_I_G_resistanceLeader_F",nil,12500],
			["TAC_EI_RRV24L_OD",nil,17500],
			["TAC_EI_RRVCQB_Khaki",nil,17500],
			["TAC_EI_RRV28_Khaki",nil,17500],
			["TAC_EI_RRV28_OD",nil,17500],
			["TAC_EI_RRV211_OD",nil,17500],
			["TAC_EI_RRV211_Khaki",nil,17500],
			["TAC_FS_FO_mL_K",nil,17500],
			["V_TacVest_khk",nil,12500],
			["V_BandollierB_cbr",nil,4500],
			["V_HarnessO_brn",nil,7500]
		];
	};

	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000]
		];
	};
};