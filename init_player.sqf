[] call ast_fnc_hudSetup;
removeAllActions player;

if (str(player) == "swat_med") then {
	player addaction ["Heal Unit",ast_fnc_medicHeal,0,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 4 &&  speed cursorTarget < 2 && cursorTarget in playableUnits && damage cursorTarget > 0'];
	player addaction ["Heal Self",ast_fnc_medicHeal,1,0,false,false,"",'damage player > 0'];
};

if (str(player) in ["admin", "admin1"]) then {
	player addaction ["Teleall Home", ast_fnc_teleHome, nil, 0, false, true, "", 'vehicle player == player'];
	player addaction ["Parachute Training", ast_fnc_paraWe, nil, 0.10, false, true, "", 'vehicle player == player'];
	player addaction ["Map teleport", ast_fnc_teleMap, nil, 0.12, false, true, "", 'vehicle player == player'];
	player addaction ["TeleBlufor Me", ast_fnc_teleMeBlufor, nil, 0.11, false, true, "", 'vehicle player == player'];
	player addaction ["TeleOpfor Me", ast_fnc_teleMeOpfor, nil, 0.11, false, true, "", 'vehicle player == player'];
	[] call ast_fnc_playerTagsAdmin;
} else {
	[] call ast_fnc_playerTags;
};
[] call ast_fnc_setLoadout;
[] call ast_fnc_fastrope;
[] spawn ast_fnc_setupEVH;