
#define FACTION indfor

BEGIN_LOADOUTS;




// Rifleman Loadout

_baseLoadout = [["UK3CB_BAF_L85A2","","","UK3CB_BAF_SUSAT",["30Rnd_556x45_Stanag",30],[],""],[],["UK3CB_BAF_L117A2","","","",["UK3CB_BAF_9_13Rnd",13],[],""],["UK3CB_BAF_U_CombatUniform_MTP",[["ACRE_PRC343",1],["ACE_elasticBandage",4],["ACE_morphine",1],["ACE_splint",2],["ACE_tourniquet",2],["ACE_EntrenchingTool",1]]],["UK3CB_BAF_V_Osprey_Rifleman_A",[["30Rnd_556x45_Stanag",5,30],["30Rnd_556x45_Stanag_Tracer_Yellow",2,30],["UK3CB_BAF_9_13Rnd",1,13],["HandGrenade",2,1],["SmokeShell",1,1]]],["UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A",[]],"UK3CB_BAF_H_Mk7_Camo_A","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];

CREATE_LOADOUT(rif,_baseLoadout);

ADD_UNIFORM(rif,"UK3CB_BAF_U_CombatUniform_MTP");
ADD_UNIFORM(rif,"UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve");
ADD_UNIFORM(rif,"UK3CB_BAF_U_CombatUniform_MTP_RM");
ADD_UNIFORM(rif,"UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve_RM");

ADD_HAT(rif,"UK3CB_BAF_H_Mk7_Camo_A");
ADD_HAT(rif,"UK3CB_BAF_H_Mk7_Camo_B");
ADD_HAT(rif,"UK3CB_BAF_H_Mk7_Camo_C");
ADD_HAT(rif,"UK3CB_BAF_H_Mk7_Camo_D");
ADD_HAT(rif,"UK3CB_BAF_H_Mk7_Camo_E");
ADD_HAT(rif,"UK3CB_BAF_H_Mk7_Camo_F");
ADD_HAT(rif,"UK3CB_BAF_H_Mk7_Camo_F");
ADD_HAT(rif,"UK3CB_BAF_H_Mk7_Camo_CESS_A");
ADD_HAT(rif,"UK3CB_BAF_H_Mk7_Camo_CESS_B");
ADD_HAT(rif,"UK3CB_BAF_H_Mk7_Camo_ESS_A");
ADD_HAT(rif,"UK3CB_BAF_H_Mk7_Camo_ESS_B");
ADD_HAT(rif,"UK3CB_BAF_H_Mk7_Scrim_A");
ADD_HAT(rif,"UK3CB_BAF_H_Mk7_Scrim_B");
ADD_HAT(rif,"UK3CB_BAF_H_Mk7_Scrim_C");
ADD_HAT(rif,"UK3CB_BAF_H_Mk7_Scrim_D");

ADD_VEST(rif,"UK3CB_BAF_V_Osprey_Rifleman_A");
ADD_VEST(rif,"UK3CB_BAF_V_Osprey_Rifleman_B");
ADD_VEST(rif,"UK3CB_BAF_V_Osprey_Rifleman_C");
ADD_VEST(rif,"UK3CB_BAF_V_Osprey_Rifleman_D");
ADD_VEST(rif,"UK3CB_BAF_V_Osprey_Rifleman_E");
ADD_VEST(rif,"UK3CB_BAF_V_Osprey_Rifleman_F");

ADD_BACKPACK(rif,"UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A");
ADD_BACKPACK(rif,"UK3CB_BAF_B_Bergen_MTP_Rifleman_L_B");
ADD_BACKPACK(rif,"UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C");
ADD_BACKPACK(rif,"UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D");


// Commander Loadout

_baseLoadout = [["UK3CB_BAF_L85A3","","acc_flashlight","rhsusf_acc_su230_c",["30Rnd_556x45_Stanag",30],[],"UK3CB_underbarrel_acc_afg_d"],[],["UK3CB_BAF_L117A2","","","",["UK3CB_BAF_9_13Rnd",13],[],""],["UK3CB_BAF_U_CombatUniform_MTP",[["ACRE_PRC343",1],["ACE_elasticBandage",4],["ACE_morphine",1],["ACE_splint",2],["ACE_tourniquet",2],["ACE_EntrenchingTool",1],["ACRE_PRC148",1]]],["UK3CB_BAF_V_Osprey_SL_A",[["UK3CB_BAF_9_13Rnd",1,13],["HandGrenade",2,1],["SmokeShell",1,1],["30Rnd_556x45_Stanag",5,30],["30Rnd_556x45_Stanag_Tracer_Yellow",2,30]]],["UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A",[]],"UK3CB_BAF_H_Beret_SG","",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];

CREATE_LOADOUT(co,_baseLoadout);
COPY_ADDONS(co,rif);
CLEAR_HATS(co);
CLEAR_VESTS(co);

ADD_VEST(co,"UK3CB_BAF_V_Osprey_SL_A");
ADD_VEST(co,"UK3CB_BAF_V_Osprey_SL_B");
ADD_VEST(co,"UK3CB_BAF_V_Osprey_SL_C");
ADD_VEST(co,"UK3CB_BAF_V_Osprey_SL_D");


// Fireteam lead Loadout

_baseLoadout = [["UK3CB_BAF_L85A2_UGL","","","UK3CB_BAF_SUSAT",["30Rnd_556x45_Stanag",30],["1Rnd_HE_Grenade_shell",1],""],[],["UK3CB_BAF_L117A2","","","",["UK3CB_BAF_9_13Rnd",13],[],""],["UK3CB_BAF_U_CombatUniform_MTP",[["ACRE_PRC343",1],["ACE_elasticBandage",4],["ACE_morphine",1],["ACE_splint",2],["ACE_tourniquet",2],["ACE_EntrenchingTool",1],["ACRE_PRC152",1]]],["UK3CB_BAF_V_Osprey_SL_A",[["UK3CB_BAF_9_13Rnd",1,13],["HandGrenade",2,1],["SmokeShell",1,1],["30Rnd_556x45_Stanag",5,30],["30Rnd_556x45_Stanag_Tracer_Yellow",2,30],["1Rnd_HE_Grenade_shell",4,1],["ACE_40mm_Flare_red",2,1],["1Rnd_Smoke_Grenade_shell",2,1],["1Rnd_SmokeRed_Grenade_shell",2,1]]],["UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A",[]],"UK3CB_BAF_H_Mk7_Camo_A","",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];

CREATE_LOADOUT(ftl,_baseLoadout);
COPY_ADDONS(ftl,rif);
CLEAR_VESTS(ftl);

ADD_VEST(ftl,"UK3CB_BAF_V_Osprey_SL_A");
ADD_VEST(ftl,"UK3CB_BAF_V_Osprey_SL_B");
ADD_VEST(ftl,"UK3CB_BAF_V_Osprey_SL_C");
ADD_VEST(ftl,"UK3CB_BAF_V_Osprey_SL_D");


// Squad lead Loadout

COPY_LOADOUT(sl,ftl);


// Medic Loadout

_baseLoadout = [["UK3CB_BAF_L85A2","","","UK3CB_BAF_SUSAT",["30Rnd_556x45_Stanag",30],[],""],[],["UK3CB_BAF_L117A2","","","",["UK3CB_BAF_9_13Rnd",13],[],""],["UK3CB_BAF_U_CombatUniform_MTP",[["ACRE_PRC343",1],["ACE_elasticBandage",4],["ACE_morphine",1],["ACE_splint",2],["ACE_tourniquet",2],["ACE_EntrenchingTool",1]]],["UK3CB_BAF_V_Osprey_Medic_A",[["30Rnd_556x45_Stanag",5,30],["30Rnd_556x45_Stanag_Tracer_Yellow",2,30],["UK3CB_BAF_9_13Rnd",1,13],["HandGrenade",2,1],["SmokeShell",1,1]]],["UK3CB_BAF_B_Bergen_MTP_Medic_L_A",[["ACE_bloodIV",4],["ACE_elasticBandage",5],["ACE_packingBandage",5],["ACE_epinephrine",5],["ACE_morphine",5],["ACE_splint",5],["ACE_tourniquet",5]]],"UK3CB_BAF_H_Mk7_Camo_A","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];

CREATE_LOADOUT(med,_baseLoadout);
COPY_ADDONS(med,rif);
CLEAR_VESTS(med);
CLEAR_BACKPACKS(med);

ADD_VEST(med,"UK3CB_BAF_V_Osprey_Medic_A");
ADD_VEST(med,"UK3CB_BAF_V_Osprey_Medic_B");
ADD_VEST(med,"UK3CB_BAF_V_Osprey_Medic_C");
ADD_VEST(med,"UK3CB_BAF_V_Osprey_Medic_D");

ADD_BACKPACK(med,"UK3CB_BAF_B_Bergen_MTP_Medic_L_A");
ADD_BACKPACK(med,"UK3CB_BAF_B_Bergen_MTP_Medic_L_B");


// Autorifleman Loadout

_baseLoadout = [["UK3CB_BAF_L7A2","","","",["UK3CB_BAF_762_100Rnd_T",100],[],""],[],["UK3CB_BAF_L117A2","","","",["UK3CB_BAF_9_13Rnd",13],[],""],["UK3CB_BAF_U_CombatUniform_MTP",[["ACRE_PRC343",1],["ACE_elasticBandage",4],["ACE_morphine",1],["ACE_splint",2],["ACE_tourniquet",2],["ACE_EntrenchingTool",1]]],["UK3CB_BAF_V_Osprey_MG_A",[["UK3CB_BAF_9_13Rnd",1,13],["HandGrenade",2,1],["SmokeShell",1,1],["UK3CB_BAF_762_100Rnd_T",2,100]]],["UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A",[]],"UK3CB_BAF_H_Mk7_Camo_A","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];

CREATE_LOADOUT(ar,_baseLoadout);
COPY_ADDONS(ar,rif);
CLEAR_VESTS(ar);

ADD_VEST(ar,"UK3CB_BAF_V_Osprey_MG_A");
ADD_VEST(ar,"UK3CB_BAF_V_Osprey_MG_B");


// Assistant AR Loadout

_baseLoadout = [["UK3CB_BAF_L85A2","","","UK3CB_BAF_SUSAT",["30Rnd_556x45_Stanag",30],[],""],[],["UK3CB_BAF_L117A2","","","",["UK3CB_BAF_9_13Rnd",13],[],""],["UK3CB_BAF_U_CombatUniform_MTP",[["ACRE_PRC343",1],["ACE_elasticBandage",4],["ACE_morphine",1],["ACE_splint",2],["ACE_tourniquet",2],["ACE_EntrenchingTool",1]]],["UK3CB_BAF_V_Osprey_Rifleman_A",[["30Rnd_556x45_Stanag",5,30],["30Rnd_556x45_Stanag_Tracer_Yellow",2,30],["UK3CB_BAF_9_13Rnd",1,13],["HandGrenade",2,1],["SmokeShell",1,1]]],["UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A",[["UK3CB_BAF_762_100Rnd_T",2,100]]],"UK3CB_BAF_H_Mk7_Camo_A","",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];

CREATE_LOADOUT(aar,_baseLoadout);
COPY_ADDONS(aar,rif);


// Light anti-tank Loadout

_baseLoadout = [["UK3CB_BAF_L85A2","","","UK3CB_BAF_SUSAT",["30Rnd_556x45_Stanag",30],[],""],["UK3CB_BAF_AT4_CS_AT_Launcher","","","",[],[],""],["UK3CB_BAF_L117A2","","","",["UK3CB_BAF_9_13Rnd",13],[],""],["UK3CB_BAF_U_CombatUniform_MTP",[["ACRE_PRC343",1],["ACE_elasticBandage",4],["ACE_morphine",1],["ACE_splint",2],["ACE_tourniquet",2],["ACE_EntrenchingTool",1]]],["UK3CB_BAF_V_Osprey_Rifleman_A",[["30Rnd_556x45_Stanag",5,30],["30Rnd_556x45_Stanag_Tracer_Yellow",2,30],["UK3CB_BAF_9_13Rnd",1,13],["HandGrenade",2,1],["SmokeShell",1,1]]],["UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A",[]],"UK3CB_BAF_H_Mk7_Camo_A","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];

CREATE_LOADOUT(lat,_baseLoadout);
COPY_ADDONS(lat,rif);


// Marksman Loadout

_baseLoadout = [["UK3CB_BAF_L115A3","","","hlc_optic_LeupoldM3A",["UK3CB_BAF_338_5Rnd_Tracer",5],[],""],[],["UK3CB_BAF_L117A2","","","",["UK3CB_BAF_9_13Rnd",13],[],""],["UK3CB_BAF_U_CombatUniform_MTP",[["ACRE_PRC343",1],["ACE_elasticBandage",4],["ACE_morphine",1],["ACE_splint",2],["ACE_tourniquet",2],["ACE_EntrenchingTool",1],["ACE_Kestrel4500",1],["ACE_RangeCard",1]]],["UK3CB_BAF_V_Osprey_Marksman_A",[["UK3CB_BAF_9_13Rnd",1,13],["HandGrenade",2,1],["SmokeShell",1,1],["UK3CB_BAF_338_5Rnd_Tracer",5,5]]],["UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A",[]],"UK3CB_BAF_H_Mk7_Camo_A","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];

CREATE_LOADOUT(sn,_baseLoadout);
COPY_ADDONS(sn,rif);


// Crewman Loadout

_baseLoadout = [["UK3CB_BAF_L22","","","",["30Rnd_556x45_Stanag_Tracer_Yellow",30],[],""],[],["UK3CB_BAF_L117A2","","","",["UK3CB_BAF_9_13Rnd",13],[],""],["UK3CB_BAF_U_CombatUniform_MTP",[["ACRE_PRC343",1],["ACE_elasticBandage",4],["ACE_morphine",1],["ACE_splint",2],["ACE_tourniquet",2],["ACE_EntrenchingTool",1]]],["UK3CB_BAF_V_Osprey_Lite",[["UK3CB_BAF_9_13Rnd",1,13],["HandGrenade",2,1],["SmokeShell",2,1],["30Rnd_556x45_Stanag_Tracer_Yellow",5,30]]],[],"UK3CB_BAF_H_CrewHelmet_ESS_A","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];

CREATE_LOADOUT(crew,_baseLoadout);


// Small crate loadout
CREATE_CRATE(small);

ADD_RIFLE_TO_CRATE(small,rif,2);
ADD_LAUNCHER_TO_CRATE(small,lat,2);
ADD_PISTOL_TO_CRATE(small,rif,2);

ADD_PISTOL_AMMO_TO_CRATE(small,rif,6);
ADD_RIFLE_AMMO_TO_CRATE(small,rif,30);
ADD_RIFLE_AMMO_TO_CRATE(small,ar,4);
ADD_RIFLE_AMMO_TO_CRATE(small,sn,5);
ADD_RIFLE_AMMO_TO_CRATE(small,crew,2);
ADD_RIFLE_GRENADES_TO_CRATE(small,ftl,4);

ADD_BANDAGES_TO_CRATE(small,30);
ADD_MEDS_TO_CRATE(small,20);
ADD_BLOOD_TO_CRATE(small,6);

ADD_BACKPACKS_TO_CRATE(small,rif,2);

ADD_ITEMS_TO_CRATE(small,"ACRE_PRC343",6);
ADD_ITEMS_TO_CRATE(small,"ACRE_PRC152",2);
ADD_ITEMS_TO_CRATE(small,"ACRE_PRC148",2);
ADD_ITEMS_TO_CRATE(small,"Binocular",2);
ADD_ITEMS_TO_CRATE(small,"Toolkit",1);

FINALIZE_CRATE(small);


// Medium crate loadout
CREATE_CRATE(med);

ADD_RIFLE_TO_CRATE(med,rif,4);
ADD_LAUNCHER_TO_CRATE(med,lat,4);
ADD_PISTOL_TO_CRATE(med,rif,4);

ADD_PISTOL_AMMO_TO_CRATE(med,rif,12);
ADD_RIFLE_AMMO_TO_CRATE(med,rif,60);
ADD_RIFLE_AMMO_TO_CRATE(med,ar,8);
ADD_RIFLE_AMMO_TO_CRATE(med,sn,10);
ADD_RIFLE_AMMO_TO_CRATE(med,crew,4);
ADD_RIFLE_GRENADES_TO_CRATE(med,ftl,8);

ADD_BANDAGES_TO_CRATE(med,60);
ADD_MEDS_TO_CRATE(med,40);
ADD_BLOOD_TO_CRATE(med,12);

ADD_BACKPACKS_TO_CRATE(med,rif,4);

ADD_ITEMS_TO_CRATE(med,"ACRE_PRC343",12);
ADD_ITEMS_TO_CRATE(med,"ACRE_PRC152",4);
ADD_ITEMS_TO_CRATE(med,"ACRE_PRC148",4);
ADD_ITEMS_TO_CRATE(med,"Binocular",4);
ADD_ITEMS_TO_CRATE(med,"Toolkit",1);

FINALIZE_CRATE(med);


// Default loadout.
// If Gearscript tries to use an invalid loadout, it will fall-back to this default loadout instead.

COPY_LOADOUT(default,rif);
