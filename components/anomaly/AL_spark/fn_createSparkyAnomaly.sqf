// by ALIAS
// Sparky DEMO
// Tutorial: https://www.youtube.com/user/aliascartoons

private ["_basePos"];

if (!isServer) exitWith {};

_basePos = _this select 0;
_protection_gear_spark = _this select 1;
_AI_see_spark= _this select 2;

if (isNil "_protection_gear_spark") exitWith {hint "You haven't defined a protectiv device!!!"};
obj_prot_sparky = _protection_gear_spark;
publicVariable "obj_prot_sparky";

_baseObj = "Land_HelipadEmpty_F" createVehicle _basePos;

[_baseObj] spawn f_fnc_posGeneratorSparkyAnomaly;

[_baseObj] remoteExec ["f_fnc_moveSparkyAnomaly", 0, true];
//if (_AI_see_spark) then {null= [_basePos] execvm "AL_spark\ai_avoid_spark.sqf";};
