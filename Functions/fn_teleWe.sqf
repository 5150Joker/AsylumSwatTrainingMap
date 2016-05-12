/*
	File: fn_teleWe.sqf
	Author: Briland
	
	Description:
	Teleports all player caracters to current location.
*/
{
	_x setPos ([position player select 0, position player select 1, position player select 2]);
} foreach playableUnits;