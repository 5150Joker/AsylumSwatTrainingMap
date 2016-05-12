/*
	File: fn_teleMap.sqf
	Author: Briland
	
	Description:
	Opens the player's map and teleports them to the location they click on.
*/
openMap true;
sleep 1;
hint "Click on map to teleport.";
onMapSingleClick "player setPos _pos; onMapSingleClick ''; openMap false; true;";
waitUntil{!(visibleMap)}; 
hint "";