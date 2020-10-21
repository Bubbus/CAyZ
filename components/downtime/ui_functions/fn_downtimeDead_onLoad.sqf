#include "../macros.hpp"

params ["_display"];

_subtitle = _display displayCtrl IDC_DOWNTIMEDEAD_SUBTITLE;
_text = "";
_side = side player;

_respawnsLeft = RESPAWN_WAVES(_side);


    _text = "But the dead may rise again...";


_subtitle ctrlSetText _text;
