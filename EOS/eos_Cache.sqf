if (!isServer) exitwith {};
private ["_spotEnemies","_spotFriendlies","_sideEOSInf","_sideEOSInfTwo","_crew","_vehicle","_EOSvehGrp","_EOSAPCGrp"];

_sideEOSInf = (_this select 0);
_sideEOSInfTwo = (_this select 1);
_crew = (_this select 2);
_vehicle = (_this select 3);
_EOSvehGrp = (_this select 4);
_EOSAPCGrp = (_this select 5);
_spotEnemies = (_this select 6);
_spotFriendlies = (_this select 7);

			{deleteVehicle _x} forEach units _sideEOSInf; 
			{deleteVehicle _x} forEach units _sideEOSInfTwo;					
			deleteGroup _sideEOSInfTwo;deleteGroup _sideEOSInfTwo;
			{deleteVehicle _x} forEach (_crew) + [_vehicle];
			{deleteVehicle _x} forEach (_APCcrew) + [_APC];
			deleteGroup _EOSvehGrp;deletegroup _EOSAPCGrp;
			deletevehicle _spotEnemies;
			deletevehicle _spotFriendlies;