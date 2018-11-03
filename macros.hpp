#include "configuration\configMacros.hpp"


// Debugging utilities
#ifdef ENABLE_DEBUG

// Clientside only.
#define DEBUG_PRINT_CHAT(STRING) player sideChat STRING;
#define DEBUG_FORMAT1_CHAT(STRING, F1) player sideChat format [STRING, str F1];
#define DEBUG_FORMAT2_CHAT(STRING, F1, F2) player sideChat format [STRING, str F1, str F2];
#define DEBUG_FORMAT3_CHAT(STRING, F1, F2, F3) player sideChat format [STRING, str F1, str F2, str F3];

// Client and serverside.
#define DEBUG_PRINT_LOG(STRING) diag_log STRING;
#define DEBUG_FORMAT1_LOG(STRING, F1) diag_log format [STRING, str F1];
#define DEBUG_FORMAT2_LOG(STRING, F1, F2) diag_log format [STRING, str F1, str F2];
#define DEBUG_FORMAT3_LOG(STRING, F1, F2, F3) diag_log format [STRING, str F1, str F2, str F3];

#else

// Clientside only.
#define DEBUG_PRINT_CHAT(STRING)
#define DEBUG_FORMAT1_CHAT(STRING, F1)
#define DEBUG_FORMAT2_CHAT(STRING, F1, F2)
#define DEBUG_FORMAT3_CHAT(STRING, F1, F2, F3)

// Client and serverside.
#define DEBUG_PRINT_LOG(STRING)
#define DEBUG_FORMAT1_LOG(STRING, F1)
#define DEBUG_FORMAT2_LOG(STRING, F1, F2)
#define DEBUG_FORMAT3_LOG(STRING, F1, F2, F3)

#endif


// General utility
#define CONCAT(s1,s2) s1##s2
#define CONCAT3(s1,s2,s3) s1##s2##s3

// Startup convenience macros
#define RUN_ONLY_ONCE_ASYNC(PATH,VAR) if (isNil #VAR) then { VAR = [] execVM PATH; };

// CBA Hash convenience macros
#define HASH_CREATE(NAME) NAME = [] call CBA_fnc_hashCreate
#define HASH_CREATE_VALS(NAME,VALUES) NAME = [VALUES] call CBA_fnc_hashCreate
#define HASH_GET(NAME,KEY) [NAME, KEY] call CBA_fnc_hashGet
#define HASH_CONTAINS(NAME,KEY) [NAME, KEY] call CBA_fnc_hashHasKey
#define HASH_SET(NAME,KEY,VALUE) [NAME, KEY, VALUE] call CBA_fnc_hashSet
#define HASH_DELETE(NAME,KEY) [NAME, KEY] call CBA_fnc_hashRem
#define HASH_REMOVE(NAME,KEY) HASH_DELETE(NAME,KEY)
#define HASH_FOREACH(NAME,FUNC) [NAME, FUNC] call CBA_fnc_hashEachPair

#define SERVER_ONLY if (!isServer) exitWith {}
#define CLIENT_ONLY if (!hasInterface) exitWith {}
#define LOCAL_ONLY(obj) if !(local obj) exitWith {}

#define RUN_ON_SERVER(FUNC,ARGS) if (!isServer) exitWith { [ARGS] remoteExec [#FUNC,2]; }

#define INIT_COMPONENT(COMPNAME) RUN_ONLY_ONCE_ASYNC('components\COMPNAME\init_component.sqf',CONCAT(f_script_,COMPNAME))