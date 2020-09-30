private ["_markern","_nm","_object_anom_burp","_markerstr","_damage_protect"];

if (!isServer) exitwith {};

_anomaly_pos = _this select 0;
_mobile_anomaly = _this select 1;

_object_anom_burp = "Land_HelipadEmpty_F" createVehicle (_anomaly_pos vectorAdd [0,0,2]);
_balta_sang = createVehicle ["BloodSplatter_01_Medium_New_F", _anomaly_pos, [], random 8, "CAN_COLLIDE"];
_balta_sang setdir (random 360);

[_object_anom_burp] spawn f_fnc_aiAvoidBurperAnomaly;

[_object_anom_burp] spawn f_fnc_damageLoopBurperAnomaly;
[_object_anom_burp] remoteExec ["f_fnc_fxBurperAnomaly",0,true];

if (_mobile_anomaly) then {
	while {alive _object_anom_burp} do
	{
		_poz_ini_burp = getposatl _object_anom_burp;
		_new_poz = [_poz_ini_burp,0.1,1,1,0,-1,0] call BIS_fnc_findSafePos;
		_object_anom_burp setPos [_new_poz select 0,_new_poz select 1, _poz_ini_burp select 2];
		sleep 60 + random 60;
	};
};

_object_anom_burp
