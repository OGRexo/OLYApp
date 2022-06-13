
_this addAction
[
 "Sell Truck",
 {
  params ["_player", "_caller", "_actionId", "_arguments"];
    []spawn JDEV_fnc_drugRunDrop;
 },
 nil,
 1.5,
 true,
 true,
 "",
 "(drugVehicle distance _target < 15)",  // _target, _this, _originalTarget //Explosive Satchel,
 5,
 false,
 "",
 ""
];
