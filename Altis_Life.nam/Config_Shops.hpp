class WeaponShops {
    //Armory Shops
    class gun {
        name = "Billy Joe's Firearms";
        side = "civ";
        license = "gun";
        level = -1;
        msg = "";
        items[] = {
            { "hgun_Rook40_F", "", 6500 },
            { "hgun_Pistol_heavy_02_F", "", 9850 },
            { "hgun_ACPC2_F", "", 11500 },
            { "hgun_PDW2000_F", "", 20000 },
            { "optic_ACO_grn_smg", "", 2500 },
            { "V_Rangemaster_belt", "", 4900 },
            { "16Rnd_9x21_Mag", "", 25 },
            { "9Rnd_45ACP_Mag", "", 45 },
            { "6Rnd_45ACP_Cylinder", "", 50 },
            { "30Rnd_9x21_Mag", "", 75 }
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
            { "hlc_rifle_ak74", "", 30000 },
            { "hlc_30Rnd_545x39_B_AK", "", 500 },
            { "hlc_rifle_ak47", "", 20000 },
            { "hlc_30Rnd_762x39_b_ak", "", 500 },
            { "optic_Holosight", "", 3600 },
            { "arifle_TRG20_F", "", 500 },
            { "30Rnd_65x39_caseless_green", "", 275 }
        };
    };
    class gang {
        name = "Hideout Armament";
        side = "civ";
        license = "";
        level = -1;
        msg = "";
        items[] = {
            { "hgun_Rook40_F", "", 1500 },
            { "hgun_Pistol_heavy_02_F", "", 2500 },
            { "hgun_ACPC2_F", "", 4500 },
            { "hgun_PDW2000_F", "", 9500 },
            { "optic_ACO_grn_smg", "", 950 },
            { "V_Rangemaster_belt", "", 1900 },
            { "16Rnd_9x21_Mag", "", 25 },
            { "9Rnd_45ACP_Mag", "", 45 },
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
			{ "NVGoggles", "", 2000 },
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
        	{ "arifle_sdar_F", "Taser Rifle", 20000 },
			{ "hgun_P07_snds_F", "Stun Pistol", 2000 },
			{ "hgun_P07_F", "", 7500 },
			{ "HandGrenade_Stone", "Flashbang", 1700 },
			{ "Binocular", "", 150 },
			{ "ItemGPS", "", 100 },
			{ "ToolKit", "", 250 },
			{ "muzzle_snds_L", "", 650 },
			{ "FirstAidKit", "", 150 },
			{ "Medikit", "", 1000 },
			{ "NVGoggles", "", 2000 },
			{ "16Rnd_9x21_Mag", "", 50 },
			{ "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 125 }
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
			{ "9Rnd_45ACP_Mag", "", 200 }
        };
    };
    //Medic Shops
    class med_basic {
        name = "store";
        side = "med";
        license = "";
        level = -1;
        items[] = {
            { "ItemGPS", "", 100 },
			{ "Binocular", "", 150 },
			{ "ToolKit", "", 250 },
			{ "FirstAidKit", "", 150 },
			{ "Medikit", "", 500 },
			{ "NVGoggles", "", 1200 },
			{ "B_FieldPack_ocamo", "", 3000 }
        };
    };
};
