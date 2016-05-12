
/*
	File: fn_addParachute.sqf
	Author: Briland
	
	Description:
	Adds a parachute to the local player
*/
_player = player;
removebackpack _player;
_player addBackpack "B_Parachute";