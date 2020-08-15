

// START: Precision scopes

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEM("ACE_RangeCard"));
ADD_TO_LOOTGROUP(_group, ITEM("ACE_Kestrel4500"));
_civ_precisionScopeAccessories = _group;

_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, ITEM("optic_khs_old"), WHITE);
ADD_TO_LOOTLIST(_list, ITEM("optic_khs_blk"), GREEN);
ADD_TO_LOOTLIST(_list, ITEM("optic_dms_weathered_f"), BLUE);
ADD_TO_LOOTLIST(_list, ITEM("optic_ams"), PURPLE);
_civ_precisionScope = _list;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, _civ_precisionScope);
ADD_TO_LOOTGROUP(_group, _civ_precisionScopeAccessories);
_civ_precisionScopeWithAccessories = _group;

// END: Precision scopes




// START: Farmer guns

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEM("Cre8ive_Rfl_CV_557"));
ADD_TO_LOOTGROUP(_group, ITEMS("Cre8ive_Mag_CV_557_5Rnd",RANGE(6,8)));
ADD_TO_LOOTGROUP(_group, ITEMS("Cre8ive_Mag_CV_557_5Rnd_Tracer_Red",RANGE(2,4)));
ADD_TO_LOOTGROUP(_group, ITEM("optic_khs_blk"));
ADD_TO_LOOTGROUP(_group, _civ_precisionScopeAccessories);
_civ_cv557 = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEM("rhs_weap_m14_ris"));
ADD_TO_LOOTGROUP(_group, ITEMS("10Rnd_Mk14_762x51_Mag",RANGE(5,7)));
ADD_TO_LOOTGROUP(_group, ITEM("optic_khs_old"));
ADD_TO_LOOTGROUP(_group, _civ_precisionScopeAccessories);
_civ_m14 = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEM("Cre8ive_Rfl_CV_Goose"));
ADD_TO_LOOTGROUP(_group, ITEMS("Cre8ive_Mag_2Rnd_Buck",RANGE(15,25)));
ADD_TO_LOOTGROUP(_group, ITEMS("Cre8ive_Mag_2Rnd_Slug",RANGE(5,10)));
_civ_cvGoose = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEM("rhs_weap_Izh18"));
ADD_TO_LOOTGROUP(_group, ITEMS("rhsgref_1Rnd_00Buck",RANGE(30,50)));
ADD_TO_LOOTGROUP(_group, ITEMS("rhsgref_1Rnd_Slug",RANGE(10,20)));
_civ_izh18 = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEM("UK3CB_Enfield"));
ADD_TO_LOOTGROUP(_group, ITEMS("UK3CB_Enfield_Mag",RANGE(5,7)));
_civ_enfield = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEM("rhs_weap_tt33"));
ADD_TO_LOOTGROUP(_group, ITEMS("rhs_mag_762x25_8",RANGE(2,4)));
_civ_tt33 = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEM("rhs_weap_type94_new"));
ADD_TO_LOOTGROUP(_group, ITEMS("rhs_mag_6x8mm_mhp",RANGE(3,6)));
_civ_nambu = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEM("Cre8ive_Pst_CV_Ruka_357"));
ADD_TO_LOOTGROUP(_group, ITEMS("Cre8ive_Mag_6Rnd_357_Speedloader_Tracer_Red",RANGE(3,6)));
_civ_ruka = _group;

// END: Farmer guns




// START: Farmer gun loot tables

_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, _civ_cv557, WHITE);
ADD_TO_LOOTLIST(_list, _civ_enfield, GREEN);
ADD_TO_LOOTLIST(_list, _civ_m14, BLUE);
_civ_randomRifle = _list;

_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, _civ_cvGoose, WHITE);
ADD_TO_LOOTLIST(_list, _civ_izh18, WHITE);
_civ_randomShotgun = _list;

_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, _civ_randomRifle, WHITE);
ADD_TO_LOOTLIST(_list, _civ_randomShotgun, WHITE);
_civ_randomLongGun = _list;

_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, _civ_tt33, WHITE);
ADD_TO_LOOTLIST(_list, _civ_nambu, WHITE);
ADD_TO_LOOTLIST(_list, _civ_ruka, GREEN);
_civ_randomPistol = _list;

// END: Farmer gun loot tables
