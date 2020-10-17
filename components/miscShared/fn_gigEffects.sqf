
#include "macros.hpp"

CLIENT_ONLY;
RUN_AS_ASYNC(f_fnc_gigEffects);

{
    _x say3D ["EXP_m07_lightsOn_01", 200];
    _x say3D ["OMEnergyHum", 100];

    sleep (0.1 + random 0.1);

} forEach [stagelamp_1, stagelamp_2, stagelamp_3, stagelamp_4, stagelamp_5, stagelamp_6];

sleep 3;

{
    playSound3D ["a3\Music_F_Oldman\music\radio\rock\Track_R_22.ogg", _x, false, getPosASL _x, 4, 1, 1500];
} forEach [sound_blaster_1, sound_blaster_2];
