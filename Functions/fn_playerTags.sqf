/*
	File: fn_playerTags.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds the tags above other players heads when close and have visible range.
*/
scopeName "main";
onEachFrame
{
	private["_vis","_pos","_near","_name","_icon","_width","_height","_gang"];
    _near = getPos player nearEntities ["Man",10];
    {
        if(player distance _x < 10 && isPlayer _x && _x != player) then
        {
            _vis = lineIntersects [eyePos player, eyePos _x,player, _x];
            if(!_vis) then
            {
				_icon = "";
                _pos = visiblePosition _x;
                _pos set[2,(getPosATL _x select 2) + 2.2];
				_width = 0.85;
				_height = 0.85;
				switch (_x getVariable["coplevel", 0]) do
				{
					case (1) : {_name = format["Police Cadet %1", name _x];};
					case (2) : {_name = format["Police Constable %1", name _x];}; 
					case (3) : {_name = format["Police Sergeant %1", name _x];};
					case (4) : {_name = format["Police Lieutenant %1", name _x];};
					case (5) : {_name = format["Police Captain %1", name _x];};
					default {
						_gang = _x getVariable["gangName",""];
						_name = name _x;
						_width = 0;
						_height = 0;
						if (_gang != "") then {
							_pos2 = +_pos;
							_pos2 set[2,(getPosATL _x select 2) + 2];
							drawIcon3D ["",[1,1,1,0.7],_pos2,_width,_height,0,format["[%1]", _gang],0,0.03];
						};
					};
				};
				if (_x getVariable["coplevel", 0] > 0) then
				{
					_icon = [((_x getVariable["coplevel", 0]) - 1),"texture"] call BIS_fnc_rankParams;
				};
				
				_swatlevel = _x getVariable["swatlevel",0];
				
				if (_swatlevel > 0) then {
					_name = format["S.W.A.T. %1", name _x];
					_icon = [6,"texture"] call BIS_fnc_rankParams;
					
					if (_swatlevel == 3 ) then {
						_name = format["S.W.A.T. Commander %1", name _x];
					};
				};
				
                drawIcon3D [_icon,[1,1,1,1],_pos,_width,_height,0,_name,0,0.04];
            };
        };
    } foreach _near;
}