/*	
	Initialise handleDamage EH for men
	Author: Gokmen
	website: github.com/the0utsider
*/

if(is3DEN) exitWith {};

_unit = _this select 0;

if (local _unit) then {
	_unit addeventhandler ["handledamage", {_this call fn_goko_ballistic_impact_main}];
};