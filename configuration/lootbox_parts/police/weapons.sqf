

// START: Precision scopes

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEM("optic_holosight_smg_blk_f"));
ADD_TO_LOOTGROUP(_group, ITEM("acc_flashlight"));
ADD_TO_LOOTGROUP(_group, ITEM("rhsusf_acc_tdstubby_blk"));
_cop_mp5Accessories = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEM("optic_mrco"));
ADD_TO_LOOTGROUP(_group, ITEM("acc_flashlight"));
ADD_TO_LOOTGROUP(_group, ITEM("rhsusf_acc_grip2"));
_cop_416Accessories = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEM("rhsusf_acc_leupoldmk4_2_mrds"));
ADD_TO_LOOTGROUP(_group, ITEM("ACE_RangeCard"));
ADD_TO_LOOTGROUP(_group, ITEM("ACE_Kestrel4500"));
_cop_sniperAccessories = _group;

// END: Precision scopes




// START: Cop guns

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEM("rhsusf_weap_glock17g4"));
ADD_TO_LOOTGROUP(_group, ITEM("acc_flashlight_pistol"));
ADD_TO_LOOTGROUP(_group, ITEMS("rhsusf_mag_17Rnd_9x19_JHP",RANGE(2,4)));
_cop_pistol = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEM("hlc_smg_mp5N_tac"));
ADD_TO_LOOTGROUP(_group, ITEMS("hlc_30Rnd_9x19_GD_MP5",RANGE(5,7)));
ADD_TO_LOOTGROUP(_group, _cop_mp5Accessories);
_cop_mp5 = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEM("rhs_weap_hk416d145"));
ADD_TO_LOOTGROUP(_group, ITEMS("30Rnd_556x45_Stanag_green",RANGE(4,6)));
ADD_TO_LOOTGROUP(_group, ITEMS("30Rnd_556x45_Stanag_Tracer_Green",RANGE(2,3)));
ADD_TO_LOOTGROUP(_group, _cop_416Accessories);
_cop_416 = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEM("UK3CB_BAF_L115A3_BL"));
ADD_TO_LOOTGROUP(_group, ITEMS("UK3CB_BAF_338_5Rnd_Tracer",RANGE(8,12)));
ADD_TO_LOOTGROUP(_group, _cop_sniperAccessories);
_cop_sniper = _group;

// END: Cop guns




// START: Copper poppers

_list = LOOTLIST(1);

ADD_TO_LOOTLIST(_list, _cop_pistol, WHITE);
ADD_TO_LOOTLIST(_list, _cop_mp5, GREEN);
ADD_TO_LOOTLIST(_list, _cop_416, BLUE);
ADD_TO_LOOTLIST(_list, _cop_sniper, BLUE);
_cop_guns = _list;

// END: copa popa
