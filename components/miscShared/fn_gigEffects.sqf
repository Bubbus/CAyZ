
#include "macros.hpp"

CLIENT_ONLY;
RUN_AS_ASYNC(f_fnc_gigEffects);

if (missionNamespace getVariable ["local_gigEffects", false]) exitWith {};
missionNamespace setVariable ["local_gigEffects", true];

{
    _x say3D ["EXP_m07_lightsOn_01", 200];
    _x say3D ["OMEnergyHum", 100];

    sleep (0.1 + random 0.1);

} forEach [stagelamp_1, stagelamp_2, stagelamp_3, stagelamp_4, stagelamp_5, stagelamp_6];

sleep 3;

isNil
{
    playSound3D ["a3\Music_F_Oldman\music\radio\rock\Track_R_22.ogg", sound_blaster_1, false, getPosASL sound_blaster_1, 1.8, 1, 1500];
    playSound3D ["a3\Music_F_Oldman\music\radio\rock\Track_R_22.ogg", sound_blaster_2, false, getPosASL sound_blaster_2, 1.8, 1, 1500];
};
