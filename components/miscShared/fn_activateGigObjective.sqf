
#include "macros.hpp"

RUN_ON_SERVER(f_fnc_activateGigObjective,_this);
RUN_AS_ASYNC(f_fnc_activateGigObjective);

if (missionNamespace getVariable ["gigObjectiveActive", false]) exitWith {};
missionNamespace setVariable ["gigObjectiveActive", true, true];

{
    [_x, 40] spawn f_fnc_createFireworks;

} forEach [fireworker_1, fireworker_2, fireworker_3, fireworker_4, fireworker_5, fireworker_6];
