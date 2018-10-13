/*	
	main function of add-on goko ballistic impact mod
	Author: Gokmen
	website: github.com/the0utsider
	used inside Handle damage EH
*/

fn_goko_ballistic_impact_main =
{
	params [
		"_unit",
		"_selection",
		"_damage",
		"_source", 
		"_projectile",
		"_hitIndex", 
		"_instigator", 
		"_hitPoint"
	];
	#include "gettersVarsArrays_main.sqf"

	if (!gokobi_var_onoffswitch || _hitIndex != 2 || _damage < 0.9) exitWith {};
	if(_getGlasses != "") then
	{
		removeGoggles _unit;
		_unit remoteExecCall ["gokoBI_particleFX_brokenGlassParticles"];
		_unit remoteExecCall ["gokoBI_particleFX_smallHelmetParts"];
	};
	if (_getHeadMountedDisplay != "") then
	{
		_unit unassignItem _getHeadMountedDisplay;
		_unit removeItem _getHeadMountedDisplay;
		playsound3d [format ["%1",_hmdSoundEffects], _unit, false, getPosASL _unit, 0.8, 1, 70];
		[_unit, _velocityVector] remoteExecCall ["gokoBI_particleFX_cheesyDestruct"];
		_unit remoteExecCall [_hmdParticleEffects];
		_unit remoteExecCall ["gokoBI_particleFX_blackSmoke"];
	};
	if (_headgearProtection != 0) then 
	{
		if (gokobi_var_debug) then { systemChat format ["Protection: %1  Caliber penetration capacity: %2", _headgearProtection, floor _projectileForce] };
		if ( floor _projectileForce > _headgearProtection && _projectileCaliber >= gokobi_var_AllowedCaliber) then 
		{
			[_unit, _velocityVector] remoteExecCall [_helmetParticleEffects];
			_unit remoteExecCall [_bloodParticleEffects];
			playsound3d [format ["%1",_helmetPenetrateSoundEffects], _unit, false, getPosASL _unit, 2, 1, 80];
			
			if (_projectileCaliber >= _caliberHighest) then 
			{
				_unit remoteExecCall [_goreParticleEffects];
				_unit remoteExecCall ["gokoBI_particleFX_helmetTrashed"];
				removeHeadgear _unit;
			} 
			else 
			{ 
				_unit remoteExecCall [_goreParticleEffects];
				[_unit, _velocityVector] remoteExecCall [_artisticRemoval]; 
				removeHeadgear _unit 
			};
		} 
		else 
		{
			_unit remoteExecCall ["gokoBI_particleFX_smallHelmetParts"];
			playsound3d [format ["%1",_helmetHitSoundEffects], _unit, false, getPosASL _unit, 3, 1, 50];			
		};
	} 
	else 
	{
		if (!alive _unit) exitWith{};
		[_unit, _velocityVector] remoteExecCall ["gokoBI_particleFX_FlyOff"];
		playsound3d [format ["%1",_headshotFleshEffects], _unit, false, getPosASL _unit, 1, 1, 70];
		_unit remoteExecCall [_bloodParticleEffects];
		removeHeadgear _unit;	
	};
};
