/*
	File: fn_teleMeOpfor.sqf
	Author: Briland
	
	Description:
	Teleports all Opfor player caracters to the player.
*/
{
	if (side _x == east) then {_x setPos (position player);
	};
} foreach playableUnits;