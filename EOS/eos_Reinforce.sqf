//0=[_currentmkr,_currentEOStype,_eosMarkerSize,_enemyTeam,_enemyFaction,_enemyFactionVehicle,_typeGroup] call callEosReinforce;
if (!isServer) exitwith {};
private ["_eosGroupSize","_friendlySide","_ActivateReinforcement","_spotFriendlies","_reinforcingPatrol","_SafeZone","_sdmInwater","_hidefromPlayerDistance","_hidefromPlayer","_debugHint","_debugMkr","_getToMarker","_reinforcementLocation","_reinforceEntry","_findReinfLocation","_currentmkr","_currentPOS","_currentEOStype","_eosMarkerSize","_enemyTeam","_enemyFaction","_enemyFactionVehicle","_typeGroup"];


_currentmkr =(_this select 0);
_currentPOS = markerpos(_this select 0);
_currentEOStype=(_this select 1);
_eosMarkerSize = (_this select 2);
_enemyTeam=(_this select 3);
_enemyFaction=(_this select 4);
_enemyFactionVehicle =(_this select 5);
_typeGroup=(_this select 6);
_sdmInwater=(_this select 7);
_SafeZone=(_this select 8);
_friendlySide=(_this select 9);
_eosGroupSize=(_this select 10);
_reinforceEntry = 200;
_hidefromPlayerDistance = 200;

//_debugHint = true;

	_ActivateReinforcement = createTrigger ["EmptyDetector",_currentPOS]; 
	_ActivateReinforcement setTriggerArea [_eosMarkerSize,_eosMarkerSize,0,true]; 
	_ActivateReinforcement setTriggerActivation [_friendlySide,"PRESENT",true]; 
	_ActivateReinforcement setTriggerStatements ["this","",""];
	
Waituntil {triggeractivated _ActivateReinforcement};
if (_debugHint) then {hint "reinforcement called";};

if (!_sdmInwater) then {_findReinfLocation = true;} else {_findReinfLocation = false;};
_hidefromPlayer = true;
	
	_reinforcementLocation = [_currentPOS, _reinforceEntry, random 359] call BIS_fnc_relPos;

while {_hidefromPlayer} do
	{
			{
			if (isPlayer _x && (_x distance _reinforcementLocation) < _hidefromPlayerDistance) then 
				{
					_reinforcementLocation = [_currentPOS, _reinforceEntry, random 359] call BIS_fnc_relPos;
				} else {_hidefromPlayer = false;
						if (_findReinfLocation) then {
								if (surfaceIsWater _reinforcementLocation) then 
									{
									_reinforcementLocation = [_currentPOS, _reinforceEntry, random 359] call BIS_fnc_relPos;
									if (_debugHint) then {hint "Reinforcements in water. Retrying";};
										} else {
								_findReinfLocation = false;
										};
									};
				};
			} forEach allUnits;
			
sleep 0.5;};//_hide from player

	_reinforcingPatrol = [_reinforcementLocation, _enemyFactionVehicle, (configfile >> "CfgGroups" >> _enemyFaction >> _enemyTeam >> _typeGroup >> _currentEOStype),[],[],[0.25,0.4],[],[_eosGroupSize,0.1]] call BIS_fnc_spawnGroup;

	_getToMarker = _reinforcingPatrol addWaypoint [_currentPOS, 0];
	_getToMarker setWaypointType "MOVE";
	_getToMarker setWaypointSpeed "FULL";
	_getToMarker setWaypointBehaviour "AWARE"; 
	_getToMarker setWaypointFormation "COLUMN";
	if (_debugHint) then {hint "Successfully spawned reinforcements";};
if (_debugHint) then {
_mkrID = format["Reinf%1",_currentmkr];
_mkrID = createMarker[_mkrID,_reinforcementLocation];
_mkrID setMarkerType "Mil_Dot";
_mkrID setMarkerColor "ColorRed";
_mkrID setMarkerText "Reinforcements";
					};
					
waitUntil { sleep 1; ( {isPlayer _x && (_x distance _currentPOS) > _SafeZone} count allUnits) > 0 };

_units = []; // all WEST units within 10m of _spwnpos
{
  if (isPlayer _x && (_x distance _currentPOS) < 10) then {
    _units set [count _units, _x];
  };
} forEach allUnits; 

deletemarker _mkrID;
{deleteVehicle _x} forEach units _reinforcingPatrol;
deleteGroup _reinforcingPatrol;
