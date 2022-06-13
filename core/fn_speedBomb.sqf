_satchel = 'SatchelCharge_Remote_Ammo' createVehicle[0,0,500];
_vehicle = cursorObject;
_satchel attachTo [_vehicle, [0, 0, 1]];
player removeMagazine "SatchelCharge_Remote_Mag";
while {true} do {

  if (speed _vehicle >= 50)exitwith{
    hint "dont go below 50 idiot";
    uisleep 1;
    waituntil {speed _vehicle <=50 };
    uisleep 1;
    _vehiclePos = getpos _vehicle;
    "Bo_GBU12_LGB" createVehicle _vehiclePos;
  };
};
