#include "macros.hpp"

params ["_unit"];

if (isServer) then
{
    _unit hideObjectGlobal true;
	[_unit, 100, 0, 0, 0, 0, 0] call kyk_ew_fnc_broadcastJammerAdd;
};

if (hasInterface) then
{
    _unitType = typeOf _unit;

    _floater = _unitType createVehicleLocal (getpos _unit);
    _floater enableSimulation false;

    _floater setVectorDirAndUp [vectorDir _unit, vectorUp _unit];

    [_floater, _unit] spawn
    {
        params ["_floater", "_unit"];

        _xMod = 1 + random 4;
        _yMod = 1 + random 4;
        _zMod = 2 + random 3;
        _ang = 0;

        while {alive _unit} do
        {
            _basePos = getPosASL _unit;
            _floater setPosASL [_basePos#0 + sin (serverTime * _xMod), _basePos#1 + cos (serverTime * _yMod), _basePos#2 + sin (serverTime * _zMod)];

            _dir = [cos _ang, sin _ang, 0];
            _ang = serverTime mod 360;
            _floater setVectorDir _dir;

            _distance = _floater distance player;
            sleep ((((_distance - 150) * 0.001666) max 0.0333) min 2);
        };

    };

};
