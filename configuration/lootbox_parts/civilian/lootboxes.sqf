// Weapons

CREATE_LOOTBOX(civ_farm_guns);
ADD_TO_LOOTBOX(civ_farm_guns,MULTIPLE(_civ_randomLongGun,2));
ADD_TO_LOOTBOX(civ_farm_guns,MULTIPLE(_civ_randomPistol,2));

CREATE_LOOTBOX(civ_farm_gun);
ADD_TO_LOOTBOX(civ_farm_gun,MULTIPLE(_civ_randomLongGun,1));


// Clothes

CREATE_LOOTBOX(civ_casual_clothes);
ADD_TO_LOOTBOX(civ_casual_clothes,MULTIPLE(_civ_casualClothes,3));
ADD_TO_LOOTBOX(civ_casual_clothes,_civ_allBackpacks);
ADD_TO_LOOTBOX(civ_casual_clothes,CHANCE_OF(_civ_vests,WHITE));

CREATE_LOOTBOX(civ_casual_clothes_big);
ADD_TO_LOOTBOX(civ_casual_clothes_big,MULTIPLE(_civ_casualClothes,6));
ADD_TO_LOOTBOX(civ_casual_clothes_big,MULTIPLE(_civ_allBackpacks,2));
ADD_TO_LOOTBOX(civ_casual_clothes_big,MULTIPLE(_civ_vests,2));

CREATE_LOOTBOX(civ_farmer_clothes);
ADD_TO_LOOTBOX(civ_farmer_clothes,MULTIPLE(_civ_farmingClothes,3));
ADD_TO_LOOTBOX(civ_farmer_clothes,CHANCE_OF(_civ_allBackpacks,WHITE));
ADD_TO_LOOTBOX(civ_farmer_clothes,CHANCE_OF(_civ_vests,WHITE));

CREATE_LOOTBOX(civ_worker_clothes);
ADD_TO_LOOTBOX(civ_worker_clothes,MULTIPLE(_civ_workerClothes,3));
ADD_TO_LOOTBOX(civ_worker_clothes,MULTIPLE(_civ_hivisVests,3));
ADD_TO_LOOTBOX(civ_worker_clothes,CHANCE_OF(_civ_highTierVests,BLUE));

CREATE_LOOTBOX(civ_fancy_clothes);
ADD_TO_LOOTBOX(civ_fancy_clothes,MULTIPLE(_civ_fancyClothes,3));


// Supplies

CREATE_LOOTBOX(civ_supplies);
ADD_TO_LOOTBOX(civ_supplies,MULTIPLE(_civ_casualClothes,3));
ADD_TO_LOOTBOX(civ_supplies,_civ_allBackpacks);
ADD_TO_LOOTBOX(civ_supplies,CHANCE_OF(_civ_vests,WHITE));
ADD_TO_LOOTBOX(civ_supplies,_med_lowtier_small);

CREATE_LOOTBOX(civ_supplies_small);
ADD_TO_LOOTBOX(civ_supplies_small,_civ_casualClothes);
ADD_TO_LOOTBOX(civ_supplies_small,_civ_allBackpacks);
ADD_TO_LOOTBOX(civ_supplies_small,CHANCE_OF(_civ_vests,WHITE));
ADD_TO_LOOTBOX(civ_supplies_small,_med_lowtier_tiny);


// Medical

CREATE_LOOTBOX(civ_med_small);
ADD_TO_LOOTBOX(civ_med_small,_med_lowtier_tiny);
ADD_TO_LOOTBOX(civ_med_small,CHANCE_OF(_med_lowtier_tiny,WHITE));

CREATE_LOOTBOX(civ_med_medium);
ADD_TO_LOOTBOX(civ_med_medium,_med_lowtier_small);
ADD_TO_LOOTBOX(civ_med_medium,CHANCE_OF(_med_lowtier_tiny,WHITE));
ADD_TO_LOOTBOX(civ_med_medium,CHANCE_OF(_med_lowtier_tiny,WHITE));

CREATE_LOOTBOX(civ_med_large);
ADD_TO_LOOTBOX(civ_med_large,_med_lowtier_large);
ADD_TO_LOOTBOX(civ_med_large,CHANCE_OF(_med_hightier_tiny,WHITE));
ADD_TO_LOOTBOX(civ_med_large,CHANCE_OF(_med_lowtier_small,WHITE));
ADD_TO_LOOTBOX(civ_med_large,_med_tools);
