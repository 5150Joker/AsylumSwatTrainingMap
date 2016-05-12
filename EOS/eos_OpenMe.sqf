[] execVM "eos\eos_functions.sqf";
if (!isServer) exitwith {};
callHouseScript = compile preprocessFileLineNumbers "eos\SHK_buildingpos.sqf";
callEosZone = compile preprocessFileLineNumbers "eos\eos_init.sqf";
callEosCache = compile preprocessFileLineNumbers "eos\eos_Cache.sqf";
////////////////////////////
// 0 = EAST
// 1 = WEST
// 2 = GUER
////////////////////////////
// 0 = LIGHT PATROL
// 1 = HEAVY PATROL
// 2 = LIGHT VEHICLE
// 3 = APC PATROL
// 4 = REINFORCEMENT ZONE
// 5 = EMPTY ZONE
// 6 = CUSTOM PRESET
// 7 = CUSTOM PRESET
////////////////////////////



[["MKR1","MKR2","MKR3","MKR4","MKR5","MKR6","MKR7","MKR8","MKR9","MKR10","MKR11","MKR12","MKR13","MKR14","MKR15","MKR16"],0,0,1,75] call callEosZone;
