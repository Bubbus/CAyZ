// START: Clothes loot-tables

_cop_clothes_item = ITEM("U_Marshal");
_cop_vest_item = ITEM("demian2435_police_vest");
_cop_hat_item = ITEM("usm_bdu_8point_blk");

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, _cop_clothes_item);
ADD_TO_LOOTGROUP(_group, _cop_vest_item);
ADD_TO_LOOTGROUP(_group, _cop_hat_item);
_cop_fullUniform = _group;

_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, BACKPACK("B_AssaultPack_blk"), WHITE);
ADD_TO_LOOTLIST(_list, BACKPACK("B_Messenger_Black_F"), WHITE);
ADD_TO_LOOTLIST(_list, BACKPACK("B_FieldPack_blk"), GREEN);
ADD_TO_LOOTLIST(_list, BACKPACK("B_ViperHarness_blk_F"), BLUE);
ADD_TO_LOOTLIST(_list, BACKPACK("UK3CB_CW_US_B_LATE_B_RIF_04"), BLUE);
_cop_backpacks = _list;

// END: Clothes loot-tables
