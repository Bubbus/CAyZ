
#define FACTION blufor

BEGIN_LOADOUTS;




// Camper Loadout

_baseLoadout = [[],[],[],["UK3CB_CHC_C_U_HIKER_01",[["ACE_elasticBandage",4],["ACE_morphine",1],["ACE_splint",2],["ACE_tourniquet",2],["ACE_HandFlare_Red",2,1]]],[],[],"","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];

CREATE_LOADOUT(rif,_baseLoadout);

_variant = [[],[],["ACE_Flashlight_Maglite_ML300L","","","",[],[],""],["UK3CB_CHC_C_U_HIKER_01",[["ACE_elasticBandage",4],["ACE_morphine",1],["ACE_splint",2],["ACE_tourniquet",2]]],[],[],"","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
ADD_VARIANT(rif,_variant);


ADD_UNIFORM(rif,"UK3CB_CHC_C_U_HIKER_01");
ADD_UNIFORM(rif,"UK3CB_CHC_C_U_HIKER_02");
ADD_UNIFORM(rif,"UK3CB_CHC_C_U_HIKER_03");
ADD_UNIFORM(rif,"UK3CB_CHC_C_U_HIKER_04");
ADD_UNIFORM(rif,"UK3CB_CHC_C_U_COACH_04");
ADD_UNIFORM(rif,"UK3CB_CHC_C_U_COACH_01");
ADD_UNIFORM(rif,"UK3CB_CHC_C_U_WORK_02");
ADD_UNIFORM(rif,"UK3CB_CHC_C_U_WORK_01");

ADD_HAT(rif,"VSM_Beanie_Black");
ADD_HAT(rif,"VSM_Beanie_OD");
ADD_HAT(rif,"VSM_Beanie_tan");
ADD_HAT(rif,"rhs_beanie_green");
ADD_HAT(rif,"H_Cap_grn_BI");
ADD_HAT(rif,"H_Cap_grn");
ADD_HAT(rif,"H_Cap_blk");
ADD_HAT(rif,"H_Cap_khaki_specops_UK");


// Camper leader

_baseLoadout = [["Cre8ive_Rfl_CV_557","","","",["Cre8ive_Mag_CV_557_5Rnd_Tracer_Red",5],[],""],[],[],["UK3CB_CHC_C_U_HIKER_01",[["ACE_elasticBandage",4],["ACE_morphine",1],["ACE_splint",2],["ACE_tourniquet",2]]],["UK3CB_V_Pouch",[["Cre8ive_Mag_CV_557_5Rnd_Tracer_Red",5,5]]],[],"","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];

CREATE_LOADOUT(co,_baseLoadout);
COPY_ADDONS(co,rif);


// pistolero

_baseLoadout = [[],[],["rhs_weap_tt33","","","",["rhs_mag_762x25_8",8],[],""],["UK3CB_CHC_C_U_HIKER_01",[["ACE_elasticBandage",4],["ACE_morphine",1],["ACE_splint",2],["ACE_tourniquet",2],["rhs_mag_762x25_8",2,8]]],[],[],"","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];

CREATE_LOADOUT(pistol,_baseLoadout);

_variant = [[],[],["rhs_weap_type94_new","","","",["rhs_mag_6x8mm_mhp",6],[],""],["UK3CB_CHC_C_U_HIKER_01",[["ACE_elasticBandage",4],["ACE_morphine",1],["ACE_splint",2],["ACE_tourniquet",2],["rhs_mag_6x8mm_mhp",3,6]]],[],[],"","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
ADD_VARIANT(pistol,_variant);

_variant = [[],[],["rhs_weap_makarov_pm","","","",["rhs_mag_9x18_8_57N181S",8],[],""],["UK3CB_CHC_C_U_HIKER_01",[["ACE_elasticBandage",4],["ACE_morphine",1],["ACE_splint",2],["ACE_tourniquet",2],["rhs_mag_9x18_8_57N181S",2,8]]],[],[],"","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
ADD_VARIANT(pistol,_variant);

_variant = [[],[],["Cre8ive_Pst_CV_Ruka_357","","","",["Cre8ive_Mag_6Rnd_357_Speedloader_Tracer_Red",6],[],""],["UK3CB_CHC_C_U_HIKER_01",[["ACE_elasticBandage",4],["ACE_morphine",1],["ACE_splint",2],["ACE_tourniquet",2],["Cre8ive_Mag_6Rnd_357_Speedloader",3,6]]],[],[],"","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
ADD_VARIANT(pistol,_variant);

COPY_ADDONS(pistol,rif);


// Le Chef

_baseLoadout = [["Cre8ive_Rfl_CV_557","","","",["Cre8ive_Mag_CV_557_5Rnd_Tracer_Red",5],[],""],[],[],["UK3CB_CHC_C_U_DOC_01",[["ACE_elasticBandage",4],["ACE_morphine",1],["ACE_splint",2],["ACE_tourniquet",2]]],["UK3CB_V_Pouch",[["Cre8ive_Mag_CV_557_5Rnd_Tracer_Red",5,5]]],[],"UK3CB_H_Turban_Neckwrap_01_Whi","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];

CREATE_LOADOUT(chef,_baseLoadout);

_baseLoadout = [["Cre8ive_Rfl_CV_557","","","",["Cre8ive_Mag_CV_557_5Rnd_Tracer_Red",5],[],""],[],[],["UK3CB_CHC_C_U_PROF_02",[["ACE_elasticBandage",4],["ACE_morphine",1],["ACE_splint",2],["ACE_tourniquet",2]]],["UK3CB_V_Pouch",[["Cre8ive_Mag_CV_557_5Rnd_Tracer_Red",5,5]]],[],"H_Hat_grey","rhsusf_shemagh_white",[],["ItemMap","","","ItemCompass","ItemWatch",""]];

CREATE_LOADOUT(som,_baseLoadout);

// Zeus

_baseLoadout = [["Cre8ive_Rfl_CV_Goose_SO","","","",["Cre8ive_Mag_2Rnd_Slug",2],[],""],[],[],["UK3CB_CHC_C_U_HIKER_01",[["ACE_elasticBandage",4],["ACE_morphine",1],["ACE_splint",2],["ACE_tourniquet",2],["ACRE_PRC148",1],["ACRE_PRC152",1]]],["rhs_vest_commander",[["Cre8ive_Mag_2Rnd_Slug",20,2]]],[],"rhs_altyn","",["Laserdesignator_01_khk_F","","","",["Laserbatteries",1],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];

CREATE_LOADOUT(zeus,_baseLoadout);
COPY_ADDONS(zeus,rif);



// Small crate loadout
CREATE_CRATE(small);

ADD_BANDAGES_TO_CRATE(small,5);
ADD_MEDS_TO_CRATE(small,3);
ADD_BLOOD_TO_CRATE(small,1);

ADD_ITEMS_TO_CRATE(small,"Binocular",1);

FINALIZE_CRATE(small);


// Medium crate loadout
CREATE_CRATE(med);

ADD_BANDAGES_TO_CRATE(med,8);
ADD_MEDS_TO_CRATE(med,5);
ADD_BLOOD_TO_CRATE(med,1);

ADD_ITEMS_TO_CRATE(med,"Binocular",1);

FINALIZE_CRATE(med);


// Default loadout.
// If Gearscript tries to use an invalid loadout, it will fall-back to this default loadout instead.

COPY_LOADOUT(default,rif);
