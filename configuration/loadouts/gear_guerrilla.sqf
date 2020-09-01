
#define FACTION guerrilla

BEGIN_LOADOUTS;




// cop Loadout

_baseLoadout = [[],[],["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_Marshal",[["ACRE_PRC343",1],["ACE_elasticBandage",4],["ACE_morphine",1],["ACE_splint",2],["ACE_tourniquet",2]]],["demian2435_police_vest",[["rhsusf_mag_17Rnd_9x19_JHP",2,17]]],[],"usm_bdu_8point_blk","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];

CREATE_LOADOUT(copglock,_baseLoadout);


// Commander Loadout

_baseLoadout = [["hlc_smg_mp5N_tac","","acc_flashlight","optic_Holosight_smg_blk_F",["hlc_30Rnd_9x19_GD_MP5",30],[],"rhsusf_acc_tdstubby_blk"],[],[],["U_Marshal",[["ACRE_PRC343",1],["ACE_elasticBandage",4],["ACE_morphine",1],["ACE_splint",2],["ACE_tourniquet",2]]],["demian2435_police_vest",[["hlc_30Rnd_9x19_GD_MP5",3,30]]],[],"usm_bdu_8point_blk","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];

CREATE_LOADOUT(copmp5,_baseLoadout);


// Fireteam lead Loadout

_baseLoadout = [["rhs_weap_hk416d145","","acc_flashlight","optic_MRCO",["30Rnd_556x45_Stanag_green",30],[],"rhsusf_acc_grip2"],[],[],["U_Marshal",[["ACRE_PRC343",1],["ACE_elasticBandage",4],["ACE_morphine",1],["ACE_splint",2],["ACE_tourniquet",2]]],["demian2435_police_vest",[["30Rnd_556x45_Stanag_green",2,30],["30Rnd_556x45_Stanag_Tracer_Green",1,30]]],[],"usm_bdu_8point_blk","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];

CREATE_LOADOUT(cop416,_baseLoadout);


// Medic Loadout

_baseLoadout = [["UK3CB_BAF_L115A3_BL","","","rhsusf_acc_LEUPOLDMK4_2_mrds",["UK3CB_BAF_338_5Rnd_Tracer",5],[],""],[],[],["U_Marshal",[["ACRE_PRC343",1],["ACE_elasticBandage",4],["ACE_morphine",1],["ACE_splint",2],["ACE_tourniquet",2]]],["demian2435_police_vest",[["ACE_Kestrel4500",1],["ACE_RangeCard",1],["30Rnd_556x45_Stanag_green",2,30],["UK3CB_BAF_338_5Rnd_Tracer",5,5]]],[],"usm_bdu_8point_blk","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];

CREATE_LOADOUT(copsniper,_baseLoadout);


// Default loadout.
// If Gearscript tries to use an invalid loadout, it will fall-back to this default loadout instead.

COPY_LOADOUT(default,copglock);
