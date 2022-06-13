// File: initPlayerLocal.sqf
// Author: Olympus Entertainment

[] execVM "core\init.sqf";
//SuiVest
player addAction
[
	"Bad Rexo",
	{
		params ["_player", "_caller", "_actionId", "_arguments"];
    call JDEV_fnc_suivest;
	},
	nil,
	1.5,
	true,
	true,
	"",
	"	Vest player == 'V_PlateCarrierSpec_wdl';",  // _target, _this, _originalTarget //Wetsuit [NATO]
	50,
	false,
	"",
	""
];

player addAction
[
	"mafia style bomb",
	{

		params ["_player", "_caller", "_actionId", "_arguments"];
    call JDEV_fnc_speedBomb;
	},
	nil,
	1.5,
	true,
	true,
	"",
	"'SatchelCharge_Remote_Mag'  in (magazines player) && player distance cursorTarget <5 && cursorTarget iskindof 'car';",  // _target, _this, _originalTarget //Explosive Satchel
	5,
	false,
	"",
	""
];

player addAction
[
	"BYE SHED",
	{
		params ["_player", "_caller", "_actionId", "_arguments"];
    []spawn JDEV_fnc_shedBomb;
	},
	nil,
	1.5,
	true,
	true,
	"",
	"'SatchelCharge_Remote_Mag'  in (magazines player) && player distance cursorTarget <5 && (typeof cursorObject == 'Land_i_Shed_Ind_F');",  // _target, _this, _originalTarget //Explosive Satchel
	50,
	false,
	"",
	""
];
player addAction
[
	"spawn Truck",
	{
		params ["_player", "_caller", "_actionId", "_arguments"];
    []spawn JDEV_fnc_drugRun;
	},
	nil,
	1.5,
	true,
	true,
	"",
	"(player distance cursorTarget <5) && (cursorObject == spawnMan);",  // _target, _this, _originalTarget //Explosive Satchel
	50,
	false,
	"",
	""
];
