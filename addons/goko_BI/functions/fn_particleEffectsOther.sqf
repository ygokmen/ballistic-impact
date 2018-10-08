gokoBI_particleFX_brokenGlassParticles = 
{       
	if (!hasInterface) exitWith {};  
	_object = _this;        
	_pArray = [];        
	for "_i" from 0 to random 12 do        
	{
		_parca = "#particlesource" createVehicleLocal (getposATL _object);         
		_parca setParticleClass "goko_goggleparts";         
		_parca setParticleParams        
		[
			["\A3\data_f\ParticleEffects\Universal\GlassParts_03", 1, 0, 1], //shape name        
			"", //animation name        
			"SpaceObject", //type        
			1, 7, //timer period & life time        
			[0, 0, 0], //position        
			[1+random -2, 0, random 2], //moveVeocity        
			2, 10, 1, 0.2, //rotation velocity, weight, volume, rubbing        
			[0.05], //size        
			[[1,1,1,1]], //color        
			[0.1], //animationPhase (animation speed in config)        
			0.00, //randomdirection period        
			0.0, //random direction intensity        
			"", //onTimer        
			"", //before destroy        
			"", //object        
			0, //angle        
			false, //on surface        
			0 //bounce on surface        
		];
		_parca setParticleRandom [0, [0.1, 0.1, 0.0], [1.35, 1.35, 1.0], 0, 0.1, [0, 0, 0, 0], 0, 0];        
		_parca setDropInterval 6000;        
		_parca attachTo [_object,[0,0.08,0.17],"head"];         
		_pArray pushBack _parca;
	};        
};   

gokoBI_particleFX_blackSmoke = 
{         
	if (!hasInterface) exitWith {};   
	_object = _this;           
	_bArray = [];           
	_breath = "#particlesource" createVehicleLocal (getposATL _object);            
	_breath setParticleClass "goko_helmetparts";            
	_breath setParticleParams           
	[
		["\a3\Data_f\ParticleEffects\Universal\universal", 16, 12, 12,0], //shape name           
		"", //anim name           
		"Billboard",       
		0.5, 2.2, //timer period & life time           
		[0, 0, 0], //pos        
		[0,0.0,0.5+ random -0.8], //moveVel      
		1,1.275,1,0.2, //rotation vel, weight, volume, rubbing           
		[0,0.35,0], //size transform          
		[[0.01,0.01,0.01,0.12], [0.000,0,0,0.09], [0.10,0.10,0.10,0]],     
		[1000], //animationPhase (speed in config)           
		1, //randomdirection period           
		0.04, //random direction intensity           
		"", //onTimer           
		"", //before destroy           
		"", //object           
		0, //angle           
		false, //on surface           
		0.0 //bounce on surface           
	];           
	_breath setParticleRandom [0.5, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.1], 0, 0, 10];     
	_breath setDropInterval 0.01;           
	_breath attachTo [_object,[0,0.11,0.2], "head"];            
	_bArray pushback _breath;           
	_bArray spawn            
	{
		_bArray = _this;           
		sleep (1 + random 2);           
		{ deleteVehicle _x } foreach _bArray;           
	};        
}; 

gokoBI_particleFX_smallHelmetParts = 
{      
	if (!hasInterface) exitWith {};  
	_object = _this;       
	_pArray = [];       
	for "_i" from 0 to random 10 do       
	{
		_parca = "#particlesource" createVehicleLocal (getposATL _object);        
		_parca setParticleClass "goko_goggleparts";        
		_parca setParticleParams       
		[
			["\A3\data_f\ParticleEffects\shard\shard", 1, 0, 1], //shape name       
			"", //animation name       
			"SpaceObject", //type       
			1, 2, //timer period & life time       
			[0, 0, 0], //position       
			[6 - random 12, 0, random 6], //moveVeocity       
			1, 1, 0.1, 1, //rotation velocity, weight, volume, rubbing       
			[0.08, 0], //size       
			[[1,1,1,1]], //color       
			[0.1], //animationPhase (animation speed in config)       
			0, //randomdirection period       
			0, //random direction intensity       
			"", //onTimer       
			"", //before destroy       
			"", //object       
			360, //angle       
			false, //on surface       
			0 //bounce on surface       
		];       
		_parca setParticleRandom [0, [0.1, 0.1, 0.1], [1, 1, 1], 0, 0.1, [0, 0, 0, 0], 0, 0];       
		_parca setDropInterval 1000;       
		_parca attachTo [_object,[0,0,0.18],"head"];        
		_pArray pushBack _parca;
	};       
};   
