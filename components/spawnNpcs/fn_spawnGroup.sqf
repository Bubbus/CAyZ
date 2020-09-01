#include "macros.hpp"

/*
 * Author: Poulern
 * Spawns a group according to F3 assign gear
 *
 * Arguments:
 * 0: F3 group array
 * 1: Spawn position, marker, object, group, location, array
 * 2: Faction of group used in F3.
 * 2: Side west east independent
 *
 * Return Value:
 * Group
 *
 * Example:
 * [["ftl","r","ar","m"],"spawnmarker","opf_f",west] spawn f_fnc_spawngroup;
 * [["ftl","r","ar","m"],player,"opf_f",west] spawn f_fnc_spawngroup;
 * [["ftl","r","ar","m"],[123,67,0],"blu_f",east] spawn f_fnc_spawngroup;
 */

RUN_ON_SERVER(f_fnc_spawnGroup,_this);

params ["_unitarray","_position",["_faction",""],["_side", f_defaultSide]];
private ["_spawnpos","_unittype","_unit","_group","_posdir","_unittype"];

//Getting a good position from the parsed values
_posdir = _position call f_fnc_getDirPos;
_spawnpos = _posdir select 0;

switch(_side) do
{
	case west: {_group = createGroup [west,true]; _unittype = "B_Soldier_F";};
	case east: {_group = createGroup [east,true]; _unittype = "O_G_Soldier_F";};
	case independent: {_group = createGroup [independent,true]; _unittype = "I_G_Soldier_F";};
	case civilian: {_group = createGroup [civilian,true]; _unittype = "C_man_polo_2_F_euro";};
	default {_group = createGroup [east,true]};

};


{
    _unit = "";
	_unit = _group createUnit [_unittype, _spawnpos, [], 0, "FORM"];

    if (_faction == "") then
    {
        _faction = switch (_side) do
		{
			case west: {"blu_f"};
			case east: {"opf_f"};
			case independent: {"ind_f"};
			case civilian: {"civ_f"};
			default {"ind_g_f"};

		};;
    };

	_type = _x;
	[_type,_unit,_faction] call f_fnc_assignGear;

} forEach _unitarray;


[_group] call CBA_fnc_clearWaypoints;
_group setFormation "LINE";


//_group spawn f_fnc_groupGuerrillaAI;
//_group spawn f_fnc_groupSuppressiveAI;

//[_group] remoteExec ["bub_fnc_addGroupToZeus", 2];

_group
