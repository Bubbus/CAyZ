_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, _civ_randomPistol, WHITE);
ADD_TO_LOOTLIST(_list, _civ_randomShotgun, GREEN);
ADD_TO_LOOTLIST(_list, _cop_mp5, GREEN);
ADD_TO_LOOTLIST(_list, _mil_l85, BLUE);
ADD_TO_LOOTLIST(_list, _cop_416, BLUE);
_surv_smallGun = _list;

_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, _civ_randomShotgun, WHITE);
ADD_TO_LOOTLIST(_list, _cop_mp5, WHITE);
ADD_TO_LOOTLIST(_list, _cop_416, GREEN);
ADD_TO_LOOTLIST(_list, _civ_randomRifle, GREEN);
ADD_TO_LOOTLIST(_list, _mil_l85, GREEN);
ADD_TO_LOOTLIST(_list, _mil_battleRifle, GREEN);
_surv_mediumGun = _list;

_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, _cop_416, WHITE);
ADD_TO_LOOTLIST(_list, _mil_l85, WHITE);
ADD_TO_LOOTLIST(_list, _mil_battleRifle, GREEN);
ADD_TO_LOOTLIST(_list, _mil_sniper, GREEN);
ADD_TO_LOOTLIST(_list, _mil_autoRifle, BLUE);
_surv_bigGun = _list;


_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, _surv_smallGun, WHITE);
ADD_TO_LOOTLIST(_list, _surv_mediumGun, GREEN);
ADD_TO_LOOTLIST(_list, _surv_bigGun, BLUE);
_surv_gun = _list;

_list = LOOTLIST(1);
ADD_TO_LOOTLIST(_list, _civ_randomPistol, WHITE);
ADD_TO_LOOTLIST(_list, _cop_pistol, BLUE);
ADD_TO_LOOTLIST(_list, _mil_pistol, PURPLE);
_surv_pistol = _list;
