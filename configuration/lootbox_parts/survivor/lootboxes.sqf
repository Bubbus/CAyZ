// Weapons

CREATE_LOOTBOX(surv_guns);
ADD_TO_LOOTBOX(surv_guns,MULTIPLE(_surv_gun,2));
ADD_TO_LOOTBOX(surv_guns,MULTIPLE(_surv_pistol,2));

CREATE_LOOTBOX(surv_guns_big);
ADD_TO_LOOTBOX(surv_guns_big,MULTIPLE(_surv_gun,6));
ADD_TO_LOOTBOX(surv_guns_big,MULTIPLE(_surv_pistol,4));

CREATE_LOOTBOX(surv_supplies_small);
ADD_TO_LOOTBOX(surv_supplies_small,_surv_gun);
ADD_TO_LOOTBOX(surv_supplies_small,_surv_pistol);
ADD_TO_LOOTBOX(surv_supplies_small,_surv_clothes);
ADD_TO_LOOTBOX(surv_supplies_small,_surv_vests);
ADD_TO_LOOTBOX(surv_supplies_small,_surv_backpacks);
ADD_TO_LOOTBOX(surv_supplies_small,_med_lowtier_tiny);

CREATE_LOOTBOX(surv_supplies);
ADD_TO_LOOTBOX(surv_supplies,MULTIPLE(_surv_gun,2));
ADD_TO_LOOTBOX(surv_supplies,MULTIPLE(_surv_pistol,2));
ADD_TO_LOOTBOX(surv_supplies,MULTIPLE(_surv_clothes,2));
ADD_TO_LOOTBOX(surv_supplies,MULTIPLE(_surv_vests,2));
ADD_TO_LOOTBOX(surv_supplies,MULTIPLE(_surv_backpacks,2));
ADD_TO_LOOTBOX(surv_supplies,_med_lowtier_small);
