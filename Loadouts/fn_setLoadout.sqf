if (str(player) in ["Swat_r","a1","b1","admin","admin1"]) then {
	[] call ast_fnc_rifleman;
};
if (str(player) in ["Swat_s","Swat_med"]) then {
	[] call ast_fnc_support;
};
if (str(player) == "Swat_spot") then {
	[] call ast_fnc_spotter;
};
if (str(player) == "Swat_m") then {
	[] call ast_fnc_marksman;
};

//This is a pretty messy way of doing it, but it works.
[] spawn 
{
	while{true} do 
	{
		{
			if ((uniform _x) == "U_B_CombatUniform_mcam_worn") then
			{
				[_x,"images\c_combat_police_co.jpg"] call ast_fnc_setUniform;
			};
		} foreach playableUnits;
		sleep 5;
	};
};

