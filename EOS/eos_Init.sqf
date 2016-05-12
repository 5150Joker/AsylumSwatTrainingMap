if (!isServer) exitwith {};
private ["_friendlySide","_playerSide","_SafeZone","_eosZones","_eosMarkers","_eosPreset","_eosMarkerSize","_eosCenter","_eosEmpty","_externalMarker","_eosSide","_eosReinf","_eosApc","_eosVeh","_eosHeavy","_typeGroup","_enemyTeam","_InfantryPool","_diverPool","_shipPool","_motorPool","_armorPool","_enemyFaction","_enemyFactionVehicle","_eosZones","_spawnExtraPatrol","_spawnVehicle","_spawnAPC","_reinforcementZone","_SafeZone","_enemySide"];
//_debugHint = True;

_eosZones = (_this select 0);
_eosPreset = if (count _this > 1) then {_this select 1} else {0};
_enemySide = if (count _this > 2) then {_this select 2} else {0};
_playerSide= if (count _this > 3) then {_this select 3} else {1};
_SafeZone = if (count _this > 4) then {_this select 4} else {350};



// GO TO BOTTOM FOR ADVANCED CUSTOMISATION
	_eosMarkerSize = 50;



switch (_playerSide) do{case 0:{_friendlySide="east";};case 1:{_friendlySide="west";};case 2:{_friendlySide="GUER";};};
switch (_enemySide) do{case 0:{
// EAST UNIT POOLS. REMOVE OR ADD SQUADS AS NEEDED
_InfantryPool = ["OIA_InfSquad_Weapons","OIA_InfSquad"];
_diverPool = ["OI_diverTeam"];
_shipPool = ["O_Boat_Transport_01_F","O_SDV_01_F"];
_motorPool = ["O_MRAP_02_hmg_F","O_MRAP_02_gmg_F","O_MRAP_02_F","O_Truck_02_covered_F"]; 
_armorPool = ["O_APC_Wheeled_02_rcws_F"];
_enemyFaction = "East";
_enemyFactionVehicle = East;
_enemyTeam = "OPF_F";
};case 1:{
// WEST UNIT POOLS. REMOVE OR ADD SQUADS AS NEEDED
_InfantryPool = ["BUS_InfSquad","BUS_InfSquad_Weapons"];
_diverPool = ["BUS_DiverTeam"];
_shipPool = ["B_Boat_Transport_01_F","B_SDV_01_F"];
_motorPool = ["B_MRAP_01_F","B_MRAP_01_hmg_F","B_MRAP_01_gmg_F","B_Truck_01_covered_F"]; 
_armorPool = ["B_APC_Wheeled_01_cannon_F"];
_enemyFaction = "west";
_enemyFactionVehicle = West;
_enemyTeam = "BLU_F";
};case 2:{
// GUER UNIT POOLS. REMOVE OR ADD SQUADS AS NEEDED
_InfantryPool = [];
_diverPool = [];
_shipPool = ["I_Boat_Transport_01_F","I_Boat_Armed_01_minigun_F"];
_motorPool = ["I_MRAP_03_F","I_MRAP_03_hmg_F","I_MRAP_03_gmg_F","I_Truck_02_covered_F"]; 
_armorPool = [];
_enemyFaction = "guer";
//_enemyFactionVehicle =;
_enemyTeam = "";
};};
_typeGroup = "";

switch (_eosPreset) do
{
	case 0:
	{
		{
	PRIVATE ["_eosGroupSize","_spawnExtraPatrol","_spawnVehicle","_spawnAPC","_reinforcementZone","_externalVariable"];
	// PRESET 1 - LIGHT PATROL
		_spawnExtraPatrol = false; 		//ADD EXTRA GROUP
		_spawnVehicle = false;			//ADD VEHICLE
		_spawnAPC = false;			//ADD APC
		_reinforcementZone = false;		//ALLOW REINFORCEMENTS
		_eosGroupSize = 5;			//SET SIZE OF GROUPS THAT SPAWN
		_externalVariable = false;	
	
	[_x,_spawnExtraPatrol,_spawnVehicle,_spawnAPC,_reinforcementZone,_SafeZone,_InfantryPool,_diverPool,_shipPool,_motorPool,_armorPool,_typeGroup,_enemyTeam,_enemyFaction,_enemyFactionVehicle,_eosMarkerSize,_friendlySide,_eosGroupSize] execVM "eos\eos_launch.sqf";
	} foreach _eosZones;
	};
	case 1:
	{
			{
	PRIVATE ["_spawnExtraPatrol","_spawnVehicle","_spawnAPC","_reinforcementZone","_externalVariable","_eosGroupSize"];
	// PRESET 2 - HEAVY PATROLS
		_spawnExtraPatrol = true; 		//ADD EXTRA GROUP
		_spawnVehicle = false;			//ADD VEHICLE
		_spawnAPC = false;			//ADD APC
		_reinforcementZone = false;		//ALLOW REINFORCEMENTS
		_eosGroupSize = 5;			//SET SIZE OF GROUPS THAT SPAWN
		_externalVariable = false;
	
	[_x,_spawnExtraPatrol,_spawnVehicle,_spawnAPC,_reinforcementZone,_SafeZone,_InfantryPool,_diverPool,_shipPool,_motorPool,_armorPool,_typeGroup,_enemyTeam,_enemyFaction,_enemyFactionVehicle,_eosMarkerSize,_friendlySide,_eosGroupSize] execVM "eos\eos_launch.sqf";
	} foreach _eosZones;
	};
	case 2:
	{
			{
	PRIVATE ["_spawnExtraPatrol","_spawnVehicle","_spawnAPC","_reinforcementZone","_externalVariable","_eosGroupSize"];
	// PRESET 3 - LIGHT VEHICLE
		_spawnExtraPatrol = false; 		//ADD EXTRA GROUP
		_spawnVehicle = TRUE;			//ADD VEHICLE
		_spawnAPC = false;			//ADD APC
		_reinforcementZone = false;		//ALLOW REINFORCEMENTS
		_eosGroupSize = 5;			//SET SIZE OF GROUPS THAT SPAWN
		_externalVariable = false;
	
	[_x,_spawnExtraPatrol,_spawnVehicle,_spawnAPC,_reinforcementZone,_SafeZone,_InfantryPool,_diverPool,_shipPool,_motorPool,_armorPool,_typeGroup,_enemyTeam,_enemyFaction,_enemyFactionVehicle,_eosMarkerSize,_friendlySide,_eosGroupSize] execVM "eos\eos_launch.sqf";
	} foreach _eosZones;
	};
	case 3:
	{
			{
	PRIVATE ["_spawnExtraPatrol","_spawnVehicle","_spawnAPC","_reinforcementZone","_externalVariable","_eosGroupSize"];
	// PRESET 4 - APC PATROL
		_spawnExtraPatrol = TRUE; 		//ADD EXTRA GROUP
		_spawnVehicle = false;			//ADD VEHICLE
		_spawnAPC = TRUE;				//ADD APC
		_reinforcementZone = false;		//ALLOW REINFORCEMENTS
		_eosGroupSize = 5;				//SET SIZE OF GROUPS THAT SPAWN
		_externalVariable = false;	
	
	[_x,_spawnExtraPatrol,_spawnVehicle,_spawnAPC,_reinforcementZone,_SafeZone,_InfantryPool,_diverPool,_shipPool,_motorPool,_armorPool,_typeGroup,_enemyTeam,_enemyFaction,_enemyFactionVehicle,_eosMarkerSize,_friendlySide,_eosGroupSize] execVM "eos\eos_launch.sqf";
	} foreach _eosZones;
	};
	case 4:
	{
			{
	PRIVATE ["_spawnExtraPatrol","_spawnVehicle","_spawnAPC","_reinforcementZone","_externalVariable","_eosGroupSize"];
	// PRESET 5 - REINFORCEMENT
		_spawnExtraPatrol = false; 		//ADD EXTRA GROUP
		_spawnVehicle = false;			//ADD VEHICLE
		_spawnAPC = false;				//ADD APC
		_reinforcementZone = TRUE;		//ALLOW REINFORCEMENTS
		_eosGroupSize = 5;				//SET SIZE OF GROUPS THAT SPAWN
		_externalVariable = false;	
	
	[_x,_spawnExtraPatrol,_spawnVehicle,_spawnAPC,_reinforcementZone,_SafeZone,_InfantryPool,_diverPool,_shipPool,_motorPool,_armorPool,_typeGroup,_enemyTeam,_enemyFaction,_enemyFactionVehicle,_eosMarkerSize,_friendlySide,_eosGroupSize] execVM "eos\eos_launch.sqf";
	} foreach _eosZones;
	};
	case 5:
	{
			{
			PRIVATE [];
	// EMPTY MARKER PRESET
	[_x,_eosMarkerSize,_enemyFaction,_safeZone,_friendlySide,TRUE] execVM "eos\eos_EmptyZone.sqf";
	} foreach _eosZones;
	};
	case 6:
	{
			{
	PRIVATE ["_spawnExtraPatrol","_spawnVehicle","_spawnAPC","_reinforcementZone","_externalVariable","_eosGroupSize"];
	// CUSTOM PRESET 
		_spawnExtraPatrol = false; 		//ADD EXTRA GROUP
		_spawnVehicle = false;			//ADD VEHICLE
		_spawnAPC = false;				//ADD APC
		_reinforcementZone = false;		//ALLOW REINFORCEMENTS
		_eosGroupSize = 5;				//SET SIZE OF GROUPS THAT SPAWN
		_externalVariable = false;	
	
	[_x,_spawnExtraPatrol,_spawnVehicle,_spawnAPC,_reinforcementZone,_SafeZone,_InfantryPool,_diverPool,_shipPool,_motorPool,_armorPool,_typeGroup,_enemyTeam,_enemyFaction,_enemyFactionVehicle,_eosMarkerSize,_friendlySide,_eosGroupSize] execVM "eos\eos_launch.sqf";
	} foreach _eosZones;
	};
	case 7:
	{
			{
	PRIVATE ["_spawnExtraPatrol","_spawnVehicle","_spawnAPC","_reinforcementZone","_externalVariable","_eosGroupSize"];
	// CUSTOM PRESET
		_spawnExtraPatrol = false; 		//ADD EXTRA GROUP
		_spawnVehicle = false;			//ADD VEHICLE
		_spawnAPC = false;				//ADD APC
		_reinforcementZone = false;		//ALLOW REINFORCEMENTS
		_eosGroupSize = 5;				//SET SIZE OF GROUPS THAT SPAWN
		_externalVariable = false;	
	
	[_x,_spawnExtraPatrol,_spawnVehicle,_spawnAPC,_reinforcementZone,_SafeZone,_InfantryPool,_diverPool,_shipPool,_motorPool,_armorPool,_typeGroup,_enemyTeam,_enemyFaction,_enemyFactionVehicle,_eosMarkerSize,_friendlySide,_eosGroupSize] execVM "eos\eos_launch.sqf";
	} foreach _eosZones;
	};
};