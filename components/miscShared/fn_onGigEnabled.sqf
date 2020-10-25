
#include "macros.hpp"

if (missionNamespace getVariable ['gigActive', false]) exitWith {};
missionNamespace setVariable ['gigActive', true, true];

RUN_ON_SERVER(f_fnc_onGigEnabled,_this);
RUN_AS_ASYNC(f_fnc_onGigEnabled);

params ["_object"];

deleteVehicle stagesparks_1;
deleteVehicle stagesparks_2;
deleteVehicle stagesparks_3;

{
    _x setVariable ["isFlickering", false, true];
} forEach [giglamp, stagelamp_1, stagelamp_2, stagelamp_3, stagelamp_4, stagelamp_5, stagelamp_6];


[gigPowerCabinet, ["EXP_m07_lightsOn_01", 100]] remoteExec ["say3D"];
[true, "lightsmarker", 1500] spawn f_fnc_setLampsOn;

[] remoteExec ["f_fnc_gigEffects"];

{
    [_x, 10] spawn f_fnc_createFireworks;

} forEach [fireworker_1, fireworker_2, fireworker_3, fireworker_4, fireworker_5, fireworker_6];
