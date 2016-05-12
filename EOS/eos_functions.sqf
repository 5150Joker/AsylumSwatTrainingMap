JIPeosSquares = {
private ["_currentMKR","_MKRColour","_mkrAlpha"];
_currentMKR = (_this select 0);
_MKRColour = (_this select 1);
_mkrAlpha=if (count _this > 2) then {_this select 2} else {0.5}; 

_currentMKR setMarkercolor _MKRColour;
_currentMKR setMarkerAlpha _mkrAlpha;

};

ACTIVEEOS = {
private ["_currentMKR","_mkrAlpha"];
_currentMKR = (_this select 0);
_mkrAlpha=if (count _this > 1) then {_this select 1} else {0.5}; 

_currentMKR setMarkerAlpha _mkrAlpha;

};

