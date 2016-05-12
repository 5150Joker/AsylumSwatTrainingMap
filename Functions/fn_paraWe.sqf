/*
	File: fn_paraWe.sqf
	Author: Briland
	
	Description:
	Teleports all Blufor player caracters 500 meters above player's current pos and gives them a parachute.
*/
{
	if (side _x == west) then {
		_x setPos ([position player select 0, position player select 1, (500)]);
		["", "ast_fnc_addParachute", _x, false] spawn BIS_fnc_MP;
	};
} foreach playableUnits;