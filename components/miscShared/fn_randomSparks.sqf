#include "macros.hpp"

f_var_randomSparks_maxDistance = 120;

CLIENT_ONLY;
RUN_AS_ASYNC(f_fnc_randomSparks);

params ["_emitter", "_min", "_max"];

if (_emitter getVariable ["isSparking", false]) exitWith {};

_emitter setVariable ["isSparking", true];

while {alive _emitter and {_emitter getVariable ["isSparking", false]}} do
{
    if (_emitter distance player < f_var_randomSparks_maxDistance) then
    {
        // by ALIAS
        _sparky_sun = ["spark1","spark3","spark11","spark2","spark22","spark5","spark4"] call BIS_fnc_selectRandom;
        _spark_type = ["white","orange"] call BIS_fnc_selectRandom;

        _drop = 0.001+(random 0.05);
        _scantei_spark = "#particlesource" createVehicleLocal (getPosATL _emitter);

        if (_spark_type == "orange") then
        {
        	_scantei_spark setParticleCircle [0, [0, 0, 0]];
        	_scantei_spark setParticleRandom [1, [0.1, 0.1, 0.1], [0, 0, 0], 0, 0.25, [0, 0, 0, 0], 0, 0];
        	_scantei_spark setParticleParams [["\A3\data_f\proxies\muzzle_flash\muzzle_flash_silencer.p3d", 1, 0, 1], "", "SpaceObject", 1, 1, [0, 0, 0], [0, 0, 0], 0, 15, 7.9, 0, [0.5,0.5,0.05], [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 0]], [0.08], 1, 0, "", "", _emitter,0,true,0.3,[[0,0,0,0]]];
        	_scantei_spark setDropInterval _drop;
        }
        else
    	{
    		_scantei_spark setParticleCircle [0, [0, 0, 0]];
    		_scantei_spark setParticleRandom [1, [0.05, 0.05, 0.1], [5, 5, 3], 0, 0.0025, [0, 0, 0, 0], 0, 0];
    		_scantei_spark setParticleParams [["\A3\data_f\proxies\muzzle_flash\muzzle_flash_silencer.p3d", 1, 0, 1], "", "SpaceObject", 1, 1, [0, 0, 0], [0, 0, 0], 0, 20, 7.9, 0, [0.5,0.5,0.05], [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 0]], [0.08], 1, 0, "", "", _emitter,0,true,0.3,[[0,0,0,0]]];
    		_scantei_spark setDropInterval 0.001;
    	};

    	_emitter say3D [_sparky_sun, 350];
    	sleep 0.1 + (random 0.4);
    	deleteVehicle _scantei_spark;
    }
    else
    {
        sleep 5;
    };

    sleep (random _max) max _min;

};
