goko_var_AllowedCaliber = profileNamespace getVariable ["goko_var_AllowedCaliber", 1.6]; //only allow designated marksmen rifles, heavy mgs and such remove headgear
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

	if !(_hitPoint == "hithead" && _damage > 1) exitwith{};
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
		playsound3d [format ["%1",_hmdSoundEffects], _unit, false, getPosASL _unit, 1.3, 1, 80];
		[_unit, _velocityVector] remoteExecCall ["gokoBI_particleFX_cheesyDestruct"];
		_unit remoteExecCall [_hmdParticleEffects];
		_unit remoteExecCall ["gokoBI_particleFX_blackSmoke"];
	};
	if (_headgearProtection != 0) then 
	{
		if (_projectileForce >= _headgearProtection && _projectileCaliber >= goko_var_AllowedCaliber) then 
		{
			[_unit, _velocityVector] remoteExecCall [_helmetParticleEffects];
			_unit remoteExecCall [_goreParticleEffects];
			playsound3d [format ["%1",_helmetHitSoundEffects], _unit, false, getPosASL _unit, 1.2, 1, 90];
			
			if (_projectileCaliber >= _caliberHighest) then 
			{
				_unit remoteExecCall ["gokoBI_particleFX_helmetTrashed"];
				removeHeadgear _unit;
			} 
			else 
			{
				[_unit, _velocityVector] remoteExecCall [_artisticRemoval];
				removeHeadgear _unit;	
			};
		} 
		else 
		{
			_unit remoteExecCall ["gokoBI_particleFX_smallHelmetParts"];	
		};
	} 
	else 
	{
		[_unit, _velocityVector] remoteExecCall ["gokoBI_particleFX_FlyOff"];
		_unit remoteExecCall [_goreParticleEffects];
		removeHeadgear _unit;	
	};
};
