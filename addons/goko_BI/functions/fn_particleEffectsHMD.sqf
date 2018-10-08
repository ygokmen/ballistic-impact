gokoBI_particleFX_cheesyDestruct = 
{      
	if (!hasInterface) exitWith {};   
	_object = _this select 0;        
	_velocity = _this select 1;
	_pArray = [];        
	for "_i" from 0 to (1 + random 1) do        
	{       
		_parca = "#particlesource" createVehicleLocal (getposATL _object);         
		_parca setParticleClass "goko_goggleparts";         
		_parca setParticleParams        
		[       
			["\A3\data_f\ParticleEffects\Universal\AmmoBelt_Links", 1, 0, 1], //shape name        
			"", //animation name        
			"SpaceObject", //type        
			1, 3, //timer period & life time        
			[0, 0, 0], //position        
			_velocity, //moveVeocity        
			random 6, 3 + random 6, 0.78, 1, //rotation velocity, weight, volume, rubbing        
			[5], //size        
			[[1,1,1,1]], //color        
			[0.1], //animationPhase (animation speed in config)        
			0.5, //randomdirection period        
			0.8, //random direction intensity        
			"", //onTimer        
			"", //before destroy        
			"", //object        
			0, //angle        
			false, //on surface        
			0.16 //bounce on surface        
		];        
		_parca setParticleRandom [0, [0.1, 0.1, 0.1], [0, 0, 0], 0, 0.1, [0, 0, 0, 0], 0, 0];        
		_parca setDropInterval 1000;        
		_parca attachTo [_object,[0,0.12,0.3],"head"];         
		_pArray pushBack _parca;        
	};        
}; 

gokoBI_particleFX_hmdSparks1 = 
{
	if (!hasInterface) exitWith {};               
	_object = _this;                   
	_bArray = [];                   
	_blood = "#particlesource" createVehicleLocal (getposATL _object);                    
	_blood setParticleClass "goko_goggleparts";                    
	_blood setParticleParams           
	[
		["\A3\data_f\ParticleEffects\Universal\Universal", 16, 15, 10],  //sprite name          
		"", //animation name          
		"Billboard", //type          
		0.5, 2, //timer period and fadeout timer          
		[0, 0, 0], //position          
		[1+random -2, 1+random-2, 1+random 1], //move velocity          
		1, 1, 0.35,  0.80, //rot vel, weight, volume, rubbing          
		[0.015,0.008], //size transform          
		[[1,1,1,-500], [0.1,0.1,0.1,-500], [0,0,0,-500],[1,1,1,-500]],  //color and transperency          
		[1000], //animation phase speed          
		0.1,   //randomdirection period          
		1,  //randomization intensity          
		"", //onTimer          
		"",  //beforeDestroy          
		"",  //object          
		360,  //angle          
		false,  //on the surface          
		0  //bounce           
	];            
	_blood  setParticleRandom [0.5, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.1], 0, 0, 10];   
	_blood setdropinterval 0.001;           
	_blood attachTo [_object,[0,0.18,0.22],"head"];                    
	_bArray pushback _blood;                   
	_bArray spawn                    
	{                   
		_bArray = _this;                   
		sleep random 0.03;                   
		{ deleteVehicle _x } foreach _bArray;                   
	};
};

gokoBI_particleFX_hmdSparks2 = 
{     
	if (!hasInterface) exitWith {};               
	_object = _this;                   
	_bArray = [];                   
	_blood = "#particlesource" createVehicleLocal (getposATL _object);                    
	_blood setParticleClass "goko_goggleparts";                    
	_blood setParticleParams           
	[
		["\A3\data_f\ParticleEffects\Universal\Universal", 16, 5, 0, 16],  //sprite name          
		"", //animation name          
		"Billboard", //type          
		0.5, 1.4, //timer period and fadeout timer          
		[0, 0, 0], //position          
		[1+random -2, 1+random-2, 1+random 1], //move velocity          
		1, 1, 0.35,  0.80, //rot vel, weight, volume, rubbing          
		[0.08,0.01], //size transform          
		[[1,1,1,-500], [0.1,0.1,0.1,-500], [0,0,0,-500],[1,1,1,-500]],  //color and transperency          
		[0.1], //animation phase speed          
		0.1,   //randomdirection period          
		1,  //randomization intensity          
		"", //onTimer          
		"",  //beforeDestroy          
		"",  //object          
		360,  //angle          
		false,  //on the surface          
		0  //bounce           
	];            
	_blood  setParticleRandom [0.5, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.1], 0, 0, 10];   
	_blood setdropinterval 0.001;           
	_blood attachTo [_object,[0,0.1,0.22],"head"];                    
	_bArray pushback _blood;                   
	_bArray spawn                    
	{                   
		_bArray = _this;                   
		sleep random 0.2;                   
		{ deleteVehicle _x } foreach _bArray;                   
	};                 
};    

gokoBI_particleFX_hmdSparks3 = 
{     
	if (!hasInterface) exitWith {};               
	_object = _this;                   
	_bArray = [];                   
	_blood = "#particlesource" createVehicleLocal (getposATL _object);                    
	_blood setParticleClass "goko_goggleparts";                    
	_blood setParticleParams           
	[          
		["\A3\data_f\ParticleEffects\Universal\Universal", 16, 2, 0, 16],  //sprite name          
		"", //animation name          
		"Billboard", //type          
		0.5, 1.4, //timer period and fadeout timer          
		[0, 0, 0], //position          
		[1+random -2, 1+random-2, 1+random 1], //move velocity          
		1, 1, 0.35,  0.80, //rot vel, weight, volume, rubbing          
		[0.02,0.001], //size transform          
		[[1,1,1,-500], [0.1,0.1,0.1,-500], [0,0,0,-500],[1,1,1,-500]],  //color and transperency          
		[0.1], //animation phase speed          
		0.1,   //randomdirection period          
		0.9,  //randomization intensity          
		"", //onTimer          
		"",  //beforeDestroy          
		"",  //object          
		360,  //angle          
		false,  //on the surface          
		0  //bounce           
	];            
	_blood  setParticleRandom [0.5, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.1], 0, 0, 10];   
	_blood setdropinterval 0.0008;           
	_blood attachTo [_object,[0,0.1,0.22],"head"];                    
	_bArray pushback _blood;                   
	_bArray spawn                    
	{                   
		_bArray = _this;                   
		sleep random 0.07;                   
		{ deleteVehicle _x } foreach _bArray;                   
	};                 
};    

gokoBI_particleFX_hmdSparks4 = 
{       
	if (!hasInterface) exitWith {};              
	_object = _this;                    
	_bArray = [];                    
	_blood = "#particlesource" createVehicleLocal (getposATL _object);                     
	_blood setParticleClass "goko_goggleparts";                     
	_blood setParticleParams            
	[           
		["\A3\data_f\ParticleEffects\Universal\Universal", 16, 5, 0, 16],  //sprite name           
		"", //animation name           
		"Billboard", //type           
		0.5, 4, //timer period and fadeout timer           
		[0, 0, 0], //position           
		[0, random 1, 1+random 1], //move velocity           
		1, 0.8, 0.1,  0, //rot vel, weight, volume, rubbing           
		[0.03,0.01], //size transform           
		[[1,1,1,-500], [0.1,0.1,0.1,-500], [0,0,0,-500],[1,1,1,-500]],  //color and transperency           
		[0.1], //animation phase speed           
		0.01,   //randomdirection period           
		0.7,  //randomization intensity           
		"", //onTimer           
		"",  //beforeDestroy           
		"",  //object           
		360,  //angle           
		false,  //on the surface           
		0  //bounce            
	];             
	_blood  setParticleRandom [0.5, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.1], 0, 0, 10];    
	_blood setdropinterval 0.0001;            
	_blood attachTo [_object,[0,0.1,0.22],"head"];                     
	_bArray pushback _blood;                    
	_bArray spawn                     
	{                  
		_bArray = _this;                    
		sleep random 0.07;                    
		{ deleteVehicle _x } foreach _bArray;                    
	};                  
};  

gokoBI_particleFX_hmdSparks5 = 
{         
	if (!hasInterface) exitWith {};            
	_object = _this;                    
	_bArray = [];                    
	_blood = "#particlesource" createVehicleLocal (getposATL _object);                     
	_blood setParticleClass "goko_goggleparts";                     
	_blood setParticleParams            
	[           
		["\A3\data_f\ParticleEffects\Universal\Universal", 16, 7, 0, 16],  //sprite name           
		"", //animation name           
		"Billboard", //type           
		0.5, 1, //timer period and fadeout timer           
		[0, 0, 0], //position           
		[0, random 1, 1+random 1], //move velocity           
		1, 1, 0.1,  0, //rot vel, weight, volume, rubbing           
		[0.005,0.01], //size transform           
		[[1,1,1,-500], [0.1,0.1,0.1,-500], [0,0,0,-500],[1,1,1,-500]],  //color and transperency           
		[0.1], //animation phase speed           
		0.1,   //randomdirection period           
		0.9,  //randomization intensity           
		"", //onTimer           
		"",  //beforeDestroy           
		"",  //object           
		360,  //angle           
		false,  //on the surface           
		0  //bounce            
	];             
	_blood  setParticleRandom [0.5, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.1], 0, 0, 10];    
	_blood setdropinterval 0.0004;            
	_blood attachTo [_object,[0,0.1,0.22],"head"];                     
	_bArray pushback _blood;                    

	_bArray spawn                     
	{                  
		_bArray = _this;                    
		sleep random 0.1;                    
		{ deleteVehicle _x } foreach _bArray;                    
	};                  
};  

gokoBI_particleFX_hmdSparks6 = 
{
	if (!hasInterface) exitWith {};                  
	_object = _this;                     
	_bArray = [];                     
	_blood = "#particlesource" createVehicleLocal (getposATL _object);                      
	_blood setParticleClass "goko_goggleparts";                      
	_blood setParticleParams             
	[            
		["\A3\data_f\ParticleEffects\Universal\Universal", 16, 1, 7, 16],  //sprite name            
		"", //animation name            
		"Billboard", //type            
		0.5, 1.4, //timer period and fadeout timer            
		[0, 0, 0], //position            
		[0, random 1, 1+random 3], //move velocity            
		1, 1, 0.1,  0, //rot vel, weight, volume, rubbing            
		[0.005,0], //size transform            
		[[1,1,1,-500], [0.1,0.1,0.1,-400], [0,0,0,-400],[1,1,1,-500]],  //color and transperency            
		[0.1], //animation phase speed            
		0.1,   //randomdirection period            
		0.8,  //randomization intensity            
		"", //onTimer            
		"",  //beforeDestroy            
		"",  //object            
		360,  //angle            
		false,  //on the surface            
		0  //bounce             
	];              
	_blood  setParticleRandom [0.5, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.1], 0, 0, 10];     
	_blood setdropinterval 0.0001;             
	_blood attachTo [_object,[0,0.1,0.22],"head"];                      
	_bArray pushback _blood;                     
	_bArray spawn                      
	{                     
		_bArray = _this;                     
		sleep 0.03;                     
		{ deleteVehicle _x } foreach _bArray;                     
	};                   
};  

gokoBI_particleFX_hmdSparks7 = 
{        
	if (!hasInterface) exitWith {};        
	_object = _this;               
	_bArray = [];               
	_breath = "#particlesource" createVehicleLocal (getposATL _object);                
	_breath setParticleClass "goko_helmetparts";                
	_breath setParticleParams               
	[            
		["\a3\Data_f\ParticleEffects\Universal\universal", 16, 0, 2, 1], //shape name               
		"", //anim name               
		"billboard",           
		0.5, 6, //timer period & life time               
		[0, 0, 0], //pos            
		[0,1 + random -2,1], //moveVel          
		3,1.275,0.93,0.2, //rotation vel, weight, volume, rubbing               
		[0.01,0.05,0], //size transform              
		[[1,1,1,-250], [1,1,1,-250], [1,1,1,-250]],         
		[6000], //animationPhase (speed in config)               
		0.9, //randomdirection period               
		0.2, //random direction intensity               
		"", //onTimer               
		"", //before destroy               
		"", //object               
		0, //angle               
		false, //on surface               
		0.0 //bounce on surface               
	];               
	_breath setParticleRandom [0.5, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.1], 0, 0, 10];         
	_breath setDropInterval 0.01;   
	emitter = _breath;             
	_breath attachTo [_object,[0,0.11,0.2], "head"];                
	_bArray pushback _breath;               
	_bArray spawn                
	{               
		_bArray = _this;               
		sleep random 0.5;               
		{ deleteVehicle _x } foreach _bArray;               
	};            
};   

gokoBI_particleFX_hmdSparks8 = 
{    
	if (!hasInterface) exitWith {};             
	_object = _this;                
	_bArray = [];                
	_breath = "#particlesource" createVehicleLocal (getposATL _object);                 
	_breath setParticleClass "goko_helmetparts";                 

	_breath setParticleParams                
	[                
		["\a3\Data_f\ParticleEffects\Universal\universal", 16, 5, 15, 16], //shape name                
		"", //anim name                
		"billboard",            
		0.5, 6, //timer period & life time                
		[0, 0, 0], //pos             
		[0,1 + random -2,1], //moveVel           
		3,1.275,0.93,0.2, //rotation vel, weight, volume, rubbing                
		[0.01,0.05,0], //size transform               
		[[1,1,1,-500], [1,1,1,-500], [1,1,1,-500]],    
			 
		[6000], //animationPhase (speed in config)                
		0.1, //randomdirection period                
		0.2, //random direction intensity                
		"", //onTimer                
		"", //before destroy                
		"", //object                
		0, //angle                
		false, //on surface                
		0.0 //bounce on surface                
	];                
	_breath setParticleRandom [0.5, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.1], 0, 0, 10];          
	_breath setDropInterval 0.01;    
	emitter = _breath;              
	_breath attachTo [_object,[0,0.11,0.2], "head"];                 
	_bArray pushback _breath;                
	_bArray spawn                 
	{                
		_bArray = _this;                
		sleep random 0.5;                
		{ deleteVehicle _x } foreach _bArray;                
	};             
};   

gokoBI_particleFX_hmdSparks9 = 
{      
	if (!hasInterface) exitWith {};           
	_object = _this;                
	_bArray = [];                
	_breath = "#particlesource" createVehicleLocal (getposATL _object);                 
	_breath setParticleClass "goko_helmetparts";                 
	_breath setParticleParams                
	[                
		["\a3\Data_f\ParticleEffects\Universal\universal", 16, 3, 15, 16], //shape name                
		"", //anim name                
		"billboard",            
		0.5, 6, //timer period & life time                
		[0, 0, 0], //pos             
		[0,1 + random -2,1], //moveVel           
		3,1.275,0.93,0.2, //rotation vel, weight, volume, rubbing                
		[0.01,0.02,0], //size transform               
		[[1,1,1,-500], [1,1,1,-500], [1,1,1,-500]],    
		[6000], //animationPhase (speed in config)                
		0.01, //randomdirection period                
		0.2, //random direction intensity                
		"", //onTimer                
		"", //before destroy                
		"", //object                
		0, //angle                
		false, //on surface                
		0.0 //bounce on surface                
	];                
	_breath setParticleRandom [0.5, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.1], 0, 0, 10];          
	_breath setDropInterval 0.01;    
	emitter = _breath;              
	_breath attachTo [_object,[0,0.11,0.2], "head"];                 
	_bArray pushback _breath;                
	_bArray spawn                 
	{                
		_bArray = _this;                
		sleep random 0.5;                
		{ deleteVehicle _x } foreach _bArray;                
	};             
};   
