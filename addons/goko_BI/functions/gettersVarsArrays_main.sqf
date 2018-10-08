/// getters and local variables setup
	_getGlasses = goggles _unit;
	_getHeadMountedDisplay = hmd _unit;
	_getHeadgear = headgear _unit;
	_headgearProtection = getNumber (configFile >> "CfgWeapons" >> _getHeadgear >> "ItemInfo" >> "HitpointsProtectionInfo" >> "Head" >> "armor");
	
	_getInstigatorDirection = _instigator weaponDirection (currentWeapon _instigator) vectorMultiply 2 + random 3;
	_velocityVector = _getInstigatorDirection vectorAdd [-1 + random 2, -1 + random 2, random 5];
	_projectileCaliber = getNumber (configFile >> "CfgAmmo" >> _projectile >> "caliber");
	
/// Formula using values taken from weaponsCfg and ammoCfg to calculate current projectile's potential.
	_caliberLowest = 0.869565;  // 5.56 
	_caliberHighest = 2.4;  // .408 cheetah of m320 LRR
	_minProtectionLevel = 4;  // level 1 headgear protection value
	_maxProtectionLevel = 12;	// level 5
	
	_projectileForce = 
	linearConversion [
		_caliberLowest, 
		_caliberHighest, 
		_projectileCaliber, 
		_minProtectionLevel, 
		_maxProtectionLevel
	];

///	Spark effects upon destruction of head-mounted display.
	_hmdParticleEffects = selectRandom [
		"gokoBI_particleFX_hmdSparks1", "gokoBI_particleFX_hmdSparks2", 
		"gokoBI_particleFX_hmdSparks3", "gokoBI_particleFX_hmdSparks4", 
		"gokoBI_particleFX_hmdSparks5", "gokoBI_particleFX_hmdSparks6", 
		"gokoBI_particleFX_hmdSparks7", "gokoBI_particleFX_hmdSparks8", 
		"gokoBI_particleFX_hmdSparks9"
	];

///	Sound effects for destruction of head mounted display.
	_hmdSoundEffects = selectRandom [
		"goko_BI\sounds\nvgbreak1.wav", "goko_BI\sounds\nvgbreak2.wav", 
		"goko_BI\sounds\nvgbreak3.wav", "goko_BI\sounds\nvgbreak4.wav", 
		"goko_BI\sounds\nvgbreak5.wav"
	];

///	Spark effects upon helmet penetration
	_helmetParticleEffects = selectRandom [
	"gokoBI_particleFX_helmetSparks1", "gokoBI_particleFX_helmetSparks2", 
	"gokoBI_particleFX_helmetSparks3", "gokoBI_particleFX_helmetSparks4"
	];

///	Helmet hit sounds
	_helmetHitSoundEffects = selectRandom [
		"goko_BI\sounds\headgear1.wav", "goko_BI\sounds\headgear2.wav", 
		"goko_BI\sounds\headgear3.wav", "goko_BI\sounds\headgear4.wav", 
		"goko_BI\sounds\headgear5.wav", "goko_BI\sounds\headgear6.wav", 
		"goko_BI\sounds\headgear7.wav", "goko_BI\sounds\headgear8.wav"
	];

///	Gore particle effects
	_goreParticleEffects = selectRandom [
		"gokoBI_particleFX_bloodSpray1", "gokoBI_particleFX_bloodSpray2", 
		"gokoBI_particleFX_bloodSpray3", "gokoBI_particleFX_brainsBlow",
		"gokoBI_particleFX_bloodCough"
	];

///	Helmet heavy hit and destruction
	_artisticRemoval = selectRandom ["gokoBI_particleFX_helmetDestroyed", "gokoBI_particleFX_FlyOff"];
	
