_createBurper = 
{
	_anomaly = [ASLToAGL (_this select 0), false] call f_fnc_createBurperAnomaly;
	[_anomaly] call f_fnc_addObjectToAllZeuses;
};

["Anomalies", "Burper", _createBurper] call zen_custom_modules_fnc_register;