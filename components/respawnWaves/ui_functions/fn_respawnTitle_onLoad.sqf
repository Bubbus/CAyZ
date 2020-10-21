#include "../macros.hpp"

params ["_display"];

_subtitle = _display displayCtrl IDC_RESPAWNTITLE_INFOTEXT;
_text = "";

_squadMode = f_var_respawnTitle_squadMode;
_targetSquad = f_var_respawnTitle_targetSquad;

_text = "<t align=""center"" size=""0.9"">You rise again.  But what has it cost?</t>";

_subtitle ctrlSetStructuredText parseText _text;
