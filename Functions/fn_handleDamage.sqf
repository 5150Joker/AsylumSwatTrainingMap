/*
	File: fn_handleDamage.sqf
	Author: Skalicon
	
	Description:
	Handles special damage events
*/
private["_unit","_damage","_source","_projectile","_hitBox","_curWep","_driver"];
_unit = _this select 0;
_hitBox = _this select 1;
_damage = _this select 2;
_source = _this select 3;
_projectile = _this select 4;

// Stun grenades
if (_projectile == "mini_Grenade") then {
	_damage = 0;
	[] spawn ast_fnc_handleFlashbang;
};
[] call ast_fnc_hudUpdate;
_damage;