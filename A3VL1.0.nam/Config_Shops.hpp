class WeaponShops {
    //Armory Shops
    class gun {
        name = "Billy Joe's Firearms";
        side = "civ";
        license = "gun";
        level = -1;
        msg = "";
        items[] = {
            { "hgun_SA_makarov_pm_F", "", 5500 },
            { "8Rnd_9x18_Mag", "", 150 },
            { "hgun_SA_nambu_type14_F", "", 5800 },
            { "8Rnd_8x22_Mag", "", 75 }
        };
    };
    class rebel {
        name = "Mohammed's Jihadi Shop";
        side = "civ";
        license = "rebel";
        level = -1;
        msg = "";
        items[] = {
            { "hlc_rifle_akm", "", 25000 },
			{ "hlc_30Rnd_762x39_b_ak", "", 500 },
			{ "smg_SA_9a91", "", 25000 },
			{ "20Rnd_SA_9x39", "", 500 },
			{ "prifle_SA_Mosin", "", 35000 },
			{ "5Rnd_SA_762x54_Bullets", "", 500 },
			{ "prifle_SA_Mosin", "", 35000 },
			{ "5Rnd_SA_762x54_Bullets", "", 500 },
            { "NAM_SKS", "", 30000 },
            { "SKS_Magazine", "", 500 },
            { "hlc_rifle_ak47", "", 20000 },
            { "hlc_30Rnd_762x39_b_ak", "", 500 },
            { "optic_Holosight", "", 3600 },
            { "RH_ar10", "", 50000 },
            { "RH_20Rnd_762x51_AR10", "", 775 },
			{ "V_HarnessOGL_gry", "Explosive Jacket", 550000 }
        };
    };
    class gang {
        name = "Hideout Armament";
        side = "civ";
        license = "";
        level = -1;
        msg = "";
        items[] = {
            { "hgun_SA_makarov_pm_F", "", 1500 },
            { "8Rnd_9x18_Mag", "", 150 },
            { "6Rnd_45ACP_Cylinder", "", 50 },
            { "30Rnd_9x21_Mag", "", 75 }
        };
    };
    //Basic Shops
    class genstore {
        name = "Altis General Store";
        side = "civ";
        license = "";
        level = -1;
        msg = "";
        items[] = {
        	{ "Binocular", "", 150 },
			{ "ItemGPS", "", 100 },
			{ "ToolKit", "", 250 },
			{ "FirstAidKit", "", 150 },
			{ "hgun_flashlight_Sam_F", "", 2000 },
			{ "Chemlight_red", "", 300 },
			{ "Chemlight_yellow", "", 300 },
			{ "Chemlight_green", "", 300 },
			{ "Chemlight_blue", "", 300 }
        };
    };
    //Cop Shops
    class cop_basic {
        name = "Altis Cop Shop";
        side = "cop";
        license = "";
        level = -1;
        msg = "";
        items[] = {
			{ "Binocular", "", 150 },
			{ "ItemGPS", "", 100 },
			{ "ToolKit", "", 250 }
        };
    };
    class cop_patrol {
        name = "Altis Patrol Officer Shop";
        side = "cop";
        license = "";
        level = 2;
        msg = "You must be a Patrol Officer Rank!";
        items[] = {
        	{ "RH_M16a1", "", 5000 },
			{ "RH_30Rnd_556x45_M855A1", "", 300 },
			{ "RH_M16A2gl", "", 5000 },
			{ "smg_SA_m1a1_F", "", 5000 },
			{ "20Rnd_SA_45ACP", "", 50 },
			{ "RH_30Rnd_556x45_M855A1", "", 300 },
			{ "NAM_CAR15_CM", "", 5000 },
			{ "30Rnd_556x45_Stanag", "", 300 }
        };
    };
    class cop_sergeant {
        name = "Altis Sergeant Officer Shop";
        side = "cop";
        license = "";
        level = 3;
        msg = "You must be a Sergeant Rank!";
        items[] = {
            { "NAM_XM21", "", 10000 },
			{ "20Rnd_762x51_Mag_T", "", 100 },
			{ "NAM_R700", "", 10000 },
			{ "R700_Magazine", "", 100 },
			{ "NAM_M60A", "", 10000 },
			{ "M60_Magazine", "", 100 },
			{ "NAM_M60", "", 10000 },
			{ "M60_Magazine", "", 100 },
			{ "NAM_M63AC", "", 10000 },
			{ "M63_Magazine", "", 100 },
			{ "NAM_RPDS", "", 10000 },
			{ "RPD_Magazine", "", 100 },
			{ "HAFM_LAW", "", 10000 },
			{ "HAFM_M72_Rocket", "", 100 },
			{ "cobra_m2_suppressor", "", 200 }
        };
    };
    //Medic Shops
    class med_basic {
        name = "store";
        side = "med";
        license = "";
        level = -1;
        items[] = {
            { "UNS_ARMY_BDU_F", "", 100 },
			{ "UNS_ARMY_MED", "", 150 },
			{ "m1a1helmet_medic", "", 250 },
			{ "H_PilotHelmetHeli_O", "", 250 },
			{ "FirstAidKit", "", 150 },
			{ "Medikit", "", 500 },
			{ "UNS_Peace", "", 1200 },
			{ "ItemGPS", "", 3000 }
        };
    };
	//NVA Shops
	class NVA_basic {
        name = "NVA Shop";
        side = "adac";
        license = "";
        level = -1;
        msg = "You must be NVA";
        items[] = {
        	{ "hlc_rifle_ak47", "", 20000 },
			{ "hlc_30Rnd_762x39_b_ak", "", 200 },
			{ "hlc_rifle_akm", "", 20000 },
			{ "hlc_30Rnd_762x39_b_ak", "", 200 },
			{ "hlc_rifle_RK62", "", 30000 },
			{ "hlc_30Rnd_762x39_b_ak", "", 200 },
			{ "muzzle_snds_L", "", 650 },
			{ "FirstAidKit", "", 150 },
			{ "Medikit", "", 1000 },
			{ "NVGoggles", "", 2000 },
			{ "16Rnd_9x21_Mag", "", 50 },
			{ "20Rnd_556x45_UW_mag", "", 125 }
        };
    };
};
