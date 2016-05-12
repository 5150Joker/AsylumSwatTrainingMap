_player = player;
removeallweapons _player;
removeallassigneditems _player;
removeuniform _player;
removevest _player;
removebackpack _player;


_player adduniform "U_B_CombatUniform_mcam_worn";
_player addheadgear "H_CrewHelmetHeli_B";
_player addvest "V_PlateCarrier1_blk";

if (str(player) != "Swat_med") then {
	_player additem "FirstAidKit";
	_player additem "FirstAidKit";
};
_player additem "nvgoggles_OPFOR";
_player additem "ItemCompass";
_player additem "itemgps";
_player additem "itemmap";
_player additem "itemradio";
_player additem "itemwatch";

_player assignitem "nvgoggles_OPFOR";
_player assignitem "itemcompass";
_player assignitem "itemgps";
_player assignitem "itemmap";
_player assignitem "itemradio";
_player assignitem "itemwatch";

_player addMagazines ["handgrenade", 3];
_player addMagazines ["SmokeShellBlue", 3];

// Class Specific Start
_player addWeapon "Binocular";
//_player addweapon "Rangefinder";

_player addMagazines ["30Rnd_45ACP_Mag_SMG_01", 10];
_player addweapon "SMG_01_F";
_player addPrimaryWeaponItem "acc_pointer_IR";
_player addPrimaryWeaponItem "optic_Aco_smg";
_player addPrimaryWeaponItem "muzzle_snds_acp";

_player addMagazines ["11Rnd_45ACP_Mag", 5];
_player addWeapon "hgun_Pistol_heavy_01_F";
_player addHandgunItem "muzzle_snds_acp";
_player addHandgunItem "optic_MRD";