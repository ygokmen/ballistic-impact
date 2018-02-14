if(is3DEN) exitWith {};

_unit = _this select 0;

if (local _unit) then {
	_unit addeventhandler ["handledamage", {_this call goko_fnc_hatdrop}];
};