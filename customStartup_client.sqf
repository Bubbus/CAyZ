_createBurper =
{
	_anomaly = [ASLToAGL (_this select 0), false] call f_fnc_createBurperAnomaly;
	[_anomaly] call f_fnc_addObjectToAllZeuses;
};

["Anomalies", "Burper", _createBurper] call zen_custom_modules_fnc_register;


_createFartySmall =
{
	_anomaly = [ASLToAGL (_this select 0), "G_AirPurifyingRespirator_02_sand_F", true, 10, true, true, 5] spawn f_fnc_createFartyAnomaly;
	[_anomaly] call f_fnc_addObjectToAllZeuses;
};

["Anomalies", "Farty (20m)", _createFartySmall] call zen_custom_modules_fnc_register;

_createFartyNormal =
{
	_anomaly = [ASLToAGL (_this select 0), "G_AirPurifyingRespirator_02_sand_F", true, 25, true, true, 10] spawn f_fnc_createFartyAnomaly;
	[_anomaly] call f_fnc_addObjectToAllZeuses;
};

["Anomalies", "Farty (50m)", _createFartyNormal] call zen_custom_modules_fnc_register;

_createFartyHuge =
{
	_anomaly = [ASLToAGL (_this select 0), "G_AirPurifyingRespirator_02_sand_F", true, 37.5, true, true, 20] spawn f_fnc_createFartyAnomaly;
	[_anomaly] call f_fnc_addObjectToAllZeuses;
};

["Anomalies", "Farty (75m)", _createFartyHuge] call zen_custom_modules_fnc_register;
