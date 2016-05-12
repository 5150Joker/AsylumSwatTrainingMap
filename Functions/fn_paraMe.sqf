player setPos ([position player select 0, position player select 1, (500)]);
removebackpack player;
player addBackpack "B_Parachute";


_chute = "Steerable_Parachute_F" createVehicle [0, 0, 0];
_box = (vehicle player);
_chute setPos [(getpos _box select 0), (getPos _box select 1)-10, (getPos _box select 2)-10];
_box attachto [_chute, [0, 0, 0]];
_chute setPos ([position _chute select 0, position _chute select 1, (500)]);
player moveIndriver chute;

waitUntil {((getPos _box) select 2) < 1};
switch (true) do 
{
case not (alive _box): {detach _box;};
case alive _box: {detach _box;"SmokeShellgreen" createVehicle getPos _box;_flare = "F_40mm_White" createVehicle [getPos _box select 0,getPos _box select 1,+150];};
}; 
_chute setPos [(getpos _box select 0)+2, (getPos _box select 1), (getPos _box select 2)];


_box = (cursorTarget);
_chute = "Steerable_Parachute_F" createVehicle [0, 0, 0];
_chute setPos [(getpos _box select 0), (getPos _box select 1)-10, (getPos _box select 2)-10];
_box attachto [_chute, [0, 0, 0]];
_chute setPos ([position _chute select 0, position _chute select 1, (100)]);
_box moveIndriver _chute;