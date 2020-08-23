// START: Clothes loot-tables

_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_U_CombatUniform_MTP"), WHITE);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve"), WHITE);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_U_CombatUniform_MTP_RM"), GREEN);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve_RM"), GREEN);
_mil_uniforms = _list;

_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_V_Osprey_Rifleman_A"), WHITE);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_V_Osprey_Rifleman_B"), WHITE);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_V_Osprey_Rifleman_C"), WHITE);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_V_Osprey_Rifleman_D"), WHITE);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_V_Osprey_Rifleman_E"), WHITE);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_V_Osprey_Rifleman_F"), WHITE);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_V_Osprey_MG_A"), GREEN);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_V_Osprey_MG_B"), GREEN);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_V_Osprey_Medic_A"), GREEN);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_V_Osprey_Medic_B"), GREEN);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_V_Osprey_Medic_C"), GREEN);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_V_Osprey_Medic_D"), GREEN);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_V_Osprey_Marksman_A"), GREEN);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_V_Osprey_Grenadier_A"), BLUE);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_V_Osprey_Grenadier_B"), BLUE);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_V_Osprey_SL_A"), BLUE);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_V_Osprey_SL_B"), BLUE);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_V_Osprey_SL_C"), BLUE);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_V_Osprey_SL_D"), BLUE);
_mil_vests = _list;

_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_H_Mk7_Camo_A"), WHITE);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_H_Mk7_Camo_B"), WHITE);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_H_Mk7_Camo_C"), WHITE);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_H_Mk7_Camo_D"), WHITE);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_H_Mk7_Camo_E"), WHITE);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_H_Mk7_Camo_F"), WHITE);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_H_Mk7_Camo_CESS_A"), GREEN);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_H_Mk7_Camo_CESS_B"), GREEN);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_H_Mk7_Camo_ESS_A"), GREEN);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_H_Mk7_Camo_ESS_B"), GREEN);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_H_Mk7_Scrim_A"), BLUE);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_H_Mk7_Scrim_B"), BLUE);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_H_Mk7_Scrim_C"), BLUE);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_H_Mk7_Scrim_D"), BLUE);
_mil_helmets = _list;

_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_H_Beret_SG"), WHITE);
ADD_TO_LOOTLIST(_list, ITEM("UK3CB_BAF_H_Beret_SR"), WHITE);
_mil_berets = _list;

_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, _mil_helmets, WHITE);
ADD_TO_LOOTLIST(_list, _mil_berets, WHITE);
_mil_hats = _list;

_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, BACKPACK("UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A"), WHITE);
ADD_TO_LOOTLIST(_list, BACKPACK("UK3CB_BAF_B_Bergen_MTP_Rifleman_L_B"), GREEN);
ADD_TO_LOOTLIST(_list, BACKPACK("UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C"), BLUE);
ADD_TO_LOOTLIST(_list, BACKPACK("UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D"), BLUE);
_mil_backpacks = _list;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEM("U_B_CBRN_Suit_01_MTP_F"));
ADD_TO_LOOTGROUP(_group, BACKPACK("B_SCBA_01_F"));
ADD_TO_LOOTGROUP(_group, ITEM("G_AirPurifyingRespirator_02_sand_F"));
ADD_TO_LOOTGROUP(_group, ITEM("UK3CB_BAF_V_Pilot_A"));
_mil_crbn_fullUniform = _group;

// END: Clothes loot-tables
