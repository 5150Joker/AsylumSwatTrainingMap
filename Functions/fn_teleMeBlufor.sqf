/*
	File: fn_teleMeBlufor.sqf
	Author: Briland
	
	Description:
	Teleports all Blufor player caracters to the player.
*/
{
	if (side _x == west) then {_x setPos (position player);
	};
} foreach playableUnits;