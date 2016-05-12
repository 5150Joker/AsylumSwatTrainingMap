if (!isServer) exitwith {};
private ["_eosGroupSize","_spotEnemies","_spotFriendlies","_friendlySide","_reinforcementZone","_eosAddEnemies","_motorPool","_EOSAPCGrp","_APCcrew","_APC","_sideEOSAPC","_EOSvehGrp","_crew","_vehicle","_sideEOSVeh","_spawnVehicle","_sideEOSInfTwo","_spawnExtraPatrol","_enemyTeam","_enemyFactionVehicle","_sideEOSInf","_spwnposNew","_armorPool","_currentEOSAPC","_sdmInwater","_spawnAPC","_typeGroup","_shipPool","_currentEOSVeh","_diverPool","_currentEOStype","_debugHint","_currentmkr","_eosActive","_SafeZone","_enemyFaction","_eosMarkerSize","_spotFriendlies","_spotEnemies","_currentPOS"];

_currentmkr =(_this select 0);
_currentPOS = markerpos(_this select 0);
_spawnExtraPatrol =(_this select 1);
_spawnVehicle =(_this select 2);
_spawnAPC =(_this select 3);
_reinforcementZone=(_this select 4);
_SafeZone=(_this select 5);
_InfantryPool=(_this select 6);
_diverPool=(_this select 7);
_shipPool=(_this select 8);
_motorPool=(_this select 9);
_armorPool=(_this select 10);
_typeGroup=(_this select 11);
_enemyTeam=(_this select 12);
_enemyFaction=(_this select 13);
_enemyFactionVehicle =(_this select 14);
_eosMarkerSize=(_this select 15);
_friendlySide=(_this select 16);
_eosGroupSize=(_this select 17);

_debugHint = false;
[[_currentMKR,"ColorRed"],"JIPeosSquares", true, true] spawn BIS_fnc_MP;

	_spotFriendlies = createTrigger ["EmptyDetector",_currentPOS]; 
	_spotFriendlies setTriggerArea [_SafeZone,_SafeZone,0,true]; 
	_spotFriendlies setTriggerActivation [_friendlySide,"PRESENT",true]; 
	_spotFriendlies setTriggerStatements ["this","",""];

waitUntil {triggeractivated _spotFriendlies};

						_spotEnemies = createTrigger ["EmptyDetector",_currentPOS]; 
						_spotEnemies setTriggerArea [_eosMarkerSize,_eosMarkerSize,0,true]; 
						_spotEnemies setTriggerActivation [_enemyFaction,"NOT PRESENT",true]; 
						_spotEnemies setTriggerStatements ["this","",""]; 
						
if (_debugHint) then {hint "PLAYER IN ZONE";};
[[_currentMKR,"ColorRed",1],"JIPeosSquares", true, true] spawn BIS_fnc_MP;

if (surfaceIsWater _currentPOS) then {
		_sdmInwater = true; if (_debugHint) then {hint "SM on water";};
		_currentEOStype = _diverPool select (floor(random(count _diverPool)));
		_currentEOSVeh = _shipPool select (floor(random(count _shipPool)));	
		_typeGroup = "SpecOps";
		_spawnAPC = false;
		}else{
			_sdmInwater = false; if (_debugHint) then {hint "SM on land";};
			_currentEOStype = _InfantryPool select (floor(random(count _InfantryPool)));
			_currentEOSVeh = _motorPool select (floor(random(count _motorPool)));
			_currentEOSAPC = _armorPool select (floor(random(count _armorPool)));
			_typeGroup = "infantry";
		};

if (_spawnVehicle) then {
	if (_debugHint) then {hint "Spawning Light vehicle";};
	_spwnposNew = [_currentPOS, random _eosMarkerSize, random 359] call BIS_fnc_relPos;	
	_sideEOSVeh = [_spwnposNew, random 359, _currentEOSVeh,_enemyFactionVehicle] call bis_fnc_spawnvehicle;
	_vehicle = _sideEOSVeh select 0;
	_crew = _sideEOSVeh select 1;
	_EOSvehGrp = _sideEOSVeh select 2;
	0=[_EOSvehGrp,_currentPOS] call bis_fnc_taskDefend;
	};

if (_spawnAPC) then {
	if (_debugHint) then {hint "Spawning APC";};
	_spwnposNew = [_currentPOS, random _eosMarkerSize, random 359] call BIS_fnc_relPos;
	_sideEOSAPC = [_spwnposNew, random 359, _currentEOSAPC,_enemyFactionVehicle] call bis_fnc_spawnvehicle;
	_APC = _sideEOSAPC select 0;
	_APCcrew = _sideEOSAPC select 1;
	_EOSAPCGrp = _sideEOSAPC select 2;
	0=[_EOSAPCGrp,_currentPOS] call bis_fnc_taskDefend;
	};
		
if (_spawnExtraPatrol) then {
	if (_debugHint) then {hint "Spawning House patrol";};
	_spwnposNew = [_currentPOS, random _eosMarkerSize, random 359] call BIS_fnc_relPos;	
	_sideEOSInfTwo = [_spwnposNew, _enemyFactionVehicle, (configfile >> "CfgGroups" >> _enemyFaction >> _enemyTeam >> _typeGroup >> _currentEOStype),[],[],[0.25,0.4],[],[_eosGroupSize,0.1]] call BIS_fnc_spawnGroup;
	0 = [_sideEOSInfTwo,_currentPOS,20] call bis_fnc_taskPatrol;						
	};

_spwnposNew = [_currentPOS, random _eosMarkerSize, random 359] call BIS_fnc_relPos;
_sideEOSInf = [_spwnposNew, _enemyFactionVehicle, (configfile >> "CfgGroups" >> _enemyFaction >> _enemyTeam >> _typeGroup >> _currentEOStype),[],[],[0.25,0.4],[],[_eosGroupSize,0]] call BIS_fnc_spawnGroup;
0=[_currentPOS,units _sideEOSInf,50,0,[0,4],true] call callHouseScript;	


	if (_reinforcementZone) then 
			{
		null=[_currentmkr,_currentEOStype,_eosMarkerSize,_enemyTeam,_enemyFaction,_enemyFactionVehicle,_typeGroup,_sdmInwater,_SafeZone,_friendlySide,_eosGroupSize] execVM "eos\eos_Reinforce.sqf";
			};
			
_eosActive = true;
	while {_eosActive} do
		{
			if (!triggeractivated _spotFriendlies) then 
				{// CACHE SEQUENCE
				if (_debugHint) then {hint "PLAYER LEAVING EOS ZONE";};
				_eosActive = false;
				null = [_currentmkr,_spawnExtraPatrol,_spawnVehicle,_spawnAPC,_reinforcementZone,_SafeZone,_InfantryPool,_diverPool,_shipPool,_motorPool,_armorPool,_typeGroup,_enemyTeam,_enemyFaction,_enemyFactionVehicle,_eosMarkerSize,_friendlySide,_eosGroupSize] execVM "eos\eos_launch.sqf";
				};
	
			if (triggeractivated _spotEnemies) then 
				{// WON SEQUENCE
					if (_debugHint) then {hint "EOS ZONE CLEARED";};
					_eosActive=false;					
					[[_currentMKR,"ColorGreen"],"JIPeosSquares", true, true] spawn BIS_fnc_MP;
			};
	sleep 2;
	};
0=[_sideEOSInf,_sideEOSInfTwo,_crew,_vehicle,_EOSvehGrp,_EOSAPCGrp,_spotEnemies,_spotFriendlies] call callEosCache;

		