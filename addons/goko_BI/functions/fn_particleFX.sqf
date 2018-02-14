goko_fnc_newhelmetpart = {           
 _object = _this select 0;
 _velocity = _this select 1; 
            
 _pArray = [];            
            
 for "_i" from 0 to random 3 do            
 {            
            
  _parca = "#particlesource" createVehicleLocal (getposATL _object);             
  _parca setParticleClass "goko_goggleparts";             
  _parca setParticleParams            
  [            
   ["\A3\data_f\ParticleEffects\Shard\shard3", 1, 0, 1], //shape name            
   "", //animation name            
   "SpaceObject", //type            
   1, 5, //timer period & life time            
     [0, 0, 0], //position            
     _velocity, //moveVeocity            
     1 + random 4, 1, 0.1, 0, //rotation velocity, weight, volume, rubbing            
     [0.4 + random 0.3], //size            
     [[1,1,1,1]], //color            
     [0.1], //animationPhase (animation speed in config)            
     0.1, //randomdirection period            
     0.05, //random direction intensity            
   "", //onTimer            
   "", //before destroy            
   "", //object            
   0, //angle            
   false, //on surface            
   0 //bounce on surface            
  ];            
            
  _parca setParticleRandom [0, [0, 0, 0], [0, 0, 1], 0, 0.1, [0, 0, 0, 0], 0, 0];            
  _parca setDropInterval 1000;            
  _parca attachTo [_object,[0,-0.05,0.18],"head"];             
            
  _pArray pushBack _parca;            
            
 };            
};



     
goko_fnc_coughblood = {          
 _object = _this;           
           
 _bArray = [];           
           
           
           
 _breath = "#particlesource" createVehicleLocal (getposATL _object);            
 _breath setParticleClass "goko_helmetparts";            
           
 _breath setParticleParams           
 [           
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






    
       
goko_fnc_nvghmdparts = {       
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

goko_fnc_bloodspray1 = {        
 _object = _this;               
               
 _bArray = [];               
               
               
      
 _blood = "#particlesource" createVehicleLocal (getposATL _object);                
   _blood setParticleClass "goko_helmetparts";        
               
 _blood setParticleParams [["\a3\Data_f\ParticleEffects\Universal\Universal", 16, 13, 1, 32],   //model name          
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


goko_fnc_bloodspray2 = {         
 _object = _this;                
                
 _bArray = [];                
                
                
       
 _blood = "#particlesource" createVehicleLocal (getposATL _object);                 
   _blood setParticleClass "goko_helmetparts";         
                
 _blood setParticleParams [["\a3\Data_f\ParticleEffects\Universal\Universal", 16, 13, 1, 32],   //model name           
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


goko_fnc_bloodspray3 = {      
 _object = _this;             
             
 _bArray = [];             
             
             
    
 _blood = "#particlesource" createVehicleLocal (getposATL _object);              
   _blood setParticleClass "goko_helmetparts";      
             
 _blood setParticleParams [["\a3\Data_f\ParticleEffects\Universal\Universal", 16, 13, 0, 32],   //model name        
  "",   //animation        
  "billboard", //type        
  random 0.1, 2, //period and lifecycle        
  [0, 0, 0], //position        
          
  [4 + random -8, 4 + random -8,random 10], //movement vector        
  1, 1, 0.4, 0.5, //rotation, weight, volume , rubbing        
  [random 1, random 2], //size transform        
  [[0.02,0,0,-1], [0.04,0,0,-4], [0.01,0,0,0.01]],[1],0.4,0.4,"","",""];  //colours and transperancy        
 _blood setdropinterval 0.01;        
 _blood attachTo [_object,[0,0,0],"head"];              
             
 _bArray pushback _blood;             
             
 _bArray spawn              
 {             
  _bArray = _this;             
  sleep random 0.6;             
  { deleteVehicle _x } foreach _bArray;             
 };          
};   



goko_fnc_helmetsparks = {             
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
    [0.03,0.08,0], //size transform             
    [[1,1,1,-2], [1,1,1,-2], [1,1,1,-2]],        
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
  sleep random 1;              
  { deleteVehicle _x } foreach _bArray;              
 };           
};  

goko_fnc_destruct1 = {            
 _object = _this;             
             
 _pArray = [];             
             
 for "_i" from 0 to random 3 do             
 {             
             
  _parca = "#particlesource" createVehicleLocal (getposATL _object);              
  _parca setParticleClass "goko_testparticle";              
  _parca setParticleParams             
  [             
   ["\A3\data_f\ParticleEffects\Shard\shard3", 1, 0, 1], //shape name             
   "", //animation name             
   "SpaceObject", //type             
   1, random 5, //timer period & life time             
     [0, 0, 0], //position             
     [3 + random -6, 3 + random -6,1 + random 6], //moveVeocity             
     1 + random 4, 1, 0.1, 0, //rotation velocity, weight, volume, rubbing             
     [0.4 + random 0.3], //size             
     [[1,1,1,1]], //color             
     [0.1], //animationPhase (animation speed in config)             
     0.1, //randomdirection period             
     0.05, //random direction intensity             
   "", //onTimer             
   "", //before destroy             
   "", //object             
   0, //angle             
   false, //on surface             
   0 //bounce on surface             
  ];             
             
  _parca setParticleRandom [0, [0, 0, 0], [0, 0, 1], 0, 0.1, [0, 0, 0, 0], 0, 0];             
  _parca setDropInterval 1000;             
  _parca attachTo [_object,[0,-0.05,0.18],"head"];              
             
  _pArray pushBack _parca;             
             
 };             
};



goko_fnc_hmdglassParts = {       
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
  
goko_fnc_nvgsmoke = {          
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



goko_fnc_smallhitparts = {      
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

goko_fnc_firstblood = {      
 _object = _this;        
        
 _bArray = [];        
        
        
        
 _blood = "#particlesource" createVehicleLocal (getposATL _object);         
 _blood setParticleClass "goko_helmetparts";         
        
 _blood setParticleParams        
 [        
  ["\A3\data_f\ParticleEffects\Universal\Universal_02", 16, 4, 1], //shape name        
  "", //anim name        
  "Billboard",    
  1, 0.6, //timer period & life time        
    [0, 0, 0], //pos     
    [0,1 + random -2, 3 + random -4], //moveVel   
    4, 2, 1, 3, //rotation vel, weight, volume, rubbing        
    [0.2,2], //size transform       
    [[0.6,0.1,0.1,0.4],[1,0,0,0.01]],        
    [9.5], //animationPhase (speed in config)        
    1, //randomdirection period        
    1, //random direction intensity        
  "", //onTimer        
  "", //before destroy        
  "", //object        
  0, //angle        
  false, //on surface        
  0.0 //bounce on surface        
 ];        
        
 _blood setDropInterval 1000;        
 _blood attachTo [_object,[0,0,0.0],"head"];         
        
 _bArray pushback _blood;        
        
 _bArray spawn         
 {        
  _bArray = _this;        
  sleep 1;        
  { deleteVehicle _x } foreach _bArray;        
 };        
};  



goko_fnc_nvghmdspark1 = {                  
 _object = _this;                   
                   
 _bArray = [];                   
       
 _blood = "#particlesource" createVehicleLocal (getposATL _object);                    
 _blood setParticleClass "goko_goggleparts";                    
          
 _blood setParticleParams           
[          
 ["\A3\data_f\ParticleEffects\Universal\Universal", 16, 15, 10],  //sprite name          
 "", //animation name          
 "Billboard", //type          
 0.5, 0.5, //timer period and fadeout timer          
 [0, 0, 0], //position          
 [1+random -2, 1+random-2, 1+random 1], //move velocity          
 1, 1, 0.35,  0.80, //rot vel, weight, volume, rubbing          
 [0.04,0.01], //size transform          
 [[1,1,1,0], [0.1,0.1,0.1,-4], [0,0,0,-4],[1,1,1,1]],  //color and transperency          
 [1000], //animation phase speed          
 0.1,   //randomdirection period          
 0.5,  //randomization intensity          
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
  sleep random 0.5;                   
  { deleteVehicle _x } foreach _bArray;                   
 };                 
};    




goko_fnc_nvghmdspark2 = {                  
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
 [[1,1,1,0], [0.1,0.1,0.1,-4], [0,0,0,-4],[1,1,1,1]],  //color and transperency          
 [0.1], //animation phase speed          
 0.1,   //randomdirection period          
 0.5,  //randomization intensity          
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
  sleep random 0.2;                   
  { deleteVehicle _x } foreach _bArray;                   
 };                 
};    


            
goko_fnc_nvghmdspark3 = {                  
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
 [0.08,0.01], //size transform          
 [[1,1,1,0], [0.1,0.1,0.1,-4], [0,0,0,-4],[1,1,1,1]],  //color and transperency          
 [0.1], //animation phase speed          
 0.1,   //randomdirection period          
 0.5,  //randomization intensity          
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
  sleep random 0.2;                   
  { deleteVehicle _x } foreach _bArray;                   
 };                 
};    



goko_fnc_nvghmdspark4 = {                   
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
 [0, random 1, 1+random 1], //move velocity           
 1, 1, 0.1,  0, //rot vel, weight, volume, rubbing           
 [0.03,0.01], //size transform           
 [[1,1,1,0], [0.1,0.1,0.1,-4], [0,0,0,-4],[1,1,1,1]],  //color and transperency           
 [0.1], //animation phase speed           
 0.1,   //randomdirection period           
 0.5,  //randomization intensity           
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
  sleep random 0.2;                    
  { deleteVehicle _x } foreach _bArray;                    
 };                  
};  




goko_fnc_nvghmdspark5 = {                   
 _object = _this;                    
                    
 _bArray = [];                    
        
 _blood = "#particlesource" createVehicleLocal (getposATL _object);                     
 _blood setParticleClass "goko_goggleparts";                     
           
 _blood setParticleParams            
[           
 ["\A3\data_f\ParticleEffects\Universal\Universal", 16, 7, 0, 16],  //sprite name           
 "", //animation name           
 "Billboard", //type           
 0.5, 1.4, //timer period and fadeout timer           
 [0, 0, 0], //position           
 [0, random 1, 1+random 1], //move velocity           
 1, 1, 0.1,  0, //rot vel, weight, volume, rubbing           
 [0.005,0.01], //size transform           
 [[1,1,1,0], [0.1,0.1,0.1,-4], [0,0,0,-4],[1,1,1,1]],  //color and transperency           
 [0.1], //animation phase speed           
 0.1,   //randomdirection period           
 0.5,  //randomization intensity           
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
  sleep random 0.2;                    
  { deleteVehicle _x } foreach _bArray;                    
 };                  
};  

goko_fnc_nvghmdspark6 = {                   
 _object = _this;                    
                    
 _bArray = [];                    
        
 _blood = "#particlesource" createVehicleLocal (getposATL _object);                     
 _blood setParticleClass "goko_goggleparts";                     
           
 _blood setParticleParams            
[           
 ["\A3\data_f\ParticleEffects\Universal\Universal", 16, 7, 0, 16],  //sprite name           
 "", //animation name           
 "Billboard", //type           
 0.5, 1.4, //timer period and fadeout timer           
 [0, 0, 0], //position           
 [0, random 1, 1+random 3], //move velocity           
 1, 1, 0.1,  0, //rot vel, weight, volume, rubbing           
 [0.005,0.01], //size transform           
 [[1,1,1,0], [0.1,0.1,0.1,-4], [0,0,0,-4],[1,1,1,1]],  //color and transperency           
 [0.1], //animation phase speed           
 0.1,   //randomdirection period           
 0.5,  //randomization intensity           
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
  sleep random 0.2;                    
  { deleteVehicle _x } foreach _bArray;                    
 };                  
};  


 
goko_fnc_helmetspark1 = {                
 _object = _this select 0;
 _velocity = _this select 1;                
                 
 _bArray = [];                 
     
 _blood = "#particlesource" createVehicleLocal (getposATL _object);                  
 _blood setParticleClass "goko_goggleparts";                  
        
 _blood setParticleParams         
[        
 ["\A3\data_f\ParticleEffects\Universal\Universal", 16, 3, 12, 4],  //sprite name        
 "", //animation name        
 "Billboard", //type        
 0.5, 1.4, //timer period and fadeout timer        
 [0, 0, 0], //position        
 _velocity, //move velocity        
 1, 1, 0.35,  0.80, //rot vel, weight, volume, rubbing        
 [0.08,0.01], //size transform        
 [[1,1,1,0], [0.1,0.1,0.1,-4], [0,0,0,-4],[1,1,1,1]],  //color and transperency        
 [1000], //animation phase speed        
 0.2,   //randomdirection period        
 0.7,  //randomization intensity        
 "", //onTimer        
 "",  //beforeDestroy        
 "",  //object        
 360,  //angle        
 false,  //on the surface        
 0  //bounce         
];          
 _blood setdropinterval 0.001;         
          
 _blood attachTo [_object,[0,0,0.04],"neck"];                  
                 
 _bArray pushback _blood;                 
                 
 _bArray spawn                  
 {                 
  _bArray = _this;                 
  sleep 0.1;                 
  { deleteVehicle _x } foreach _bArray;                 
 };               
};  



goko_fnc_helmetspark2 = {                
 _object = _this select 0;
 _velocity = _this select 1;                 
                 
 _bArray = [];                 
     
 _blood = "#particlesource" createVehicleLocal (getposATL _object);                  
 _blood setParticleClass "goko_goggleparts";                  
        
 _blood setParticleParams         
[        
 ["\A3\data_f\ParticleEffects\Universal\Universal", 16, 2, 0, 4],  //sprite name        
 "", //animation name        
 "Billboard", //type        
 0.5, 1.4, //timer period and fadeout timer        
 [0, 0, 0], //position        
 _velocity, //move velocity        
 1, 1, 0.35,  0.80, //rot vel, weight, volume, rubbing        
 [0.08,0.01], //size transform        
 [[1,1,1,0], [0.1,0.1,0.1,-4], [0,0,0,-4],[1,1,1,1]],  //color and transperency        
 [1000], //animation phase speed        
 0.2,   //randomdirection period        
 0.7,  //randomization intensity        
 "", //onTimer        
 "",  //beforeDestroy        
 "",  //object        
 360,  //angle        
 false,  //on the surface        
 0  //bounce         
];          
 _blood setdropinterval 0.001;         
          
 _blood attachTo [_object,[0,0,0.04],"neck"];                  
                 
 _bArray pushback _blood;                 
                 
 _bArray spawn                  
 {                 
  _bArray = _this;                 
  sleep 0.1;                 
  { deleteVehicle _x } foreach _bArray;                 
 };               
};    


 
goko_fnc_helmetspark3 = {                
 _object = _this select 0;
 _velocity = _this select 1;             
                 
 _bArray = [];                 
     
 _blood = "#particlesource" createVehicleLocal (getposATL _object);                  
 _blood setParticleClass "goko_goggleparts";                  
        
 _blood setParticleParams         
[        
 ["\A3\data_f\ParticleEffects\Universal\Universal", 16, 4, 11, 4],  //sprite name        
 "", //animation name        
 "Billboard", //type        
 0.5, 1.4, //timer period and fadeout timer        
 [0, 0, 0], //position        
 _velocity, //move velocity        
 1, 1, 0.35,  0.80, //rot vel, weight, volume, rubbing        
 [0.08,0.01], //size transform        
 [[1,1,1,0], [0.1,0.1,0.1,-4], [0,0,0,-4],[1,1,1,1]],  //color and transperency        
 [1000], //animation phase speed        
 0.2,   //randomdirection period        
 0.7,  //randomization intensity        
 "", //onTimer        
 "",  //beforeDestroy        
 "",  //object        
 360,  //angle        
 false,  //on the surface        
 0  //bounce         
];          
 _blood setdropinterval 0.001;         
          
 _blood attachTo [_object,[0,0,0.04],"neck"];                  
                 
 _bArray pushback _blood;                 
                 
 _bArray spawn                  
 {                 
  _bArray = _this;                 
  sleep 0.1;                 
  { deleteVehicle _x } foreach _bArray;                 
 };               
};   


goko_fnc_helmetspark4 = {                 
 _object = _this select 0;
 _velocity = _this select 1;              
                  
 _bArray = [];                  
      
 _blood = "#particlesource" createVehicleLocal (getposATL _object);                   
 _blood setParticleClass "goko_goggleparts";                   
         
 _blood setParticleParams          
[         
 ["\A3\data_f\ParticleEffects\Universal\Universal", 16, 6, 0, 4],  //sprite name         
 "", //animation name         
 "Billboard", //type         
 0.5, 1.4, //timer period and fadeout timer         
 [0, 0, 0], //position         
 _velocity, //move velocity         
 1, 1, 0.35,  0.80, //rot vel, weight, volume, rubbing         
 [0.08,0.01], //size transform         
 [[1,1,1,0], [0.1,0.1,0.1,-4], [0,0,0,-4],[1,1,1,1]],  //color and transperency         
 [1000], //animation phase speed         
 0.2,   //randomdirection period         
 0.7,  //randomization intensity         
 "", //onTimer         
 "",  //beforeDestroy         
 "",  //object         
 360,  //angle         
 false,  //on the surface         
 0  //bounce          
];           
 _blood setdropinterval 0.001;          
           
 _blood attachTo [_object,[0,0,0.04],"neck"];                   
                  
 _bArray pushback _blood;                  
                  
 _bArray spawn                   
 {                  
  _bArray = _this;                  
  sleep 0.1;                  
  { deleteVehicle _x } foreach _bArray;                  
 };                
};     
  
 
 
 goko_fnc_helmetspark5 = {                 
 _object = _this select 0;
 _velocity = _this select 1;                
                  
 _bArray = [];                  
      
 _blood = "#particlesource" createVehicleLocal (getposATL _object);                   
 _blood setParticleClass "goko_goggleparts";                   
         
 _blood setParticleParams          
[         
 ["\A3\data_f\ParticleEffects\Universal\Universal", 16, 1, 0, 4],  //sprite name         
 "", //animation name         
 "Billboard", //type         
 0.5, 1.4, //timer period and fadeout timer         
 [0, 0, 0], //position         
 _velocity, //move velocity         
 1, 1, 0.35,  0.80, //rot vel, weight, volume, rubbing         
 [0.08,0.01], //size transform         
 [[1,1,1,0], [0.1,0.1,0.1,-4], [0,0,0,-4],[1,1,1,1]],  //color and transperency         
 [1000], //animation phase speed         
 0.2,   //randomdirection period         
 0.7,  //randomization intensity         
 "", //onTimer         
 "",  //beforeDestroy         
 "",  //object         
 360,  //angle         
 false,  //on the surface         
 0  //bounce          
];           
 _blood setdropinterval 0.001;          
           
 _blood attachTo [_object,[0,0,0.04],"neck"];                   
                  
 _bArray pushback _blood;                  
                  
 _bArray spawn                   
 {                  
  _bArray = _this;                  
  sleep 0.1;                  
  { deleteVehicle _x } foreach _bArray;                  
 };                
};



goko_fnc_nvgsparks1 = {              
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
    [[1,1,1,-2], [1,1,1,-2], [1,1,1,-2]],         
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

goko_fnc_nvgsparks2 = {               
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
    [[1,1,1,-2], [1,1,1,-2], [1,1,1,-2]],          
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

goko_fnc_nvgsparks3 = {               
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
    [[1,1,1,-2], [1,1,1,-2], [1,1,1,-2]],          
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

goko_fnc_helmetsfly = {                       
 _object = _this select 0;
 _velocity = _this select 1;                       
 _helmet = headgear _object;          
           
 _modelname = getText (configfile >> "CfgWeapons" >> _helmet >> "model");             
            
  _parca = "#particlesource" createVehicleLocal (getposATL _object);                         
  _parca setParticleParams                        
  [                        
   [_modelname, 1, 0, 1], //shape name                        
   "", //animation name                        
   "SpaceObject", //type                        
   0, 2.1, //timer period & life time                        
     [0, 0, 0], //position                        
     _velocity, //moveVeocity                        
     0.2, 10.30, 0.01, 1, //rotation velocity, weight, volume, rubbing                        
     [0.9], //size                        
     [[1,1,1,1], [0,0,0,0]], //color                        
     [10], //animationPhase (animation speed in config)                        
     0, //randomdirection period                        
     0, //random direction intensity                        
   "", //onTimer                        
   "", //before destroy                        
   "", //object                        
   0, //angle                        
   false, //on surface                        
   0, //bounce on surface              
   [[1,0,0,0]]           
  ];                        
                        
                    
  _parca setDropInterval 8000;                        
  _parca attachTo [_object,[0,0,0],"head"];                         
};


goko_fnc_brainparts = {           
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