

// START: Meds

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
_med_crbn_large = _group;

// END: Meds
