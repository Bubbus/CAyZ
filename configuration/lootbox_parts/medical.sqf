

// START: Meds

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_fieldDressing",RANGE(3,5)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_morphine",RANGE(1,2)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_epinephrine",RANGE(1,2)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_salineIV_500",RANGE(1,2)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_splint",RANGE(1,2)));
_med_lowtier_tiny = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_fieldDressing",RANGE(7,10)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_morphine",RANGE(2,4)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_epinephrine",RANGE(2,4)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_salineIV_500",RANGE(2,3)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_splint",RANGE(2,3)));
_med_lowtier_small = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_fieldDressing",RANGE(25,30)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_morphine",RANGE(8,12)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_epinephrine",RANGE(6,10)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_salineIV_500",RANGE(8,12)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_splint",RANGE(10,12)));
_med_lowtier_large = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_elasticBandage",RANGE(2,3)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_packingBandage",RANGE(2,3)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_morphine",RANGE(1,2)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_epinephrine",RANGE(1,2)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_adenosine",RANGE(1,2)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_bloodIV_500",RANGE(1,2)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_splint",RANGE(1,2)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_tourniquet",RANGE(1,2)));
_med_hightier_tiny = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_elasticBandage",RANGE(4,6)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_packingBandage",RANGE(3,4)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_morphine",RANGE(2,4)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_epinephrine",RANGE(2,4)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_adenosine",RANGE(2,4)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_bloodIV_500",RANGE(2,3)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_splint",RANGE(2,3)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_tourniquet",RANGE(2,4)));
_med_hightier_small = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_elasticBandage",RANGE(15,18)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_packingBandage",RANGE(10,12)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_morphine",RANGE(8,12)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_epinephrine",RANGE(6,10)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_salineIV_500",RANGE(8,12)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_adenosine",RANGE(6,10)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_splint",RANGE(10,12)));
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_tourniquet",RANGE(6,10)));
_med_hightier_large = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEMS("ACE_bodyBag",RANGE(4,6)));
ADD_TO_LOOTGROUP(_group, ITEM("ACE_personalAidKit"));
ADD_TO_LOOTGROUP(_group, ITEM("ACE_surgicalKit"));
_med_tools = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEMS("RyanZombiesAntiVirusTemporary_Item",RANGE(2,3)));
ADD_TO_LOOTGROUP(_group, ITEMS("RyanZombiesAntiVirusCure_Item",RANGE(0,1)));
ADD_TO_LOOTGROUP(_group, ITEMS("Cre8ive_Med_KIO3",RANGE(2,4)));
ADD_TO_LOOTGROUP(_group, ITEMS("Cre8ive_GeigerScout",RANGE(0,1)));
_med_crbn_small = _group;

_group = LOOTGROUP();
ADD_TO_LOOTGROUP(_group, ITEMS("RyanZombiesAntiVirusTemporary_Item",RANGE(6,9)));
ADD_TO_LOOTGROUP(_group, ITEMS("RyanZombiesAntiVirusCure_Item",RANGE(1,4)));
ADD_TO_LOOTGROUP(_group, ITEMS("Cre8ive_Med_KIO3",RANGE(8,10)));
ADD_TO_LOOTGROUP(_group, ITEMS("Cre8ive_GeigerScout",RANGE(1,3)));
ADD_TO_LOOTGROUP(_group, ITEM("U_B_CBRN_Suit_01_MTP_F"));
ADD_TO_LOOTGROUP(_group, BACKPACK("B_SCBA_01_F"));
ADD_TO_LOOTGROUP(_group, ITEM("G_AirPurifyingRespirator_02_sand_F"));
_med_crbn_large = _group;

// END: Meds



// START: Mashups

_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, _med_lowtier_tiny, WHITE);
ADD_TO_LOOTLIST(_list, _med_hightier_tiny, GREEN);
_med_tiny = _list;

_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, _med_lowtier_small, WHITE);
ADD_TO_LOOTLIST(_list, _med_hightier_small, GREEN);
_med_small = _list;

_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, _med_lowtier_large, WHITE);
ADD_TO_LOOTLIST(_list, _med_hightier_large, GREEN);
_med_large = _list;

// END: Mashups



// START: Lootboxes

CREATE_LOOTBOX(med_lowtier_tiny);
ADD_TO_LOOTBOX(med_lowtier_tiny,_med_lowtier_tiny);

CREATE_LOOTBOX(med_lowtier_small);
ADD_TO_LOOTBOX(med_lowtier_small,_med_lowtier_small);

CREATE_LOOTBOX(med_lowtier_large);
ADD_TO_LOOTBOX(med_lowtier_large,_med_lowtier_large);

CREATE_LOOTBOX(med_hightier_tiny);
ADD_TO_LOOTBOX(med_hightier_tiny,_med_hightier_tiny);

CREATE_LOOTBOX(med_hightier_small);
ADD_TO_LOOTBOX(med_hightier_small,_med_hightier_small);

CREATE_LOOTBOX(med_hightier_large);
ADD_TO_LOOTBOX(med_hightier_large,_med_hightier_large);

CREATE_LOOTBOX(med_tools);
ADD_TO_LOOTBOX(med_tools,_med_tools);

CREATE_LOOTBOX(med_crbn_small);
ADD_TO_LOOTBOX(med_crbn_small,_med_crbn_small);

CREATE_LOOTBOX(med_crbn_large);
ADD_TO_LOOTBOX(med_crbn_large,_med_crbn_large);

CREATE_LOOTBOX(med_small_crbnchance);
ADD_TO_LOOTBOX(med_small_crbnchance,_med_small);
ADD_TO_LOOTBOX(med_small_crbnchance,CHANCE_OF(_med_tools,WHITE));
ADD_TO_LOOTBOX(med_small_crbnchance,CHANCE_OF(_med_crbn_small,WHITE));

CREATE_LOOTBOX(med_large_crbnchance);
ADD_TO_LOOTBOX(med_large_crbnchance,_med_large);
ADD_TO_LOOTBOX(med_large_crbnchance,CHANCE_OF(_med_tools,WHITE));
ADD_TO_LOOTBOX(med_large_crbnchance,CHANCE_OF(_med_crbn_large,WHITE));

CREATE_LOOTBOX(med_small_crbn);
ADD_TO_LOOTBOX(med_small_crbn,_med_small);
ADD_TO_LOOTBOX(med_small_crbn,CHANCE_OF(_med_tools,WHITE));
ADD_TO_LOOTBOX(med_small_crbn,_med_crbn_small);

CREATE_LOOTBOX(med_large_crbn);
ADD_TO_LOOTBOX(med_large_crbn,_med_large);
ADD_TO_LOOTBOX(med_large_crbn,CHANCE_OF(_med_tools,WHITE));
ADD_TO_LOOTBOX(med_large_crbn,_med_crbn_large);

// END: Lootboxes
