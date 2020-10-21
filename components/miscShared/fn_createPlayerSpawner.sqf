
#include "macros.hpp"
#include "../../squadmarker_macros.hpp"

params ["_pos"];

SERVER_ONLY;


_spawner = "VR_Area_01_square_1x1_yellow_F" createVehicle _pos;
_spawner setPosASL _pos;

_spawner spawn
{
    sleep 15;

    while {alive _this} do
    {
        _group = GET_SQUAD_ON_SIDE_DYNAMIC("Spectators",west);

        waitUntil
        {
            sleep 5;

            (isNull _group) or {count units _group > 0};
        };

        if !(isNull _group) then
        {
            _unit = selectRandom units _group;
            _unit setVariable ["mySpawner", _this, true];

            hideObjectGlobal _this;

            sleep 10;

            deleteVehicle _this;

            sleep 1;

        };

    };

};

_spawner
