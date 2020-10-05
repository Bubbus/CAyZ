setTimeMultiplier 0;

[] spawn
{
	// this segment thanks to https://forums.bohemia.net/forums/topic/162594-i-am-one-type-of-lights-classname-short-of-success-help-p/?tab=comments#comment-2555563

	_types =
	[
		"Lamps_Base_F",
		"Land_Jbad_Lamp_small",
		"Land_jbad_House_c_10",
		"Land_jbad_House_c_1_v2",
		"Land_jbad_House_c_1",
		"Land_Jbad_Mil_Guardhouse",
		"Land_jbad_House_c_9",
		"Land_jbad_House_c_3",
		"Land_jbad_House_c_5_v1",
		"Land_jbad_House_c_2",
		"Land_jbad_House_c_5_v3",
		"Land_jbad_House_c_5",
		"Land_jbad_House_c_5_v2",
		"Land_jbad_House_c_11",
		"Land_jbad_House_c_12",
		"Land_jbad_A_GeneralStore_01",
		"Land_Jbad_Mil_House",
		"Land_jbad_mosque_big_hq",
		"Land_jbad_mosque_big_addon",
		"Land_LampAirport_F",
		"Land_LampSolar_F",
		"Land_LampStreet_F",
		"Land_LampStreet_small_F",
		"PowerLines_base_F",
		"Land_LampDecor_F",
		"Land_LampHalogen_F",
		"Land_LampHarbour_F",
		"Land_LampShabby_F",
		"Land_PowerPoleWooden_L_F",
		"Land_NavigLight",
		"Land_runway_edgelight",
		"Land_runway_edgelight_blue_F",
		"Land_Flush_Light_green_F",
		"Land_Flush_Light_red_F",
		"Land_Flush_Light_yellow_F",
		"Land_Runway_PAPI",
		"Land_Runway_PAPI_2",
		"Land_Runway_PAPI_3",
		"Land_Runway_PAPI_4",
		"Land_fs_roof_F", // Fuel station roof lights
		"Land_fs_sign_F",
		"Land_A_GeneralStore_01"
	];

	_onoff = 0.95;


	for [{_i=0},{_i < (count _types)},{_i=_i+1}] do
	{
		// lightsmarker is a marker I placed. 1000 is the distance around the marker
		_lamps = getMarkerPos "lightsmarker" nearObjects [_types select _i, 1500];

		sleep 0.1;

		{
			_x setDamage _onoff;
			sleep 0.01;

		} forEach _lamps;

	};

};




fnc_zen_createBurper =
{
	params ["_pos"];

	_anomaly = [_pos, false] call f_fnc_createBurperAnomaly;
	[_anomaly] call f_fnc_addObjectsToAllZeuses;
};


fnc_zen_createFarty =
{
	params ["_pos", "_radius", "_puddles"];

	_anomalyParts = [_pos, "G_AirPurifyingRespirator_02_sand_F", true, _radius, true, true, _puddles] call f_fnc_createFartyAnomaly;
	_anomalyParts call f_fnc_addObjectsToAllZeuses;
};


fnc_zen_createFlamer =
{
	params ["_pos", "_radius"];

	_anomaly = [_pos, _radius, 0.1, 50] call f_fnc_createFlamerAnomaly;
	[_anomaly] call f_fnc_addObjectsToAllZeuses;
};
