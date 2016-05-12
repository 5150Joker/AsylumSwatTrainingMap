onEachFrame
{
	private["_vis","_pos","_near","_name","_icon","_width","_height","_gang"];
	{
		if (isPlayer _x) then {
			_pos = visiblePosition _x;
			_pos set[2,(getPosATL _x select 2) + 2.2];
			_name = name _x;
			drawIcon3D ["",[1,1,1,1],_pos,0,0,0,_name,0,0.04];
		};
	} forEach allUnits;
}