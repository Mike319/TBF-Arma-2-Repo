/*
	ARRAY FORMAT:
		0: STRING (Classname)
		1: STRING (Display Name, leave as "" for default)
		2: SCALAR (Price)
		4: ARRAY (This is for limiting items to certain things)
			0: Variable to read from
			1: Variable Value Type
			2: What to compare to
*/
class Clothing {
	class bruce {
		title = "STR_Shops_C_Bruce";
		license = "";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Remove Uniform", 0, { "", "", -1 } },
			{ "U_C_Poloshirt_blue", "Poloshirt Blue", 250, { "", "", -1 } },
			{ "U_C_Poloshirt_burgundy", "Poloshirt Burgundy", 275, { "", "", -1 } },
			{ "U_C_Poloshirt_redwhite", "Poloshirt Red/White", 150, { "", "", -1 } },
			{ "U_C_Poloshirt_salmon", "Poloshirt Salmon", 175, { "", "", -1 } },
			{ "U_C_Poloshirt_stripped", "Poloshirt stripped", 125, { "", "", -1 } },
			{ "U_C_Poloshirt_tricolour", "Poloshirt Tricolor", 350, { "", "", -1 } },
			{ "U_C_Poor_2", "Rag tagged clothes", 250, { "", "", -1 } },
			{ "U_IG_Guerilla2_2", "Green stripped shirt & Pants", 650, { "", "", -1 } },
			{ "U_IG_Guerilla3_1", "Brown Jacket & Pants", 735, { "", "", -1 } },
			{ "U_IG_Guerilla2_3", "The Outback Rangler", 1200, { "", "", -1 } },
			{ "U_C_HunterBody_grn", "The Hunters Look", 1500, { "", "", -1 } },
			{ "U_C_WorkerCoveralls", "Mechanic Coveralls", 2500, { "", "", -1 } },
			{ "U_OrestesBody", "Surfing On Land", 1100, { "", "", -1 } },
			{ "SP_0000_Standard_Coverall_Red", "", 135, { "", "", -1 } },
			{ "SP_0000_Standard_PulloverUniform_BlueFrost", "", 2500, { "", "", -1 } },
			{ "SP_0000_Standard_PulloverUniform_Grey", "", 2500, { "", "", -1 } },
			{ "SP_0000_Standard_PulloverUniform_NodUrban", "", 2500, { "", "", -1 } },
			{ "AFG_1990DuckHunter_TacticalUniform_SS", "", 2500, { "", "", -1 } },
			{ "AFG_1996Leaf_PulloverUniform", "", 2500, { "", "", -1 } },
			{ "SP_0000_Standard_Underwear_Pink", "", 135, { "", "", -1 } },
			{ "U_NikosAgedBody", "Casual Wears", 5000, { "", "", -1 } }
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } },
			{ "H_Bandanna_camo", "Camo Bandanna", 120, { "", "", -1 } },
			{ "H_Bandanna_surfer", "Surfer Bandanna", 130, { "", "", -1 } },
			{ "H_Bandanna_gry", "Grey Bandanna", 150, { "", "", -1 } },
			{ "H_Bandanna_cbr", "", 165, { "", "", -1 } },
			{ "H_Bandanna_surfer", "", 135, { "", "", -1 } },
			{ "H_Bandanna_khk", "Khaki Bandanna", 145, { "", "", -1 } },
			{ "H_Bandanna_sgg", "Sage Bandanna", 160, { "", "", -1 } },
			{ "H_StrawHat", "Straw Fedora", 225, { "", "", -1 } },
			{ "H_BandMask_blk", "Hat & Bandanna", 300, { "", "", -1 } },
			{ "H_Booniehat_tan", "", 425, { "", "", -1 } },
			{ "SP_Hood_Black", "", 425, { "", "", -1 } },
			{ "SP_Hood_Green", "", 425, { "", "", -1 } },
			{ "SP_Hood_Tan", "", 425, { "", "", -1 } },
			{ "SP_TSH04Helmet_Black", "", 425, { "", "", -1 } },
			{ "H_Booniehat_tan", "", 425, { "", "", -1 } },
			{ "H_Booniehat_tan", "", 425, { "", "", -1 } },
			{ "H_Booniehat_tan", "", 425, { "", "", -1 } },
			{ "H_Hat_blue", "", 310, { "", "", -1 } },
			{ "H_Hat_brown", "", 276, { "", "", -1 } },
			{ "H_Hat_checker", "", 340, { "", "", -1 } },
			{ "H_Hat_grey", "", 280, { "", "", -1 } },
			{ "H_Hat_tan", "", 265, { "", "", -1 } },
			{ "H_Cap_blu", "", 150, { "", "", -1 } },
			{ "H_Cap_grn", "", 150, { "", "", -1 } },
			{ "H_Cap_grn_BI", "", 150, { "", "", -1 } },
			{ "H_Cap_oli", "", 150, { "", "", -1 } },
			{ "H_Cap_red", "", 150, { "", "", -1 } },
			{ "H_Cap_tan", "", 150, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } },
			{ "G_Shades_Black", "", 25, { "", "", -1 } },
			{ "G_Shades_Blue", "", 20, { "", "", -1 } },
			{ "G_Sport_Blackred", "", 20, { "", "", -1 } },
			{ "G_Sport_Checkered", "", 20, { "", "", -1 } },
			{ "G_Sport_Blackyellow", "", 20, { "", "", -1 } },
			{ "G_Sport_BlackWhite", "", 20, { "", "", -1 } },
			{ "G_Squares", "", 10, { "", "", -1 } },
			{ "G_Aviator", "", 100, { "", "", -1 } },
			{ "G_Lady_Mirror", "", 150, { "", "", -1 } },
			{ "G_Lady_Dark", "", 150, { "", "", -1 } },
			{ "G_Lady_Blue", "", 150, { "", "", -1 } },
			{ "SP_Shades_Black", "", 30, { "", "", -1 } },
			{ "SP_Kneepads_Black2", "", 55, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Remove Vest", 0, { "", "", -1 } },
			{ "SP_JackEllis1_Blue", "", 25000, { "", "", -1 } },
			{ "SP_JackEllis1_White", "", 25000, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } },
			{ "B_AssaultPack_cbr", "", 2500, { "", "", -1 } },
			{ "B_Kitbag_mcamo", "", 4500, { "", "", -1 } },
			{ "B_TacticalPack_oli", "", 3500, { "", "", -1 } },
			{ "B_FieldPack_ocamo", "", 3000, { "", "", -1 } },
			{ "B_Bergen_sgg", "", 4500, { "", "", -1 } },
			{ "B_Kitbag_cbr", "", 4500, { "", "", -1 } },
			{ "B_Carryall_oli", "", 5000, { "", "", -1 } },
			{ "B_Carryall_khk", "", 5000, { "", "", -1 } }
		};
	};

	class cop {
		title = "STR_Shops_C_Police";
		license = "";
		side = "cop";

		uniforms[] = {
			{ "NONE", "Remove Uniform", 0, { "", "", -1 } },
			{ "UNS_ARMY_BDU_1stCav65pv1", "", 350, { "", "", -1 } },
			{ "UNS_ARMY_BDU_1stCav65pv2", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_ARMY_BDU_1stCav65pfc", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_ARMY_BDU_1stCav65spc", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_ARMY_BDU_1stCav65spc5", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_ARMY_BDU_1stCav65cpl", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_ARMY_BDU_1stCav65sgt", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_ARMY_BDU_1stCav65ssg", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_ARMY_BDU_1stCav65sfc", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_ARMY_BDU_1stCav65msg", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_ARMY_BDU_1stCav65sgm", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_ARMY_BDU_1stCav652ndlt", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_ARMY_BDU_1stCav651stlt", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_ARMY_BDU_1stCav65cpt", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_ARMY_BDU_1stCav65maj", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_ARMY_BDU_1stCav65ltcol", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_ARMY_BDU_1stCav65col", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_TIGER_BDU", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "MacVSog1_Uniform", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "MacVSog2_Uniform", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_ARMY_BDU_SF_EarlyWarpv1", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_ARMY_BDU_SF_EarlyWarpv2", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_ARMY_BDU_SF_EarlyWarcpl", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_ARMY_BDU_SF_EarlyWarsgt", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_ARMY_BDU_SF_EarlyWar2ndlt", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_ARMY_BDU_SF_EarlyWarcpt", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_ARMY_BDU_SF_EarlyWarcol", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_ARMY_BDU_F", "", 1250, { "life_coplevel", "SCALAR", 1 } },
			{ "Cav_Undershirt_Uniform", "", 550, { "life_coplevel", "SCALAR", 2 } }
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } },
			{ "UNS_M1_1A", "", 75, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_M1_2A", "", 75, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_M1_3A", "", 75, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_M1_1V", "", 75, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_TC_2", "", 75, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_Boonie_TIG2", "", 75, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_Boonie_TIGF", "", 75, { "life_coplevel", "SCALAR", 1 } },
			{ "CUP_H_USMC_Helmet_Pilot", "", 75, { "life_coplevel", "SCALAR", 1 } },
			{ "FIR_USHelmetType1_Navy_Black_Open", "", 75, { "life_coplevel", "SCALAR", 1 } },
			{ "SOGBeret1", "", 120, { "life_coplevel", "SCALAR", 1 } },
			{ "DAR_Stetson", "", 100, { "life_coplevel", "SCALAR", 2 } }
		};

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } },
			{ "G_Shades_Black", "", 25, { "", "", -1 } },
			{ "G_Shades_Blue", "", 20, { "", "", -1 } },
			{ "G_Sport_Blackred", "", 20, { "", "", -1 } },
			{ "G_Sport_Checkered", "", 20, { "", "", -1 } },
			{ "G_Sport_Blackyellow", "", 20, { "", "", -1 } },
			{ "G_Sport_BlackWhite", "", 20, { "", "", -1 } },
			{ "G_Squares", "", 10, { "", "", -1 } },
			{ "G_Aviator", "", 100, { "", "", -1 } },
			{ "G_Lady_Mirror", "", 150, { "", "", -1 } },
			{ "G_Lady_Dark", "", 150, { "", "", -1 } },
			{ "G_Lady_Blue", "", 150, { "", "", -1 } },
			{ "G_Lowprofile", "", 30, { "", "", -1 } },
			{ "G_Combat", "", 55, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Remove Vest", 0, { "", "", -1 } },
			{ "UNS_M1956_A1", "", 800, { "", "", -1 } },
			{ "UNS_M1956_A2", "", 800, { "", "", -1 } },
			{ "UNS_M1956_A3", "", 800, { "", "", -1 } },
			{ "UNS_M1956_A4", "", 800, { "", "", -1 } },
			{ "UNS_M1956_A5", "", 800, { "", "", -1 } },
			{ "UNS_M1956_A6", "", 800, { "", "", -1 } },
			{ "UNS_M1956_A7", "", 800, { "", "", -1 } },
			{ "UNS_M1956_A8", "", 800, { "", "", -1 } },
			{ "UNS_M1956_A9", "", 800, { "", "", -1 } },
			{ "UNS_M1956_A10", "", 800, { "", "", -1 } },
			{ "UNS_M1956_S1", "", 800, { "", "", -1 } },
			{ "UNS_M1956_S2", "", 800, { "", "", -1 } },
			{ "CUP_V_B_RRV_Scout2", "", 800, { "", "", -1 } },
			{ "ACV_LHDVest_Yellow", "", 800, { "", "", -1 } },
			{ "UNS_M1956_M19", "", 800, { "", "", -1 } },
			{ "UNS_M1956_M7", "", 1500, { "life_coplevel", "SCALAR", 1 } }
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } },
			{ "UNS_Alice_2", "", 800, { "", "", -1 } },
			{ "UNS_Alice_F4", "", 800, { "", "", -1 } },
			{ "UNS_Alice_F6", "", 800, { "", "", -1 } },
			{ "UNS_Alice_F9", "", 800, { "", "", -1 } },
			{ "B_FieldPack_cbr", "", 500, { "", "", -1 } },
			{ "B_AssaultPack_cbr", "", 700, { "", "", -1 } },
			{ "B_Bergen_sgg", "", 2500, { "", "", -1 } },
			{ "B_Carryall_cbr", "", 3500, { "", "", -1 } }
		};
	};
	
	class covert {
		title = "STR_Shops_C_Police";
		license = "";
		side = "cop";

		uniforms[] = {
			{ "NONE", "Remove Uniform", 0, { "", "", -1 } },
			{ "UNS_NVA_G", "", 350, { "", "", -1 } },
			{ "UNS_NVA_GC", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "CUP_U_O_SLA_Officer", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_VC_S", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_VC_U", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_VC_C", "", 350, { "life_coplevel", "SCALAR", 1 } },
			{ "U_C_Poloshirt_blue", "Poloshirt Blue", 350, { "", "", -1 } },
			{ "U_C_Poloshirt_burgundy", "Poloshirt Burgundy", 350, { "", "", -1 } },
			{ "U_C_Poloshirt_redwhite", "Poloshirt Red/White", 350, { "", "", -1 } },
			{ "U_C_Poloshirt_salmon", "Poloshirt Salmon", 350, { "", "", -1 } },
			{ "U_C_Poloshirt_stripped", "Poloshirt stripped", 350, { "", "", -1 } },
			{ "U_C_Poloshirt_tricolour", "Poloshirt Tricolor", 350, { "", "", -1 } },
			{ "U_C_Poor_2", "Rag tagged clothes", 350, { "", "", -1 } },
			{ "U_IG_Guerilla2_2", "Green stripped shirt & Pants", 350, { "", "", -1 } },
			{ "U_IG_Guerilla3_1", "Brown Jacket & Pants", 350, { "", "", -1 } },
			{ "U_IG_Guerilla2_3", "The Outback Rangler", 350, { "", "", -1 } },
			{ "U_C_HunterBody_grn", "The Hunters Look", 350, { "", "", -1 } },
			{ "U_C_WorkerCoveralls", "Mechanic Coveralls", 350, { "", "", -1 } },
			{ "U_OrestesBody", "Surfing On Land", 350, { "", "", -1 } },
			{ "U_NikosAgedBody", "Casual Wears", 350, { "", "", -1 } }
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } },
			{ "H_Bandanna_camo", "Camo Bandanna", 120, { "", "", -1 } },
			{ "H_Bandanna_surfer", "Surfer Bandanna", 130, { "", "", -1 } },
			{ "H_Bandanna_gry", "Grey Bandanna", 150, { "", "", -1 } },
			{ "H_Bandanna_cbr", "", 165, { "", "", -1 } },
			{ "H_Bandanna_surfer", "", 135, { "", "", -1 } },
			{ "H_Bandanna_khk", "Khaki Bandanna", 145, { "", "", -1 } },
			{ "H_Bandanna_sgg", "Sage Bandanna", 160, { "", "", -1 } },
			{ "H_StrawHat", "Straw Fedora", 225, { "", "", -1 } },
			{ "H_BandMask_blk", "Hat & Bandanna", 300, { "", "", -1 } },
			{ "H_Booniehat_tan", "", 425, { "", "", -1 } },
			{ "H_Hat_blue", "", 310, { "", "", -1 } },
			{ "H_Hat_brown", "", 276, { "", "", -1 } },
			{ "H_Hat_checker", "", 340, { "", "", -1 } },
			{ "H_Hat_grey", "", 280, { "", "", -1 } },
			{ "H_Hat_tan", "", 265, { "", "", -1 } },
			{ "H_Cap_blu", "", 150, { "", "", -1 } },
			{ "H_Cap_grn", "", 150, { "", "", -1 } },
			{ "H_Cap_grn_BI", "", 150, { "", "", -1 } },
			{ "H_Cap_oli", "", 150, { "", "", -1 } },
			{ "H_Cap_red", "", 150, { "", "", -1 } },
			{ "H_Cap_tan", "", 150, { "", "", -1 } },
			{ "UNS_NVA_HG", "", 75, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_NVA_HGG", "", 75, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_PAVN_HN", "", 75, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_PAVN_HC", "", 75, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_Boonie_VC", "", 75, { "life_coplevel", "SCALAR", 1 } },
			{ "UNS_Conehat_VC", "", 75, { "life_coplevel", "SCALAR", 1 } },
			{ "vc_boonie_black", "", 75, { "life_coplevel", "SCALAR", 1 } },
			{ "CUP_H_USMC_Helmet_Pilot", "", 75, { "life_coplevel", "SCALAR", 1 } },
			{ "FIR_USHelmetType1_Navy_Black_Open", "", 75, { "life_coplevel", "SCALAR", 1 } },
			{ "SOGBeret1", "", 120, { "life_coplevel", "SCALAR", 1 } },
			{ "DAR_Stetson", "", 100, { "life_coplevel", "SCALAR", 2 } }
		};

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } },
			{ "G_Shades_Black", "", 25, { "", "", -1 } },
			{ "G_Shades_Blue", "", 20, { "", "", -1 } },
			{ "G_Sport_Blackred", "", 20, { "", "", -1 } },
			{ "G_Sport_Checkered", "", 20, { "", "", -1 } },
			{ "G_Sport_Blackyellow", "", 20, { "", "", -1 } },
			{ "G_Sport_BlackWhite", "", 20, { "", "", -1 } },
			{ "G_Squares", "", 10, { "", "", -1 } },
			{ "G_Aviator", "", 100, { "", "", -1 } },
			{ "G_Lady_Mirror", "", 150, { "", "", -1 } },
			{ "G_Lady_Dark", "", 150, { "", "", -1 } },
			{ "G_Lady_Blue", "", 150, { "", "", -1 } },
			{ "G_Lowprofile", "", 30, { "", "", -1 } },
			{ "G_Combat", "", 55, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Remove Vest", 0, { "", "", -1 } },
			{ "UNS_NVA_A1", "", 75, { "", "", -1 } },
			{ "UNS_NVA_A2", "", 75, { "", "", -1 } },
			{ "UNS_NVA_A3", "", 75, { "", "", -1 } },
			{ "UNS_NVA_S1", "", 75, { "", "", -1 } },
			{ "UNS_NVA_S2", "", 75, { "", "", -1 } },
			{ "UNS_NVA_B1", "", 75, { "", "", -1 } },
			{ "UNS_NVA_MG", "", 75, { "", "", -1 } },
			{ "UNS_NVA_SP", "", 75, { "", "", -1 } },
			{ "UNS_VC_A1", "", 75, { "", "", -1 } },
			{ "UNS_VC_S2", "", 75, { "", "", -1 } },
			{ "UNS_VC_MG", "", 75, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } },
			{ "UNS_NVA_R1", "", 75, { "", "", -1 } },
			{ "UNS_NVA_RPG", "", 75, { "", "", -1 } },
			{ "CUP_B_AlicePack_Medic", "", 75, { "", "", -1 } },
			{ "UNS_NVA_RTO", "", 75, { "", "", -1 },
			{"CUP_B_AlicePack_Khaki", "", 75, { "", "", -1 }},
			{ "B_Kitbag_mcamo", "", 75, { "", "", -1 } },
			{ "B_TacticalPack_oli", "", 75, { "", "", -1 } },
			{ "B_FieldPack_ocamo", "", 75, { "", "", -1 } },
			{ "B_Bergen_sgg", "", 75, { "", "", -1 } },
			{ "B_Kitbag_cbr", "", 75, { "", "", -1 } },
			{ "B_Carryall_oli", "", 75, { "", "", -1 } },
			{ "B_Carryall_khk", "", 75, { "", "", -1 } }			
		};
	};
	
	class adac {
		title = "STR_Shops_C_NVA";
		license = "";
		side = "adac";

		uniforms[] = {
			{ "NONE", "Remove Uniform", 0, { "", "", -1 } },
			{ "UNS_NVA_G", "", 350, { "", "", -1 } },
			{ "UNS_NVA_GC", "", 350, { "life_adaclevel", "SCALAR", 1 } },
			{ "CUP_U_O_SLA_Officer", "", 550, { "life_adaclevel", "SCALAR", 5 } }
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } },
			{ "UNS_NVA_HG", "", 75, { "life_adaclevel", "SCALAR", 1 } },
			{ "UNS_NVA_HGG", "", 75, { "life_adaclevel", "SCALAR", 1 } },
			{ "UNS_PAVN_HN", "", 75, { "life_adaclevel", "SCALAR", 1 } },
			{ "UNS_PAVN_HC", "", 75, { "life_adaclevel", "SCALAR", 1 } }
		};

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } },
			{ "G_Shades_Black", "", 25, { "", "", -1 } },
			{ "G_Shades_Blue", "", 20, { "", "", -1 } },
			{ "G_Sport_Blackred", "", 20, { "", "", -1 } },
			{ "G_Sport_Checkered", "", 20, { "", "", -1 } },
			{ "G_Sport_Blackyellow", "", 20, { "", "", -1 } },
			{ "G_Sport_BlackWhite", "", 20, { "", "", -1 } },
			{ "G_Squares", "", 10, { "", "", -1 } },
			{ "G_Aviator", "", 100, { "", "", -1 } },
			{ "G_Lady_Mirror", "", 150, { "", "", -1 } },
			{ "G_Lady_Dark", "", 150, { "", "", -1 } },
			{ "G_Lady_Blue", "", 150, { "", "", -1 } },
			{ "G_Lowprofile", "", 30, { "", "", -1 } },
			{ "G_Combat", "", 55, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Remove Vest", 0, { "", "", -1 } },
			{ "UNS_NVA_A1", "", 800, { "", "", -1 } },
			{ "UNS_NVA_A2", "", 800, { "", "", -1 } },
			{ "UNS_NVA_A3", "", 800, { "", "", -1 } },
			{ "UNS_NVA_S1", "", 800, { "", "", -1 } },
			{ "UNS_NVA_S2", "", 800, { "", "", -1 } },
			{ "UNS_NVA_B1", "", 800, { "", "", -1 } },
			{ "UNS_NVA_MG", "", 800, { "", "", -1 } },
			{ "UNS_NVA_SP", "", 800, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } },
			{ "UNS_NVA_R1", "", 800, { "", "", -1 } },
			{ "UNS_NVA_RPG", "", 800, { "", "", -1 } },
			{ "CUP_B_AlicePack_Medic", "", 800, { "", "", -1 } },
			{ "UNS_NVA_RTO", "", 75, { "life_adaclevel", "SCALAR", 2 } }
		};
	};

	class dive {
		title = "STR_Shops_C_Diving";
		license = "dive";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Remove Uniform", 0, { "", "", -1 } },
			{ "U_B_Wetsuit", "", 2000, { "", "", -1 } }
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } },
			{ "G_Diving", "", 500, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Remove Vest", 0, { "", "", -1 } },
			{ "V_RebreatherB", "", 5000, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } }
		};
	};

	class reb {
		title = "STR_Shops_C_Rebel";
		license = "rebel";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Remove Uniform", 0, { "", "", -1 } },
			{ "UNS_VC_S", "", 5000, {"", "", -1} },
			{ "UNS_VC_U", "", 7500, { "", "", -1 } },
			{ "UNS_VC_C", "", 11500, { "", "", -1 } }
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } },
			{ "UNS_Boonie_VC", "", 850, { "", "", -1 } },
			{ "UNS_Conehat_VC", "", 850, { "", "", -1 } },
			{ "vc_boonie_black", "", 1000, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } },
			{ "G_Shades_Black", "", 25, { "", "", -1 } },
			{ "G_Shades_Blue", "", 20, { "", "", -1 } },
			{ "G_Sport_Blackred", "", 20, { "", "", -1 } },
			{ "G_Sport_Checkered", "", 20, { "", "", -1 } },
			{ "G_Sport_Blackyellow", "", 20, { "", "", -1 } },
			{ "G_Sport_BlackWhite", "", 20, { "", "", -1 } },
			{ "G_Squares", "", 10, { "", "", -1 } },
			{ "G_Lowprofile", "", 30, { "", "", -1 } },
			{ "G_Combat", "", 55, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Remove Vest", 0, { "", "", -1 } },
			{ "UNS_VC_A1", "", 7500, { "", "", -1 } },
			{ "UNS_VC_S2", "", 7500, { "", "", -1 } },
			{ "UNS_VC_MG", "", 7500, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } },
			{"CUP_B_AlicePack_Khaki", "", 2500, { "", "", -1 }},
			{ "B_Kitbag_mcamo", "", 4500, { "", "", -1 } },
			{ "B_TacticalPack_oli", "", 3500, { "", "", -1 } },
			{ "B_FieldPack_ocamo", "", 3000, { "", "", -1 } },
			{ "B_Bergen_sgg", "", 4500, { "", "", -1 } },
			{ "B_Kitbag_cbr", "", 4500, { "", "", -1 } },
			{ "B_Carryall_oli", "", 5000, { "", "", -1 } },
			{ "B_Carryall_khk", "", 5000, { "", "", -1 } }
		};
	};

	class kart {
		title = "STR_Shops_C_Kart";
		license = "";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Remove Uniform", 0, { "", "", -1 } },
			{ "U_C_Driver_1_black", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_1_blue", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_1_red", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_1_orange", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_1_green", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_1_white", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_1_yellow", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_2", "", 3500, { "", "", -1 } },
			{ "U_C_Driver_1", "", 3600, { "", "", -1 } },
			{ "U_C_Driver_3", "", 3700, { "", "", -1 } },
			{ "U_C_Driver_4", "", 3700, { "", "", -1 } }
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } },
			{ "H_RacingHelmet_1_black_F", "", 1000, { "", "", -1 } },
			{ "H_RacingHelmet_1_red_F", "", 1000, { "", "", -1 } },
			{ "H_RacingHelmet_1_white_F", "", 1000, { "", "", -1 } },
			{ "H_RacingHelmet_1_blue_F", "", 1000, { "", "", -1 } },
			{ "H_RacingHelmet_1_yellow_F", "", 1000, { "", "", -1 } },
			{ "H_RacingHelmet_1_green_F", "", 1000, { "", "", -1 } },
			{ "H_RacingHelmet_1_F", "", 2500, { "", "", -1 } },
			{ "H_RacingHelmet_2_F", "", 2500, { "", "", -1 } },
			{ "H_RacingHelmet_3_F", "", 2500, { "", "", -1 } },
			{ "H_RacingHelmet_4_F", "", 2500, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Remove Vest", 0, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } }
		};
	};
};