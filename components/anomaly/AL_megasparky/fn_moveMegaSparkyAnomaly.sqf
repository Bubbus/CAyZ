// by ALIAS
var_megaSparkyAnomaly_visibleDistance = 2500;

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
			waitUntil {sleep 1; (!alive _obiect_orb) or {player distance _obiect_orb < var_megaSparkyAnomaly_visibleDistance}};

			if !(alive _obiect_orb) exitWith {};

			_ele = "#particlesource" createVehicleLocal (getPosATL _obiect_orb);
			_ele setParticleCircle [0, [0, 0, 0]];
			_ele setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0, [0, 0, 0, 0], 0, 0];
			_ele setParticleParams [["\A3\data_f\blesk1", 1, 0, 1], "", "SpaceObject", 1, 0.15, [0, 0, 0], [0, 0, 0], 0.3, 11, 7.9, 0.075, [0.11, 0.12, 0.13], [[0.1, 0.1, 0.1, 0.5], [0.25, 0.25, 0.25, 0.5], [0.5, 0.5, 0.5, 0]], [0.08], 1, 0, "", "", _obiect_orb];
			_ele setDropInterval 0.005;

			_ele2 = "#particlesource" createVehicleLocal (getPosATL _obiect_orb);
			_ele2 setParticleCircle [0, [0, 0, 0]];
			_ele2 setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0, [0, 0, 0, 0], 0, 0];
			_ele2 setParticleParams [["\A3\data_f\blesk1", 1, 0, 1], "", "SpaceObject", 1, 0.15, [0, 0, 0], [0, 0, 0], 0.3, 11, 7.9, 0.075, [0.11, 0.12, 0.13], [[0.1, 0.1, 0.1, 0.5], [0.25, 0.25, 0.25, 0.5], [0.5, 0.5, 0.5, 0]], [0.08], 1, 0, "", "", _obiect_orb];
			_ele2 setDropInterval 0.005;

			_halo = "#particlesource" createVehicleLocal (getPosATL _obiect_orb);
			_halo setParticleCircle [0, [0, 0, 0]];
			_halo setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0, [0, 0, 0, 0], 0, 0];
			_halo setParticleParams [["\A3\data_f\proxies\muzzle_flash\mf_sparks_01.p3d", 1, 0, 1], "", "SpaceObject", 1, 0.1, [0, 0, 0], [0, 0, 0.75], 13, 10, 7.9, 0.075, [0.5, 0.5], [[1, 1, 1, 1], [1, 1, 1, 1]], [0.08], 1, 0, "", "", _obiect_orb];
			_halo setDropInterval 0.0033;

			_orb_lit = "#lightpoint" createVehiclelocal (getPosATL _obiect_orb);
			_orb_lit lightAttachObject [_obiect_orb, [0,0,0]];
			_orb_lit setLightColor [0.92,0.95,1];
			_orb_lit setLightIntensity 1500;
			_orb_lit setLightUseFlare true;
			_orb_lit setLightFlareSize 20;
			_orb_lit setLightFlareMaxDistance 500;
			_orb_lit setLightAttenuation [4, 0, 0.03, 0, 6, 200];
			_orb_lit setLightDayLight true;

			_orb_lit spawn
			{
				while {alive _this} do
				{
					_this setLightIntensity (1000 + random 500);
					sleep 0.016;
				};

			};

			waitUntil {sleep 1; (!alive _obiect_orb) or {player distance _obiect_orb > var_megaSparkyAnomaly_visibleDistance}};

			deleteVehicle _ele;
			deleteVehicle _ele2;
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
			_orb_obj say3D ["magnetic_pulse_mega", 2500, 0.7];
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
					_sunet_spark = ["sparks_1_mega","sparks_2_mega","sparks_3_mega","sparks_4_mega","sparks_5_mega"] call BIS_fnc_selectRandom;
					_obiect_orb say3D [_sunet_spark, 900];
				};

				_lastJitter = _curJitter;
				_curJitter >= _jitterTrigger

			};

			_sparkSound = true;

			_obiect_orb say3D ["puls_bass", 1200];

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
		_jitter = (((_jitter - 0.75) * 4) max 0)*6;
		_jitterVec = [random _jitter, random _jitter, random _jitter];

		_obiect_orb setPosATL (_pos vectorAdd _jitterVec);
		_obiect_orb setVariable ["jitter", _jitter];

		_curPollInterval = if (hasInterface) then {if (player distance _obiect_orb > var_megaSparkyAnomaly_visibleDistance) then {1} else {_pollInterval}} else {_pollInterval};

		sleep _curPollInterval;

	};


};



//sleep 3;



_sparkyAttack =
{
	params ["_units", "_objPos"];

	[_objPos] remoteExec ["f_fnc_fxAttackMegaSparkyAnomaly", 0];

	sleep 0.2;

	{
		_distance = floor (_x distance _objPos) / 10;

		if (_x isKindOf "CAManBase") then
		{
			[_x, 12 - _distance, nil, nil, [0.4, 0.6, 0.8]] call f_fnc_woundUnitRandomly;
		}
		else
		{
			_damage = damage _x;
			_x setDamage _damage + (1 - _distance * 0.1);
		};

	} forEach _units;

	_objPos spawn
	{
		sleep 0.3;
		_boom = "rhs_rpg7v2_tbg7v" createVehicle [_this#0, _this#1, 0];
		_boom setVectorDir [0, 0, -1];
		_boom setVelocity [0, 0, -1000];
		_boom setDamage 1;
	};

};



if (isServer) then
{
	[_obiect_orb, _sparkyAttack] spawn
	{
		params ["_obiect_orb", "_sparkyAttack"];

		while {alive _obiect_orb} do
		{
			_list_units_in_range = (getPosATL _obiect_orb) nearEntities [["CAManBase", "Air", "Car", "Motorcycle", "Tank"], 90];
			_list_units_in_range = _list_units_in_range select {!(_x getVariable ["f_var_isZeus", false])};

			if (count _list_units_in_range > 0) then
			{
				[_list_units_in_range, (getPosATL _obiect_orb)] call _sparkyAttack;
				sleep 7;
			};

			sleep 3;

		};

	};

};




if (isServer) then
{
	waitUntil { sleep 0.5; _baseObj distance _obiect_orb > 5; };
	[[], getPosATL _obiect_orb] call _sparkyAttack;
};



_lastPos = getPosATL _obiect_orb;

waitUntil
{
	if (alive _obiect_orb) then {_lastPos = getPosATL _obiect_orb;};

	sleep 1;

	(!(alive _baseObj)) or {!(alive _obiect_orb)}

};



if (isServer) then
{
	[[], _lastPos] call _sparkyAttack;
};



deleteVehicle _baseObj;
deleteVehicle _obiect_orb;
