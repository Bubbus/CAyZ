
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
