_satchel = 'SatchelCharge_Remote_Ammo' createVehicle[0,0,500];
_building = cursorObject;
_satchel attachTo [_building, [0, 0, 1]];
_Time = 10;
if (typeof _building == "Land_i_Shed_Ind_F") then {
  player removeMagazine "SatchelCharge_Remote_Mag";
  while {true} do {
    uisleep 1;
    hint str _Time;
    _Time = _Time - 1;
    if (_Time <= 0) exitwith {
      hint "SHED BOOM";
      _vehiclePos = getpos _building;
      "Bo_GBU12_LGB" createVehicle _vehiclePos;
      uisleep 1;
      "Bo_GBU12_LGB" createVehicle _vehiclePos;
      uisleep 1;
      "Bo_GBU12_LGB" createVehicle _vehiclePos;
      uisleep 1;
      "Bo_GBU12_LGB" createVehicle _vehiclePos;
      uisleep 1;
      "Bo_GBU12_LGB" createVehicle _vehiclePos;
  

    };
  };
};
