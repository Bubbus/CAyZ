#include "macros.hpp"

RUN_AS_ASYNC(f_fnc_setLampsOn);

params ["_isOn", "_marker", "_radius"];


_onoff = if (_isOn) then {0} else {0.95};

// this segment thanks to https://forums.bohemia.net/forums/topic/162594-i-am-one-type-of-lights-classname-short-of-success-help-p/?tab=comments#comment-2555563

_types =
[
	"Lamps_Base_F",
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


for [{_i=0}, {_i < (count _types)}, {_i=_i+1}] do
{
	_lamps = (getMarkerPos _marker) nearObjects [_types select _i, _radius];

	sleep 0.1;

	{
		_damage = _x getVariable ["forceLampDamage", _onoff];
		_x setDamage _damage;
		sleep 0.01;

	} forEach _lamps;

};
