if (!isServer) exitwith {};
private ["_firstTime","_spotTaken","_DebugHint","_eosActive","_currentPOS","_enemyFaction","_friendlySide","_eosMarkerSize","_currentmkr","_spotFriendlies","_spotEnemies","_safezone"];

_currentmkr =(_this select 0);
_currentPOS =markerpos(_this select 0);
_eosMarkerSize=(_this select 1);
_enemyFaction=(_this select 2);
_SafeZone = (_this select 3);
_friendlySide = (_this select 4);
_firstTime = (_this select 5);

if (_firstTime) then {
	[[_currentMKR,"ColorRed"],"JIPeosSquares", true, true] spawn BIS_fnc_MP;
					};
//_DebugHint = true;

	_spotFriendlies = createTrigger ["EmptyDetector",_currentPOS]; 
	_spotFriendlies setTriggerArea [_SafeZone,_SafeZone,0,true]; 
	_spotFriendlies setTriggerActivation [_friendlySide,"PRESENT",true]; 
	_spotFriendlies setTriggerStatements ["this","",""];

waituntil {triggeractivated _spotFriendlies};
		[[_currentMKR,1],"ACTIVEEOS", true, true] spawn BIS_fnc_MP;
	_eosActive = true;
	if (_debugHint) then {hint "EMPTY EOS ACTIVE"};
						_spotEnemies = createTrigger ["EmptyDetector",_currentPOS]; 
						_spotEnemies setTriggerArea [_eosMarkerSize,_eosMarkerSize,0,true]; 
						_spotEnemies setTriggerActivation [_enemyFaction,"PRESENT",true]; 
						_spotEnemies setTriggerStatements ["this","",""]; 
							_spotTaken = createTrigger ["EmptyDetector",_currentPOS]; 
							_spotTaken setTriggerArea [_eosMarkerSize,_eosMarkerSize,0,true]; 
							_spotTaken setTriggerActivation [_friendlySide,"PRESENT",true]; 
							_spotTaken setTriggerStatements ["this","",""]; 
	
while {_eosActive} do {
	sleep 3;
		if (triggeractivated _spotEnemies) then 
				{
			if (_debugHint) then {hint "ENEMIES IN ZONE"};
			[[_currentMKR,"ColorRed"],"JIPeosSquares", true, true] spawn BIS_fnc_MP;
				};
		if (!triggeractivated _spotFriendlies) then 
				{
			if (_debugHint) then {hint "ZONE LEFT"};
			_eosActive = false;
				};
		if (triggeractivated _spotTaken) then 
				{
			if (_debugHint) then {hint "ZONE CAPTURED"};
			[[_currentMKR,"ColorGreen"],"JIPeosSquares", true, true] spawn BIS_fnc_MP;
				};
	};

if (_debugHint) then {hint "CACHED EMPTY MARKER"};
	deleteVEHICLE _spotFriendlies;deleteVEHICLE _spotEnemies;deleteVEHICLE _spotTaken;
	[_currentmkr,_eosMarkerSize,_enemyFaction,_safeZone,_friendlySide,FALSE] execVM "eos\eos_EmptyZone.sqf";
