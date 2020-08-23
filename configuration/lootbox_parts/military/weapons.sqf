
// START: soulja gunz

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEM("UK3CB_BAF_L117A2"));
ADD_TO_LOOTGROUP(_group, ITEM("uk3cb_baf_flashlight_l105a1"));
ADD_TO_LOOTGROUP(_group, ITEMS("UK3CB_BAF_9_13Rnd",RANGE(2,4)));
_mil_pistol = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEM("UK3CB_BAF_L85A2"));
ADD_TO_LOOTGROUP(_group, ITEM("uk3cb_baf_susat"));
ADD_TO_LOOTGROUP(_group, ITEMS("30Rnd_556x45_Stanag",RANGE(6,8)));
ADD_TO_LOOTGROUP(_group, ITEMS("30Rnd_556x45_Stanag_Tracer_Yellow",RANGE(2,4)));
_mil_l85 = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEM("UK3CB_BAF_L85A3"));
ADD_TO_LOOTGROUP(_group, ITEM("rhsusf_acc_su230_c"));
ADD_TO_LOOTGROUP(_group, ITEM("acc_flashlight"));
ADD_TO_LOOTGROUP(_group, ITEM("uk3cb_baf_sffh"));
ADD_TO_LOOTGROUP(_group, ITEM("uk3cb_underbarrel_acc_afg_d"));
ADD_TO_LOOTGROUP(_group, ITEMS("30Rnd_556x45_Stanag",RANGE(6,8)));
ADD_TO_LOOTGROUP(_group, ITEMS("30Rnd_556x45_Stanag_Tracer_Yellow",RANGE(2,4)));
_mil_l85a3 = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEM("UK3CB_BAF_L1A1_Wood"));
ADD_TO_LOOTGROUP(_group, ITEM("uk3cb_baf_susat"));
ADD_TO_LOOTGROUP(_group, ITEMS("UK3CB_BAF_762_20Rnd",RANGE(6,8)));
ADD_TO_LOOTGROUP(_group, ITEMS("UK3CB_BAF_762_20Rnd_T",RANGE(2,4)));
_mil_fal = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEM("UK3CB_BAF_L129A1"));
ADD_TO_LOOTGROUP(_group, ITEM("optic_mrco"));
ADD_TO_LOOTGROUP(_group, ITEM("acc_flashlight"));
ADD_TO_LOOTGROUP(_group, ITEM("uk3cb_underbarrel_acc_grippod"));
ADD_TO_LOOTGROUP(_group, ITEMS("UK3CB_BAF_762_L42A1_20Rnd",RANGE(6,8)));
ADD_TO_LOOTGROUP(_group, ITEMS("UK3CB_BAF_762_L42A1_20Rnd_T",RANGE(2,4)));
_mil_ar10 = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEM("UK3CB_BAF_L128A1"));
ADD_TO_LOOTGROUP(_group, ITEM("acc_flashlight"));
ADD_TO_LOOTGROUP(_group, ITEMS("UK3CB_BAF_12G_Pellets",RANGE(8,12)));
ADD_TO_LOOTGROUP(_group, ITEMS("UK3CB_BAF_12G_Slugs",RANGE(4,6)));
_mil_shotgun = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEM("UK3CB_BAF_L115A3"));
ADD_TO_LOOTGROUP(_group, ITEM("hlc_optic_leupoldm3a"));
ADD_TO_LOOTGROUP(_group, ITEM("ACE_RangeCard"));
ADD_TO_LOOTGROUP(_group, ITEM("ACE_Kestrel4500"));
ADD_TO_LOOTGROUP(_group, ITEMS("UK3CB_BAF_338_5Rnd",RANGE(7,10)));
ADD_TO_LOOTGROUP(_group, ITEMS("UK3CB_BAF_338_5Rnd_Tracer",RANGE(7,10)));
_mil_sniper = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEM("UK3CB_BAF_L7A2"));
ADD_TO_LOOTGROUP(_group, ITEM("uk3cb_baf_susat"));
ADD_TO_LOOTGROUP(_group, ITEMS("UK3CB_BAF_762_100Rnd",RANGE(6,8)));
ADD_TO_LOOTGROUP(_group, ITEMS("UK3CB_BAF_762_100Rnd_T",RANGE(2,3)));
_mil_l7a2 = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEM("UK3CB_BAF_L110_762"));
ADD_TO_LOOTGROUP(_group, ITEM("rhsusf_acc_eotech_xps3"));
ADD_TO_LOOTGROUP(_group, ITEM("acc_flashlight"));
ADD_TO_LOOTGROUP(_group, ITEMS("UK3CB_BAF_762_100Rnd",RANGE(6,8)));
ADD_TO_LOOTGROUP(_group, ITEMS("UK3CB_BAF_762_100Rnd_T",RANGE(2,3)));
_mil_l110 = _group;

// END: soulja gunz




// START: gun lists

_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, _mil_l85, WHITE);
ADD_TO_LOOTLIST(_list, _mil_l85a3, BLUE);
_mil_assaultRifle = _list;

_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, _mil_fal, WHITE);
ADD_TO_LOOTLIST(_list, _mil_ar10, BLUE);
_mil_battleRifle = _list;

_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, _mil_l7a2, WHITE);
ADD_TO_LOOTLIST(_list, _mil_l110, BLUE);
_mil_autoRifle = _list;

_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, _mil_shotgun, WHITE);
ADD_TO_LOOTLIST(_list, _mil_sniper, WHITE);
_mil_specialGun = _list;

// END: gun lists




//START: Mashup lists

_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, _mil_assaultRifle, WHITE);
ADD_TO_LOOTLIST(_list, _mil_battleRifle, GREEN);
ADD_TO_LOOTLIST(_list, _mil_specialGun, PURPLE);
_mil_combatRifle = _list;

_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, _mil_battleRifle, WHITE);
ADD_TO_LOOTLIST(_list, _mil_autoRifle, BLUE);
ADD_TO_LOOTLIST(_list, _mil_specialGun, PURPLE);
_mil_heavyRifle = _list;

_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, _mil_assaultRifle, WHITE);
ADD_TO_LOOTLIST(_list, _mil_battleRifle, GREEN);
ADD_TO_LOOTLIST(_list, _mil_autoRifle, BLUE);
ADD_TO_LOOTLIST(_list, _mil_specialGun, BLUE);
_mil_guns = _list;

//END: Mashup lists
