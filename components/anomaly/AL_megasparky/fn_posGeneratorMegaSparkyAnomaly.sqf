
if (!isServer) exitWith {};

params ["_baseObj", ["_radius", 50], ["_height", [0.5, 3, 6]], ["_timePerNode", 10]];

_baseObj setVariable ["timePerNode", _timePerNode, true];

while {alive _baseObj} do
{
    _points = _baseObj getVariable ["movePoints", []];

    _modifiedArray = false;

    while {count _points > 0} do
    {
        if ((_points#0#0) >= (time - (_timePerNode * 2))) exitWith {};

        _points deleteAt 0;
        _modifiedArray = true;

    };

    while {count _points < 4} do
    {
        _lastTime = (_points param [(count _points - 1), [time]]) # 0;

        _basePos = (getPos _baseObj);

        _pointRadius = _radius * (sqrt random 1);
        _pointAngle = random 360;
        _pointPos = [_pointRadius * cos _pointAngle, _pointRadius * sin _pointAngle, random _height];

        _pos = _basePos vectorAdd _pointPos;

        _points pushBack [_lastTime + _timePerNode, _pos];
        _modifiedArray = true;

    };


    if (_modifiedArray) then
    {
        _baseObj setVariable ["movePoints", _points, true];
    };

    sleep ((_points#0#0) - time) + 0.1;

};
