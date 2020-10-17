#include "macros.hpp"

params ["_lamp"];

LOCAL_ONLY(_lamp);
RUN_AS_ASYNC(f_fnc_lampFlicker);

if (_lamp getVariable ["isFlickering", false]) exitWith {};

_lamp setVariable ["isFlickering", true, true];

_isOn = true;

while {alive _lamp and {_lamp getVariable ["isFlickering", false]}} do
{
	sleep (random 2) max 0.1667;

	_damage = if (_isOn) then {0} else {0.95};
	_lamp setDamage _damage;
	_isOn = !_isOn;

};
