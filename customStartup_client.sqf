
_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
firework11= _soundPath + "sounds\firework1.ogg";
firework22= _soundPath + "sounds\firework2.ogg";
firework33= _soundPath + "sounds\firework3.ogg";


_createBurper =
{
	params ["_pos"];

	[_pos] remoteExec ["fnc_zen_createBurper", 2];
};

["[CayZ] Anomalies", "Burper", _createBurper] call zen_custom_modules_fnc_register;


_createFartySmall =
{
	params ["_pos"];

	[_pos, 10, 5] remoteExec ["fnc_zen_createFarty", 2];
};

["[CayZ] Anomalies", "Farty (20m)", _createFartySmall] call zen_custom_modules_fnc_register;


_createFartyNormal =
{
	params ["_pos"];

	[_pos, 25, 10] remoteExec ["fnc_zen_createFarty", 2];
};

["[CayZ] Anomalies", "Farty (50m)", _createFartyNormal] call zen_custom_modules_fnc_register;


_createFartyHuge =
{
	params ["_pos"];

	[_pos, 37.5, 20] remoteExec ["fnc_zen_createFarty", 2];
};

["[CayZ] Anomalies", "Farty (75m)", _createFartyHuge] call zen_custom_modules_fnc_register;


_createFlamer50 =
{
	params ["_pos"];

	[_pos, 50] remoteExec ["fnc_zen_createFlamer", 2];
};

["[CayZ] Anomalies", "Flamer (100m)", _createFlamer50] call zen_custom_modules_fnc_register;


_createFlamer75 =
{
	params ["_pos"];

	[_pos, 75] remoteExec ["fnc_zen_createFlamer", 2];
};

["[CayZ] Anomalies", "Flamer (150m)", _createFlamer75] call zen_custom_modules_fnc_register;


_createFlamer100 =
{
	params ["_pos"];

	[_pos, 100] remoteExec ["fnc_zen_createFlamer", 2];
};

["[CayZ] Anomalies", "Flamer (200m)", _createFlamer100] call zen_custom_modules_fnc_register;


_createFlamer150 =
{
	params ["_pos"];

	[_pos, 150] remoteExec ["fnc_zen_createFlamer", 2];
};

["[CayZ] Anomalies", "Flamer (300m)", _createFlamer150] call zen_custom_modules_fnc_register;


_createFlamer200 =
{
	params ["_pos"];

	[_pos, 200] remoteExec ["fnc_zen_createFlamer", 2];
};

["[CayZ] Anomalies", "Flamer (400m)", _createFlamer200] call zen_custom_modules_fnc_register;


_createSparky10 =
{
	params ["_pos"];

	[_pos, 10] remoteExec ["fnc_zen_createSparky", 2];
};

["[CayZ] Anomalies", "Sparky (20m)", _createSparky10] call zen_custom_modules_fnc_register;


_createSparky20 =
{
	params ["_pos"];

	[_pos, 20] remoteExec ["fnc_zen_createSparky", 2];
};

["[CayZ] Anomalies", "Sparky (40m)", _createSparky20] call zen_custom_modules_fnc_register;


_createSparky40 =
{
	params ["_pos"];

	[_pos, 40] remoteExec ["fnc_zen_createSparky", 2];
};

["[CayZ] Anomalies", "Sparky (80m)", _createSparky40] call zen_custom_modules_fnc_register;


_createSparky100 =
{
	params ["_pos"];

	[_pos, 100] remoteExec ["fnc_zen_createSparky", 2];
};

["[CayZ] Anomalies", "Sparky (200m)", _createSparky100] call zen_custom_modules_fnc_register;


_createMegaSparky100 =
{
	params ["_pos"];

	[_pos, 100] remoteExec ["fnc_zen_createMegaSparky", 2];
};

["[CayZ] Anomalies", "MEGA Sparky (200m)", _createMegaSparky100] call zen_custom_modules_fnc_register;


_spawnLootbox =
{
    params ["_pos"];

    _object = "rhs_3Ya40_1_single" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];

	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "civ_med_small"] spawn f_fnc_assignLoot;
};

["[CayZ] Lootboxes (Civilian)", "Medical (Small)", _spawnLootbox] call zen_custom_modules_fnc_register;


_spawnLootbox =
{
    params ["_pos"];

    _object = "rhs_gear_crate" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];

	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "civ_med_medium"] spawn f_fnc_assignLoot;
};

["[CayZ] Lootboxes (Civilian)", "Medical (Medium)", _spawnLootbox] call zen_custom_modules_fnc_register;


_spawnLootbox =
{
    params ["_pos"];

    _object = "rhs_spec_weapons_crate" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];

	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "civ_med_large"] spawn f_fnc_assignLoot;
};

["[CayZ] Lootboxes (Civilian)", "Medical (Large)", _spawnLootbox] call zen_custom_modules_fnc_register;

_spawnLootbox =
{
    params ["_pos"];

    _object = "rhs_spec_weapons_crate" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];

	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "civ_med_large"] spawn f_fnc_assignLoot;
	[_object, "civ_med_large"] spawn f_fnc_assignLoot;

};

["[CayZ] Lootboxes (Civilian)", "Medical (Mass Cas)", _spawnLootbox] call zen_custom_modules_fnc_register;


_spawnLootbox =
{
    params ["_pos"];

    _object = "rhs_gear_crate" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];

	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "civ_supplies"] spawn f_fnc_assignLoot;
};

["[CayZ] Lootboxes (Civilian)", "Supplies", _spawnLootbox] call zen_custom_modules_fnc_register;

_spawnLootbox =
{
    params ["_pos"];

    _object = "rhs_7ya37_1_single" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];

	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "civ_supplies_small"] spawn f_fnc_assignLoot;
};

["[CayZ] Lootboxes (Civilian)", "Supplies (Small)", _spawnLootbox] call zen_custom_modules_fnc_register;

_spawnLootbox =
{
    params ["_pos"];

    _object = "rhs_7ya37_1_single" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];

	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "civ_farm_gun"] spawn f_fnc_assignLoot;
};

["[CayZ] Lootboxes (Civilian)", "Guns (Small)", _spawnLootbox] call zen_custom_modules_fnc_register;

_spawnLootbox =
{
    params ["_pos"];

    _object = "Box_Syndicate_Wps_F" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];

	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "civ_farm_guns"] spawn f_fnc_assignLoot;
};

["[CayZ] Lootboxes (Civilian)", "Guns", _spawnLootbox] call zen_custom_modules_fnc_register;

_spawnLootbox =
{
    params ["_pos"];

    _object = "Box_Syndicate_Ammo_F" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];

	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "civ_casual_clothes"] spawn f_fnc_assignLoot;
};

["[CayZ] Lootboxes (Civilian)", "Clothes (Casual)", _spawnLootbox] call zen_custom_modules_fnc_register;


_spawnLootbox =
{
    params ["_pos"];

    _object = "rhs_gear_crate" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];

	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "civ_casual_clothes_big"] spawn f_fnc_assignLoot;
};

["[CayZ] Lootboxes (Civilian)", "Clothes (Casual, Large)", _spawnLootbox] call zen_custom_modules_fnc_register;


_spawnLootbox =
{
    params ["_pos"];

    _object = "Box_Syndicate_Wps_F" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];

	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "civ_farmer_clothes"] spawn f_fnc_assignLoot;
};

["[CayZ] Lootboxes (Civilian)", "Clothes (Farmer)", _spawnLootbox] call zen_custom_modules_fnc_register;


_spawnLootbox =
{
    params ["_pos"];

    _object = "Box_Syndicate_WpsLaunch_F" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];

	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "civ_worker_clothes"] spawn f_fnc_assignLoot;
};

["[CayZ] Lootboxes (Civilian)", "Clothes (Worker)", _spawnLootbox] call zen_custom_modules_fnc_register;


_spawnLootbox =
{
    params ["_pos"];

    _object = "Box_GEN_Equip_F" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];

	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "civ_fancy_clothes"] spawn f_fnc_assignLoot;
};

["[CayZ] Lootboxes (Civilian)", "Clothes (Fancy)", _spawnLootbox] call zen_custom_modules_fnc_register;

_spawnLootbox =
{
    params ["_pos"];

    _object = "Box_Syndicate_Wps_F" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];

	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "surv_guns"] spawn f_fnc_assignLoot;
};

["[CayZ] Lootboxes (Survivor)", "Guns", _spawnLootbox] call zen_custom_modules_fnc_register;

_spawnLootbox =
{
    params ["_pos"];

    _object = "rhs_weapon_crate" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];

	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "surv_guns_big"] spawn f_fnc_assignLoot;
};

["[CayZ] Lootboxes (Survivor)", "Guns (Large)", _spawnLootbox] call zen_custom_modules_fnc_register;

_spawnLootbox =
{
    params ["_pos"];

    _object = "rhs_gear_crate" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];

	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "surv_supplies"] spawn f_fnc_assignLoot;
};

["[CayZ] Lootboxes (Survivor)", "Supplies", _spawnLootbox] call zen_custom_modules_fnc_register;

_spawnLootbox =
{
    params ["_pos"];

    _object = "Box_Syndicate_Ammo_F" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];

	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "surv_supplies_small"] spawn f_fnc_assignLoot;
};

["[CayZ] Lootboxes (Survivor)", "Supplies (Small)", _spawnLootbox] call zen_custom_modules_fnc_register;

_spawnLootbox =
{
    params ["_pos"];

    _object = "Box_GEN_Equip_F" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];

	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "cop_uniforms_small"] spawn f_fnc_assignLoot;
};

["[CayZ] Lootboxes (Police)", "Uniforms (Small)", _spawnLootbox] call zen_custom_modules_fnc_register;

_spawnLootbox =
{
    params ["_pos"];

    _object = "rhs_gear_crate" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];

	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "cop_uniforms_big"] spawn f_fnc_assignLoot;
};

["[CayZ] Lootboxes (Police)", "Uniforms (Large)", _spawnLootbox] call zen_custom_modules_fnc_register;

_spawnLootbox =
{
    params ["_pos"];

    _object = "rhs_weapon_crate" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];

	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "cop_armoury"] spawn f_fnc_assignLoot;
};

["[CayZ] Lootboxes (Police)", "Armoury", _spawnLootbox] call zen_custom_modules_fnc_register;

_spawnLootbox =
{
    params ["_pos"];

    _object = "Box_NATO_Ammo_F" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];

	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "mil_armoury"] spawn f_fnc_assignLoot;
};

["[CayZ] Lootboxes (Military)", "Armoury", _spawnLootbox] call zen_custom_modules_fnc_register;

_spawnLootbox =
{
    params ["_pos"];

    _object = "Box_NATO_Wps_F" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];

	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "mil_armoury"] spawn f_fnc_assignLoot;
	[_object, "mil_armoury"] spawn f_fnc_assignLoot;

};

["[CayZ] Lootboxes (Military)", "Armoury (Large)", _spawnLootbox] call zen_custom_modules_fnc_register;

_spawnLootbox =
{
    params ["_pos"];

    _object = "Box_NATO_Equip_F" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];

	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "mil_uniforms_small"] spawn f_fnc_assignLoot;
};

["[CayZ] Lootboxes (Military)", "Uniforms (Small)", _spawnLootbox] call zen_custom_modules_fnc_register;

_spawnLootbox =
{
    params ["_pos"];

    _object = "Box_NATO_Equip_F" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];
	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "mil_uniforms_big"] spawn f_fnc_assignLoot;
};

["[CayZ] Lootboxes (Military)", "Uniforms (Large)", _spawnLootbox] call zen_custom_modules_fnc_register;




_spawnLootbox =
{
    params ["_pos"];

    _object = "rhs_3Ya40_1_single" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];

	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "med_small_crbnchance"] spawn f_fnc_assignLoot;
};

["[CayZ] Lootboxes (CRBN)", "Medical (Small, CRBN chance)", _spawnLootbox] call zen_custom_modules_fnc_register;


_spawnLootbox =
{
    params ["_pos"];

    _object = "rhs_3Ya40_1_single" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];

	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "med_large_crbnchance"] spawn f_fnc_assignLoot;
};

["[CayZ] Lootboxes (CRBN)", "Medical (Large, CRBN chance)", _spawnLootbox] call zen_custom_modules_fnc_register;


_spawnLootbox =
{
    params ["_pos"];

    _object = "Box_Syndicate_Ammo_F" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];
	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "med_crbn_small"] spawn f_fnc_assignLoot;
};

["[CayZ] Lootboxes (CRBN)", "CBRN (Small)", _spawnLootbox] call zen_custom_modules_fnc_register;

_spawnLootbox =
{
    params ["_pos"];

    _object = "Box_NATO_Equip_F" createVehicle _pos;
	[_object] remoteExec ["f_fnc_addObjectsToAllZeuses", 2];
	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	clearItemCargoGlobal _object;
	clearBackpackCargoGlobal _object;

    [_object, "med_crbn_large"] spawn f_fnc_assignLoot;
};

["[CayZ] Lootboxes (CRBN)", "CBRN (Large)", _spawnLootbox] call zen_custom_modules_fnc_register;

_killLights =
{
	[] remoteExec ["fnc_zen_killTheLights", 2];
};

["[CayZ] Utilities", "Kill the lights", _killLights] call zen_custom_modules_fnc_register;


_lightLights =
{
	[] remoteExec ["fnc_zen_lightTheLights", 2];
};

["[CayZ] Utilities", "Light the lights", _lightLights] call zen_custom_modules_fnc_register;


_playerSpawner =
{
	params ["_pos"];

	systemChat "This spawner will become active in 20 seconds.  Fine tune its position if needed.";
	[_pos] remoteExec ["fnc_zen_makePlayerSpawner", 2];
};

["[CayZ] Utilities", "Create player spawner", _playerSpawner] call zen_custom_modules_fnc_register;


_hellblaster =
{
	params ["_pos"];

	systemChat "The hellblast is coming.  The mission will end in 110 seconds.  You are not safe.";
	[_pos] remoteExec ["f_fnc_createHellblast", 2];

	[] spawn
	{
		uiSleep 110;
		["end1"] remoteExec ['f_fnc_broadcastEnding', 2];
	};
};

["[CayZ] END GAME HELLBLASTER", "SEND THEM TO BRASIL", _hellblaster] call zen_custom_modules_fnc_register;

_jamming =
{
	params ["_obj"];
	if !(isnull _obj) then {
		[_object, 50, 0, 0, 0, 0, 0] remoteExec  ["kyk_ew_fnc_broadcastJammerAdd", 2];
	};
};

["[CayZ] Jamming", "Radio Jammer (50m)", _jamming] call zen_custom_modules_fnc_register;

_jamming =
{
	params ["_obj"];
	if !(isnull _obj) then {
		[_object, 75, 0, 0, 0, 0, 0] remoteExec  ["kyk_ew_fnc_broadcastJammerAdd", 2];
	};
};

["[CayZ] Jamming", "Radio Jammer (75m)", _jamming] call zen_custom_modules_fnc_register;

_jamming =
{
	params ["_obj"];
	if !(isnull _obj) then {
		[_object, 100, 0, 0, 0, 0, 0] remoteExec  ["kyk_ew_fnc_broadcastJammerAdd", 2];
	};
};

["[CayZ] Jamming", "Radio Jammer (100m)", _jamming] call zen_custom_modules_fnc_register;

_jamming =
{
	params ["_obj"];
	if !(isnull _obj) then {
		[_object, 150, 0, 0, 0, 0, 0] remoteExec  ["kyk_ew_fnc_broadcastJammerAdd", 2];
	};
};

["[CayZ] Jamming", "Radio Jammer (150m)", _jamming] call zen_custom_modules_fnc_register;


_jamming =
{
	params ["_obj"];
	if !(isnull _obj) then {
		[_object, 250, 0, 0, 0, 0, 0] remoteExec  ["kyk_ew_fnc_broadcastJammerAdd", 2];
	};
};

["[CayZ] Jamming", "Radio Jammer (250m)", _jamming] call zen_custom_modules_fnc_register;


_jamming =
{
	params ["_obj"];
	if !(isnull _obj) then {
		[_object, 500, 0, 0, 0, 0, 0] remoteExec  ["kyk_ew_fnc_broadcastJammerAdd", 2];
	};
};

["[CayZ] Jamming", "Radio Jammer (500m)", _jamming] call zen_custom_modules_fnc_register;


_jamming =
{
	params ["_obj"];
	if !(isnull _obj) then {
		[_object, 750, 0, 0, 0, 0, 0] remoteExec  ["kyk_ew_fnc_broadcastJammerAdd", 2];
	};
};

["[CayZ] Jamming", "Radio Jammer (750m)", _jamming] call zen_custom_modules_fnc_register;


_jamming =
{
	params ["_obj"];
	if !(isnull _obj) then {
		[_object, 1000, 0, 0, 0, 0, 0] remoteExec  ["kyk_ew_fnc_broadcastJammerAdd", 2];
	};
};

["[CayZ] Jamming", "Radio Jammer (1km)", _jamming] call zen_custom_modules_fnc_register;


_jamming =
{
	params ["_obj"];
	if !(isnull _obj) then {
		[_object, 2000, 0, 0, 0, 0, 0] remoteExec  ["kyk_ew_fnc_broadcastJammerAdd", 2];
	};
};

["[CayZ] Jamming", "Radio Jammer (2km)", _jamming] call zen_custom_modules_fnc_register;


_jamming =
{
	params ["_obj"];
	if !(isnull _obj) then {
		[_object, 3000, 0, 0, 0, 0, 0] remoteExec  ["kyk_ew_fnc_broadcastJammerAdd", 2];
	};
};

["[CayZ] Jamming", "Radio Jammer (3km)", _jamming] call zen_custom_modules_fnc_register;


_jamming =
{
	params ["_obj"];
	if !(isnull _obj) then {
		[_object, 4000, 0, 0, 0, 0, 0] remoteExec  ["kyk_ew_fnc_broadcastJammerAdd", 2];
	};

["[CayZ] Jamming", "Radio Jammer (4km)", _jamming] call zen_custom_modules_fnc_register;


_jamming =
{
	params ["_obj"];
	if !(isnull _obj) then {
		[_object, 5000, 0, 0, 0, 0, 0] remoteExec  ["kyk_ew_fnc_broadcastJammerAdd", 2];
	};
};

["[CayZ] Jamming", "Radio Jammer (5km)", _jamming] call zen_custom_modules_fnc_register;

