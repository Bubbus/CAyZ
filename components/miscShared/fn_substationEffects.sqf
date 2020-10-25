
#include "macros.hpp"

CLIENT_ONLY;
RUN_AS_ASYNC(f_fnc_substationEffects);

if (missionNamespace getVariable ["local_substationEffects", false]) exitWith {};
missionNamespace setVariable ["local_substationEffects", true];

_transformers = (getMarkerPos "substation_marker") nearObjects ["Land_Trafostanica_velka", 100];

_transformerEffect =
{

    _this say3D ["EXP_m07_lightsOn_01", 200];
    _this say3D ["OMEnergyHum", 100, 0.3];

    uiSleep 18.5;

    _this say3D ["EXP_m07_lightsOff_03", 200];

};


{
    _x spawn _transformerEffect;

    sleep (0.1 + random 0.1);

} forEach _transformers;
