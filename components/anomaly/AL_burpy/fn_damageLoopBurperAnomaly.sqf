
_object_burp_damage = _this select 0;

while {alive _object_burp_damage} do
{
	//_list_units_in_range = (position _object_burp_damage) nearEntities [["Man","LandVehicle"],9];
	_list_units_in_range = (position _object_burp_damage) nearEntities ["Man",9];

	{
		_tipat= ["strigat_1","strigat_2","strigat_3","strigat_4","strigat_5","strigat_6","strigat_7","strigat_8","strigat_9","strigat_91","strigat_92"] call BIS_fnc_selectRandom;
		[_x,[_tipat,100]] remoteExec ["say3d",0];

		sleep 0.5 + (random 0.5);

		_x setDamage 1;
		_x hideObjectGlobal true;
		deletevehicle _x;

		_oase = createVehicle ["Land_HumanSkeleton_F", [getposATL _x select 0,getposATL _x select 1,1.5], [], 0, "CAN_COLLIDE"];
		[_oase] remoteExec ["f_fnc_fxSplashBurperAnomaly",0];

		_balta_sange = createVehicle ["BloodSplatter_01_Medium_New_F", [getposATL _x select 0,getposATL _x select 1,0], [], 0, "CAN_COLLIDE"];
		_oase setVectorUp [0,-1,1];

		[_object_burp_damage,["blood_splash",100]] remoteExec ["say3d",0];

		sleep 0.3;

		[_balta_sange,["bones_drop",100]] remoteExec ["say3d",0];

	} foreach _list_units_in_range;

	sleep 1;

};