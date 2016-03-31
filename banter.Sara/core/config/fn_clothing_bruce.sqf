/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_C_Poloshirt_blue","Poloshirt Blue",250],
		["U_C_Poloshirt_burgundy","Poloshirt Burgundy",275],
		["U_C_Poloshirt_redwhite","Poloshirt Red/White",150],
		["U_C_Poloshirt_salmon","Poloshirt Salmon",175],
		["U_C_Poloshirt_stripped","Poloshirt stripped",125],
		["U_C_Poloshirt_tricolour","Poloshirt Tricolor",350],
		["U_C_Poor_2","Rag tagged clothes",250],
		["U_C_Driver_1_black",nil,1500],
		["U_C_Driver_1_blue",nil,1500],
		["U_C_Driver_1_red",nil,1500],
		["U_C_Driver_1_orange",nil,1500],
		["U_C_Driver_1_green",nil,1500],
		["U_C_Driver_1_white",nil,1500],
		["U_C_Driver_1_yellow",nil,1500],
		["U_C_Driver_2",nil,1500],
		["U_C_Driver_1",nil,1500],
		["U_C_Driver_3",nil,1500],
		["I_FEM_AAF_long",nil,1500],
		["O_FEM_CSAT_Long",nil,1500],
		["B_FEM_NATO_long",nil,1500],
		["TRYK_U_B_AOR2_BLK_CombatUniform",nil,1500],
		["TRYK_U_B_PCUHsW3nh",nil,3700],
		["TRYK_U_B_PCUHsW3",nil,3700],
		["TRYK_U_B_BLKTAN_CombatUniform",nil,3700],
		["TRYK_U_B_BLKTANR_CombatUniformTshirt",nil,3700],
		["TRYK_U_B_BLTAN_T",nil,3700],
		["TRYK_U_B_C02_Tsirt",nil,3700],
		["TRYK_U_B_BLK3CD",nil,3700],
		["TRYK_U_B_BLKTAN",nil,3700],
		["TRYK_U_B_BLKTAN_Tshirt",nil,3700],
		["TRYK_U_B_BLK_OD",nil,4700],
		["TRYK_U_B_OD_BLK_2",nil,4700],
		["TRYK_U_B_OD_BLK",nil,4700],
		["TRYK_U_B_ODTAN",nil,4700],
		["TRYK_U_B_fleece",nil,4700],
		["TRYK_U_B_fleece_UCP",nil,4700],
		["TRYK_U_B_GRTAN_CombatUniform",nil,4700],
		["TRYK_OVERALL_SAGE_BLKboots_nk_blk2",nil,4700],
		["TRYK_OVERALL_nok_flesh",nil,4700],
		["TRYK_U_B_MTP_BLK_CombatUniform",nil,4700],
		["TRYK_U_Bts_PCUGs",nil,4700],
		["TRYK_U_Bts_PCUs",nil,4700],
		["TRYK_U_Bts_GRYGRY_PCUs",nil,4700],
		["TRYK_U_Bts_PCUODs",nil,4700],
		["TRYK_U_B_PCUHs",nil,4700],
		["TRYK_U_B_PCUGHs",nil,4700],
		["TRYK_U_B_PCUODHs",nil,4700],
		["TRYK_U_B_PCUGs_BLK",nil,4700],
		["TRYK_U_B_PCUGs_gry",nil,4700],
		["TRYK_U_B_PCUGs_OD",nil,4700],
		["TRYK_U_B_AOR2_Rollup_CombatUniform",nil,4700],
		["TRYK_U_B_BLK_OD_Rollup_CombatUniform",nil,4700],
		["TRYK_shirts_DENIM_BK",nil,4700],
		["TRYK_shirts_DENIM_BL",nil,4700],
		["TRYK_shirts_DENIM_BWH",nil,4700],
		["TRYK_shirts_DENIM_R",nil,4700],
		["TRYK_shirts_DENIM_RED2",nil,4700],
		["TRYK_shirts_DENIM_WH",nil,4700],
		["TRYK_shirts_DENIM_WHB",nil,4700],
		["TRYK_U_denim_hood_3c",nil,4700],
		["TRYK_U_denim_hood_blk",nil,4700],
		["TRYK_U_denim_hood_mc",nil,4700],
		["TRYK_U_denim_hood_nc",nil,4700],
		["TRYK_U_denim_jersey_blk",nil,4700],
		["TRYK_U_denim_jersey_blu",nil,4700],
		["TRYK_SUITS_BLK_F",nil,4700],
		["TRYK_SUITS_BR_F",nil,4700],
		["U_C_Driver_4",nil,4700],
		["U_IG_Guerilla2_2","Green stripped shirt & Pants",650],
		["U_IG_Guerilla3_1","Brown Jacket & Pants",735],
		["U_IG_Guerilla2_3","The Outback Rangler",1000],
		["U_C_HunterBody_grn","The Hunters Look",1500],
		["U_C_WorkerCoveralls","Mechanic Coveralls",2500],
		["U_OrestesBody","Surfing On Land",1100],
		["U_NikosAgedBody","Business",2500]
		];
	};

	//Hats
	case 1:
	{
		[
			["H_Bandanna_camo","Camo Bandanna",120],
			["H_Bandanna_gry","Grey Bandanna",150],
			["H_Bandanna_cbr",nil,165],
			["TRYK_H_headsetcap_Glasses",nil,165],
			["TRYK_H_headsetcap_blk_Glasses",nil,165],
			["TRYK_H_headsetcap_od_Glasses",nil,165],
			["TRYK_R_CAP_BLK",nil,165],
			["TRYK_R_CAP_TAN",nil,165],
			["TRYK_R_CAP_OD_US",nil,165],
			["H_RacingHelmet_1_orange_F",nil,120],
			["H_RacingHelmet_1_yellow_F",nil,130],
			["H_RacingHelmet_1_white_F",nil,150],
			["H_RacingHelmet_1_red_F",nil,165],
			["H_RacingHelmet_1_green_F",nil,135],
			["H_RacingHelmet_1_blue_F",nil,120],
			["H_RacingHelmet_1_black_F",nil,130],
			["H_RacingHelmet_4_F",nil,150],
			["H_RacingHelmet_3_F",nil,165],
			["H_RacingHelmet_2_F",nil,135],
			["H_Bandanna_khk","Khaki Bandanna",145],
			["H_Bandanna_sgg","Sage Bandanna",160],
			["H_StrawHat","Straw Fedora",225],
			["H_BandMask_blk","Hat & Bandanna",300],
			["H_Booniehat_tan",nil,425],
			["H_Hat_blue",nil,310],
			["H_Hat_brown",nil,276],
			["H_Hat_checker",nil,340],
			["H_Hat_grey",nil,280],
			["H_Hat_tan",nil,265],
			["H_Cap_blu",nil,150],
			["H_Cap_grn",nil,150],
			["H_Cap_grn_BI",nil,150],
			["H_Cap_oli",nil,150],
			["H_Cap_red",nil,150],
			["H_Cap_tan",nil,150],
			["Masque_Arnold",nil,15000],
			["Masque_Aubrey",nil,15000],
			["Masque_Bonnie",nil,15000],
			["Masque_Bush",nil,15000],
			["Masque_Chains",nil,15000],
			["Masque_Chuck",nil,15000],
			["Masque_Clinton",nil,15000],
			["Masque_Clover",nil,15000],
			["Masque_Dallas",nil,15000],
			["Masque_Fish",nil,15000],
			["Masque_forceAlpha",nil,15000],
			["Masque_Gombo",nil,15000],
			["Masque_GdG",nil,15000],
			["Masque_Hockey",nil,15000],
			["Masque_Hoxton",nil,15000],
			["Masque_Lincoln",nil,15000],
			["Masque_Lion",nil,15000],
			["Masque_Macrilleuse",nil,15000],
			["Masque_Mark",nil,15000],
			["Masque_Metalhead",nil,15000],
			["Masque_Momie",nil,15000],
			["Masque_Optimiste",nil,15000],
			["Masque_Orc",nil,15000],
			["Masque_Religieuse",nil,15000],
			["Masque_Santa",nil,15000],
			["Masque_Smiley",nil,15000],
			["Masque_Mempo",nil,15000],
			["Masque_speedRunner",nil,15000],
			["Masque_Unic",nil,15000],
			["Masque_Wolfv2",nil,15000],
			["Masque_zeus",nil,15000]
		];
	};

	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};

	//Vest
	case 3:
	{
		[
		];
	};

	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,3000],
			["B_Kitbag_mcamo",nil,4000],
			["B_TacticalPack_oli",nil,5000],
			["B_FieldPack_ocamo",nil,6000],
			["B_Bergen_sgg",nil,7000],
			["B_Kitbag_cbr",nil,8000],
			["B_Carryall_oli",nil,10000],
			["B_Carryall_khk",nil,10000]
		];
	};
};