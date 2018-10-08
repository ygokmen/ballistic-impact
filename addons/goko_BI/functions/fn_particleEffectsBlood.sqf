gokoBI_particleFX_bloodSpray1 = 
{       
	if (!hasInterface) exitWith {};   
	_object = _this;               
	_bArray = [];               
	_blood = "#particlesource" createVehicleLocal (getposATL _object);                
	_blood setParticleClass "goko_helmetparts";        

	_blood setParticleParams [
		["\a3\Data_f\ParticleEffects\Universal\Universal", 16, 13, 1, 32],   //model name          
		"",   //animation          
		"billboard", //type          
		0.2, 2, //period and lifecycle          
		[0, 0, 0], //position          

		[4 + random -8, 2 + random -4, random 8], //movement vector          
		5, 1, 0.4, 0.4, //rotation, weight, volume , rubbing          
		[0.1, 1.6], //size transform          
		[[0.1,0,0,0.6], [0.04,0,0,-0.9], [0.1,0,0,-0.03]],  
		[0.00001],  
		0.4,  
		0.4,  
		"",  
		"",  
		"", 
		360, //angle           
		false, //on surface           
		0 //bounce on surface   
	];   
	_blood setdropinterval 0.01;          
	_blood attachTo [_object,[0,0,0],"neck"];                

	_bArray pushback _blood;               

	_bArray spawn                
	{               
		_bArray = _this;               
		sleep random 0.5;               
		{ deleteVehicle _x } foreach _bArray;               
	};            
};   

gokoBI_particleFX_bloodSpray2 = 
{     
	if (!hasInterface) exitWith {};      
	_object = _this;                
	_bArray = [];                
	_blood = "#particlesource" createVehicleLocal (getposATL _object);                 
	_blood setParticleClass "goko_helmetparts";         
	_blood setParticleParams [
		["\a3\Data_f\ParticleEffects\Universal\Universal", 16, 13, 1, 32],   //model name           
		"",   //animation           
		"billboard", //type           
		0.2, 2, //period and lifecycle           
		[0, 0, 0], //position           

		[4 + random -8, 3 + random -6, random 9], //movement vector           
		5, 1, 0.4, 0.4, //rotation, weight, volume , rubbing           
		[0.05, 1.4], //size transform           
		[[0.5,0,0,0.6], [0.8,0,0,0.1], [0.1,0,0,0.03]],   
		[0.00001],   
		0.4,   
		0.4,   
		"",   
		"",   
		"",  
		360, //angle            
		false, //on surface            
		0 //bounce on surface    
	];    
	_blood setdropinterval 0.01;           
	_blood attachTo [_object,[0,0,0],"neck"];                 
	_bArray pushback _blood;                
	_bArray spawn                 
	{                
		_bArray = _this;                
		sleep random 0.5;                
		{ deleteVehicle _x } foreach _bArray;                
	};             
};  

gokoBI_particleFX_bloodSpray3 = 
{     
	if (!hasInterface) exitWith {};    
	_object = _this;              
	_bArray = [];              
	_blood = "#particlesource" createVehicleLocal (getposATL _object);               
	_blood setParticleClass "BloodMist";       
	_blood setParticleParams [
		["\a3\Data_f\ParticleEffects\Universal\Universal_02", 8, 4, 1, 0],   //model name         
		"",   //animation         
		"billboard", //type         
		0, 1, //period and lifecycle         
		[0, 0, 0], //position         

		[1.2 +random -2.4, 1.2 +random -2.4, 2 + random 1], //movement vector         
		1, 22, 1, 0.2, //rotation, weight, volume , rubbing         
		[0.01,0.18], //size transform         
		[[1,0.05,0.05,0.08],[0.25,0.05,0.05,0.07],[1,0.05,0.05,0.01],[0.9,0.05,0.05,0.04],[0.8,0.05,0.05,0.03],[0.95,0.05,0.05,0.02],[0.25,0.05,0.05,0.01]], //colours and transperancy    
		[1], //animation speed 
		0.1,0.4,   //random period - intensity 
		"", //ontimer 
		"", //with destroy 
		"" 
	];       //follow 
	_blood setdropinterval 0.00001;         
	_blood attachTo [_object,[0,-0.06,-0.05],"head"];               
	_bArray pushback _blood;              
	_bArray spawn               
	{              
		_bArray = _this;              
		sleep 0.3;              
		{ deleteVehicle _x } foreach _bArray;              
	};           
};    

gokoBI_particleFX_brainsBlow = 
{      
	if (!hasInterface) exitWith {};       
	_object = _this;            
	_bArray = [];            
	_breath = "#particlesource" createVehicleLocal (getposATL _object);             
	_breath setParticleClass "goko_helmetparts";             
	_breath setParticleParams            
	[            
		["\a3\Data_f\ParticleEffects\Universal\meat_ca", 1, 0, 1], //shape name            
		"", //anim name            
		"spaceObject",        
		0.5, 6, //timer period & life time            
		[0, 0, 0], //pos         
		[5 + random -10, 6 + random -12, random 5], //moveVel       
		1,1.275,0.2,0, //rotation vel, weight, volume, rubbing            
		[1.6,0], //size transform           
		[[0.005,0,0,0.05], [0.006,0,0,0.06], [0.2,0,0,0]],      
		[1000], //animationPhase (speed in config)            
		1, //randomdirection period            
		0.1, //random direction intensity            
		"", //onTimer            
		"", //before destroy            
		"", //object            
		0, //angle            
		false, //on surface            
		0.0 //bounce on surface            
	];            
	_breath setParticleRandom [0.5, [0, 0, 0], [3.25, 0.25, 2.25], 1, 0.5, [0, 0, 0, 0.1], 0, 0, 10];      
	_breath setDropInterval 0.01;            
	_breath attachTo [_object,[0,0,0.2], "head"];             
	_bArray pushback _breath;            
	_bArray spawn             
	{            
		_bArray = _this;            
		sleep random 0.2;            
		{ deleteVehicle _x } foreach _bArray;            
	};         
};

gokoBI_particleFX_bloodCough = 
{
	if (!hasInterface) exitWith {};      
	_object = _this;           
	_bArray = [];           
	_breath = "#particlesource" createVehicleLocal (getposATL _object);            
	_breath setParticleClass "goko_helmetparts";            
	_breath setParticleParams [
		["\a3\Data_f\ParticleEffects\Universal\Universal", 16, 12, 13,0], //shape name           
		"", //anim name           
		"Billboard",       
		0.5, 0.5, //timer period & life time           
		[0, 0, 0], //pos        
		[0,0.0, 1 + random -2], //moveVel      
		1,1.275,1,0.2, //rotation vel, weight, volume, rubbing           
		[0,0.5,0], //size transform          
		[[0.005,0,0,0.05], [0.006,0,0,0.06], [0.2,0,0,0]],     
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
	_breath attachTo [_object,[0,0.1,0.04], "neck"];            
	_bArray pushback _breath;           
	_bArray spawn            
	{           
		_bArray = _this;           
		sleep random 0.5;           
		{ deleteVehicle _x } foreach _bArray;
	};        
};
