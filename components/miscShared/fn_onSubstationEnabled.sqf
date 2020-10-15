
#include "macros.hpp"

if (missionNamespace getVariable ['substationActive', false]) exitWith {};

RUN_ON_SERVER(f_fnc_onSubstationEnabled,_this);
RUN_AS_ASYNC(f_fnc_onSubstationEnabled);

missionNamespace setVariable ['substationActive', true, true];

params ["_object"];


[_object, ["EXP_m07_lightsOn_01", 100]] remoteExec ["say3D"];
[true, "lightsmarker", 1500] spawn f_fnc_setLampsOn;

[] remoteExec ["f_fnc_substationEffects"];

uiSleep 16.6;

[_object, ["watchBeep_alarm", 200]] remoteExec ["say3D"];

[false, "lightsmarker", 1500] spawn f_fnc_setLampsOn;

uiSleep 1;

[] call f_fnc_activateGigObjective;
