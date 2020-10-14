// by ALIAS
var_sparkyAnomaly_visibleDistance = 300;

private ["_obiect_orb","_mark_orig"];

_baseObj = _this select 0;

if !(alive _baseObj) exitWith {};

waitUntil { sleep 1; !(_baseObj getVariable ["movePoints", []] isEqualTo []) };

_obiect_orb = "Sign_Sphere10cm_F" createVehiclelocal (getPos _baseObj);
_obiect_orb setObjectMaterialGlobal [0, "\a3\data_f\default.rvmat"];
_obiect_orb setObjectTextureGlobal [0, "#(argb,8,8,3)color(1,1,1,0.5,ca)"];
_obiect_orb hideObject true;



sleep 3;



if (hasInterface) then
{
	[_obiect_orb] spawn
	{
		params ["_obiect_orb"];

		while {alive _obiect_orb} do
		{
			waitUntil {sleep 1; (!alive _obiect_orb) or {player distance _obiect_orb < var_sparkyAnomaly_visibleDistance}};

			if !(alive _obiect_orb) exitWith {};

			_ele = "#particlesource" createVehicleLocal (getPosATL _obiect_orb);
			_ele setParticleCircle [0, [0, 0, 0]];
			_ele setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0, [0, 0, 0, 0], 0, 0];
			_ele setParticleParams [["\A3\data_f\blesk1", 1, 0, 1], "", "SpaceObject", 1, 0.15, [0, 0, 0], [0, 0, 0], 0.3, 11, 7.9, 0.075, [0.003, 0.003, 0.003], [[0.1, 0.1, 0.1, 0.5], [0.25, 0.25, 0.25, 0.5], [0.5, 0.5, 0.5, 0]], [0.08], 1, 0, "", "", _obiect_orb];
			_ele setDropInterval 0.01;

			_halo = "#particlesource" createVehicleLocal (getPosATL _obiect_orb);
			_halo setParticleCircle [0, [0, 0, 0]];
			_halo setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0, [0, 0, 0, 0], 0, 0];
			_halo setParticleParams [["\A3\data_f\proxies\muzzle_flash\mf_sparks_01.p3d", 1, 0, 1], "", "SpaceObject", 1, 0.1, [0, 0, 0], [0, 0, 0.75], 13, 10, 7.9, 0.075, [0.5, 0.5], [[1, 1, 1, 1], [1, 1, 1, 1]], [0.08], 1, 0, "", "", _obiect_orb];
			_halo setDropInterval 0.0033;

			_orb_lit = "#lightpoint" createVehiclelocal (getPosATL _obiect_orb);
			_orb_lit lightAttachObject [_obiect_orb, [0,0,0]];
			_orb_lit setLightColor [0.92,0.95,1];
			_orb_lit setLightIntensity 1500;
			_orb_lit setLightUseFlare false;
			_orb_lit setLightFlareSize 2;
			_orb_lit setLightFlareMaxDistance 500;
			_orb_lit setLightAttenuation [0.25, 0, 10, 0.3, 9, 20];
			_orb_lit setLightDayLight true;

			waitUntil {sleep 1; (!alive _obiect_orb) or {player distance _obiect_orb > var_sparkyAnomaly_visibleDistance}};

			deleteVehicle _ele;
			deleteVehicle _halo;
			deleteVehicle _orb_lit;

			if !(alive _obiect_orb) exitWith {};

		};

	};



	[_obiect_orb] spawn
	{
		_orb_obj = _this select 0;

		while {!isNull _orb_obj} do
		{
			_orb_obj say3D ["magnetic_pulse", 300];
			sleep 12;

		};

	};



	[_baseObj, _obiect_orb] spawn
	{
		params ["_baseObj", "_obiect_orb"];

		waitUntil {sleep 1; _obiect_orb getVariable ["jitter", -1] >= 0};

		_nodeTime = _baseObj getVariable "timePerNode";
		_jitterTrigger = 0.05;
		_lastJitter = 0;

		while {alive _obiect_orb} do
		{
			waitUntil
			{
				sleep 0.033;

				_curJitter = _obiect_orb getVariable ["jitter", -1];

				if (_lastJitter > _curJitter) then
				{
					_sparkSound = false;
					_sunet_spark = ["sparks_1","sparks_2","sparks_3","sparks_4","sparks_5"] call BIS_fnc_selectRandom;
					_obiect_orb say3D [_sunet_spark, 300];
				};

				_lastJitter = _curJitter;
				_curJitter >= _jitterTrigger

			};

			_sparkSound = true;

			_obiect_orb say3D ["puls_bass", 300];

			sleep 0.5;

		};

	};

};



[_baseObj, _obiect_orb] spawn
{
	params ["_baseObj", "_obiect_orb"];

	_pollInterval = if (hasInterface) then {0.033} else {0.25};

	while {alive _baseObj and {alive _obiect_orb}} do
	{
		_points = _baseObj getVariable ["movePoints", []];
		_pointCount = count _points;

		_minTime = (_points#0#0);
		_maxTime = _points#(count _points - 1)#0;
		_timespan = _maxTime - _minTime;
		_curElapsed = time - _minTime;
		_fraction = _curElapsed / _timespan;

		_pos = _fraction bezierInterpolation (_points apply {_x#1});

		_jitter = ((_fraction - (1 / ((_pointCount - 1) max 1))) max 0) * ((_pointCount - 1) max 1);
		_jitter = ((_jitter - 0.75) * 4) max 0;
		_jitterVec = [random _jitter, random _jitter, random _jitter];

		_obiect_orb setPos (_pos vectorAdd _jitterVec);
		_obiect_orb setVariable ["jitter", _jitter];

		_curPollInterval = if (hasInterface) then {if (player distance _obiect_orb > var_sparkyAnomaly_visibleDistance) then {1} else {_pollInterval}} else {_pollInterval};

		sleep _curPollInterval;

	};


};



sleep 3;



_sparkyAttack =
{
	params ["_units", "_objPos"];

	{
	    [_x, 3, nil, nil, [0.2, 0.4, 0.6]] call f_fnc_woundUnitRandomly;
	} forEach _units;

	[_objPos] remoteExec ["f_fnc_fxAttackSparkyAnomaly", 0];

};



if (hasInterface) then
{
	[_obiect_orb, _sparkyAttack] spawn
	{
		params ["_obiect_orb", "_sparkyAttack"];

		while {alive _obiect_orb} do
	    {
	        _distance = (player distance _obiect_orb);
	        waitUntil
	        {
	            sleep (_distance / 100) max 0.1;
	            _distance = (player distance _obiect_orb);
	            (_distance < 10)
	        };

	        if !((player getVariable ["f_var_isZeus", false]) or {uniform player == "U_B_CBRN_Suit_01_MTP_F"}) then
	        {
	            [[player], (getpos _obiect_orb)] call _sparkyAttack;
	        };

	        sleep 2;

	    };

	};

};



if (isServer) then
{
	[_obiect_orb, _sparkyAttack] spawn
	{
		params ["_obiect_orb", "_sparkyAttack"];

		while {alive _obiect_orb} do
		{
			_list_units_in_range = (getPos _obiect_orb) nearEntities ["CAManBase", 10];
			_list_units_in_range = _list_units_in_range select {(!(isPlayer _x)) and {!(uniform _x == "U_B_CBRN_Suit_01_MTP_F")}};

			if (count _list_units_in_range > 0) then
			{
				[_list_units_in_range, (getpos _obiect_orb)] call _sparkyAttack;
			};

			sleep 5;

		};

	};

};



waitUntil
{
	sleep 1;
	(!(alive _baseObj)) or {!(alive _obiect_orb)}
};

deleteVehicle _baseObj;
deleteVehicle _obiect_orb;
