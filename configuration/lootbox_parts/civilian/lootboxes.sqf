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
