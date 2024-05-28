//Drugs are bad dont do them ;D|
//This will be a list of drugs that are usable
//_duglist = 'MineDetector';
// A one and 3 chance on using a drug that is laced and will kill you :D
_lacedDrug = round(random 3);
hint format ["random number is %1", _lacedDrug];

if (_lacedDrug == 3) then {
    addCamShake [10, 2, 25];
    player setDamage ((damage player) + 0.10);
    uiSleep 2;
    addCamShake [15, 3, 14];
    player setDamage ((damage player) + 0.30);
    uiSleep 3;
    addCamShake [26, 4, 23];
    player setDamage ((damage player) + 0.30);
    uiSleep 4;
    addCamShake [90, 5, 19];
    player setDamage ((damage player) + 0.30);
    
    uiSleep 1;
    //_colorCorrectionsEffHandle ppEffectAdjust [1, 0.4, 0, [0, 0, 0, 0], [1, 1, 1, 0], [1, 1, 1, 0]];

}else{

hint "haha you lived";

};



