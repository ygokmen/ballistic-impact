class CfgCloudlets
{
	class Default;
	class goko_helmetflyoff: Default
	{
		interval = "0.5 * speedSize + 0.5";      //interval of particle's creation
		circleRadius = 0;			     //radius around emitter where particles are created
		circleVelocity[] = {0, 0, 0};	     //direction and speed of movement of particle's circle
		particleShape = \A3\data_f\ParticleEffects\Universal\Universal;		//path and name of file
		particleFSNtieth = 1;		     //coef; size of one particle's texture in pixels = 2048/coef
		particleFSIndex = 12;		     //index of start line on texture
		particleFSFrameCount = 8;		     //count of pictures in animation (starts on first picture in defined line - particleFSIndex)
		particleFSLoop = 0;		             //loop of animation (0 - false, 1 - true)
		angle = 360;				     //angle of particle
		angleVar = 1;			     //variability in angle of particle

		animationName = "";
		particleType = "Spaceobject";	             //type of animation (Billboard (2D), Spaceobject (3D))
		timerPeriod = 1;			     //interval of timer (how often is called script defined in parameter onTimerScript)
		lifeTime = 1;			     //life time of particle in seconds
		moveVelocity[] = {0, 0, 0};	             //direction and speed of movement of particle [x,z,y]
		rotationVelocity = 0;		     //direction and speed of rotation of particle [x,z,y]
		weight = 1;			             //weight of particle (kg)
		volume = 1;			             //volume of particle (m3)
		rubbing = 0.05;			     //how much is particle affected by wind/air resistance
		size[] = {1,1};			     //size of particle during the life
		color[] = {{1,0,0,1},{1,0,0,0}};	     //color of particle during the life (r,g,b,a)
		animationSpeed[] = {1};		     //speed of animation (number of animation cycles in 1s)
		randomDirectionPeriod = 0;		     //interval of random speed change
		randomDirectionIntensity = 0;	     //intensity of random speed change
		onTimerScript = "";		             //script triggered by timer (in variable "this" is stored position of particle)
		beforeDestroyScript = "";		     //script triggered before destroying of particle (in variable "this" is stored position of particle)
		lifeTimeVar = 0;			     //variability in lifetime of particle
		position[] = {0, 0, 0};                  //defines position of effect
		positionVar[] = {0, 0, 0};		     //variability in position of particle (each part of vector has it's own variability)
		positionVarConst[] = {0, 0, 0};	     //variability in position of particle (variablity of all parts of vector is the same)
		moveVelocityVar[] = {0, 0, 0};	     //variability in direction and speed of particle (each part of vector has it's own variability)
		moveVelocityVarConst[] = {0, 0, 0};      //variability in direction and speed of particle (variablity of all parts of vector is the same)
		rotationVelocityVar = 0;		     //variability in rotation of particle
		sizeVar = 0;			     //variability in size of particle
		colorVar[] = {0, 0, 0, 0};		     //variability in color of particle
		randomDirectionPeriodVar = 0;	     //variability in interval of random speed change
		randomDirectionIntensityVar = 0;	     //variability in intensity of random speed change
		sizeCoef = 1;                            //size of particle = size parameter value * this coef (works only in some effects)
		colorCoef[]={1,1,1,1};                   //color of particle = color parameter value * this coef (works only in some effects)
		animationSpeedCoef = 1;                  //animation speed of particle = animationSpeed parameter value * this coef (works only in some effects)

		destroyOnWaterSurface = 1;               //particle can exist - only underwater (-1), only above the water (1), everywhere (0)
		destroyOnWaterSurfaceOffset = 0;         //offset of water surface in destroyOnWaterSurface parameter
		onSurface = true;                        //placing of particle on (water) surface on start of it's existence, default value is true, works only if circleRadius > 0
		keepOnSurface = false;                   //true for particle is stay on water surface - see notes bellow
		surfaceOffset = 0;                       //offset of water surface in keepOnSurface parameter
		bounceOnSurface = 0.6;                   //coef of speed's loosing in collision with ground, 0-1 for collisions, -1 disable collision
		bounceOnSurfaceVar = 0.0;                //variability in speed's loosing in collision with ground
		postEffects = "";            //effect triggered before destroying of particle
		particleEffects = ""; //emitter of effect defined in this parameter is attached to each particle
		blockAIVisibility = true;                //sets if particles are in the AI visibility tests (default true) - false for better performance but AI is able to see through particles
		emissiveColor[] = {{30,30,30,0},{0,0,0,0}};  //sets emissivity of particle, 4th number has no meaning for now

		//--- fire damage related parameters (optional)
		damageType="";                       //damage type, only available option is "Fire" so far
		coreIntensity = 0;                    //damage coeficient in the center of fire
		coreDistance = 0;                      //how far can unit get damage
		damageTime = 0;                        //how often is unit getting damage 
	};
		class goko_testparticle: Default
	{
		interval = "0.5 * speedSize + 0.5";      //interval of particle's creation
		circleRadius = 0;			     //radius around emitter where particles are created
		circleVelocity[] = {0, 0, 0};	     //direction and speed of movement of particle's circle
		particleShape = \A3\data_f\ParticleEffects\Universal\Universal;		//path and name of file
		particleFSNtieth = 16;		     //coef; size of one particle's texture in pixels = 2048/coef
		particleFSIndex = 12;		     //index of start line on texture
		particleFSFrameCount = 8;		     //count of pictures in animation (starts on first picture in defined line - particleFSIndex)
		particleFSLoop = 1;		             //loop of animation (0 - false, 1 - true)
		angle = 0;				     //angle of particle
		angleVar = 0;			     //variability in angle of particle

		animationName = "";
		particleType = "Billboard";	             //type of animation (Billboard (2D), Spaceobject (3D))
		timerPeriod = 1;			     //interval of timer (how often is called script defined in parameter onTimerScript)
		lifeTime = 1;			     //life time of particle in seconds
		moveVelocity[] = {0, 0, 0};	             //direction and speed of movement of particle [x,z,y]
		rotationVelocity = 0;		     //direction and speed of rotation of particle [x,z,y]
		weight = 1;			             //weight of particle (kg)
		volume = 1;			             //volume of particle (m3)
		rubbing = 0.05;			     //how much is particle affected by wind/air resistance
		size[] = {1,1};			     //size of particle during the life
		color[] = {{1,0,0,1},{1,0,0,0}};	     //color of particle during the life (r,g,b,a)
		animationSpeed[] = {1};		     //speed of animation (number of animation cycles in 1s)
		randomDirectionPeriod = 0;		     //interval of random speed change
		randomDirectionIntensity = 0;	     //intensity of random speed change
		onTimerScript = "";		             //script triggered by timer (in variable "this" is stored position of particle)
		beforeDestroyScript = "";		     //script triggered before destroying of particle (in variable "this" is stored position of particle)
		lifeTimeVar = 0;			     //variability in lifetime of particle
		position[] = {0, 0, 0};                  //defines position of effect
		positionVar[] = {0, 0, 0};		     //variability in position of particle (each part of vector has it's own variability)
		positionVarConst[] = {0, 0, 0};	     //variability in position of particle (variablity of all parts of vector is the same)
		moveVelocityVar[] = {0, 0, 0};	     //variability in direction and speed of particle (each part of vector has it's own variability)
		moveVelocityVarConst[] = {0, 0, 0};      //variability in direction and speed of particle (variablity of all parts of vector is the same)
		rotationVelocityVar = 0;		     //variability in rotation of particle
		sizeVar = 0;			     //variability in size of particle
		colorVar[] = {0, 0, 0, 0};		     //variability in color of particle
		randomDirectionPeriodVar = 0;	     //variability in interval of random speed change
		randomDirectionIntensityVar = 0;	     //variability in intensity of random speed change
		sizeCoef = 1;                            //size of particle = size parameter value * this coef (works only in some effects)
		colorCoef[]={1,1,1,1};                   //color of particle = color parameter value * this coef (works only in some effects)
		animationSpeedCoef = 1;                  //animation speed of particle = animationSpeed parameter value * this coef (works only in some effects)

		destroyOnWaterSurface = 0;               //particle can exist - only underwater (-1), only above the water (1), everywhere (0)
		destroyOnWaterSurfaceOffset = 0;         //offset of water surface in destroyOnWaterSurface parameter
		onSurface = true;                        //placing of particle on (water) surface on start of it's existence, default value is true, works only if circleRadius > 0
		keepOnSurface = false;                   //true for particle is stay on water surface - see notes bellow
		surfaceOffset = 0;                       //offset of water surface in keepOnSurface parameter
		bounceOnSurface = 0.6;                   //coef of speed's loosing in collision with ground, 0-1 for collisions, -1 disable collision
		bounceOnSurfaceVar = 0.0;                //variability in speed's loosing in collision with ground
		postEffects = "";            //effect triggered before destroying of particle
		particleEffects = "ExplosionShardsFire"; //emitter of effect defined in this parameter is attached to each particle
		blockAIVisibility = true;                //sets if particles are in the AI visibility tests (default true) - false for better performance but AI is able to see through particles
		emissiveColor[] = {{30,30,30,0},{0,0,0,0}};  //sets emissivity of particle, 4th number has no meaning for now

		//--- fire damage related parameters (optional)
		damageType="";                       //damage type, only available option is "Fire" so far
		coreIntensity = 0;                    //damage coeficient in the center of fire
		coreDistance = 0;                      //how far can unit get damage
		damageTime = 0;                        //how often is unit getting damage 
	};
	class goko_helmetparts: Default
	{
		interval = 0.2;
		circleRadius = 0;
		circleVelocity[] = {0,0,0};
		particleShape = "\A3\data_f\ParticleEffects\Universal\Universal";
		particleFSNtieth = 16;
		particleFSIndex = 13;
		particleFSFrameCount = 1;
		particleFSLoop = 0;
		angleVar = 360;
		animationName = "";
		particleType = "Billboard";
		timerPeriod = 1;
		lifeTime = 0.12;
		moveVelocity[] = {0,0.3,0};
		rotationVelocity = 1;
		weight = 0.1275;
		volume = 0.1;
		rubbing = 0.4;
		size[] = {0.02,0.5,0.8};
		color[] = {{1,0.8,0.8,0.7},{1,0.8,0.8,0.7},{1,0.8,0.8,0.7},{1,0.8,0.8,0.5},{1,0.8,0.8,0.3},{1,0.8,0.8,0.1},{1,0.8,0.8,0.05}};
		animationSpeed[] = {0.1};
		randomDirectionPeriod = 0;
		randomDirectionIntensity = 0;
		onTimerScript = "";
		beforeDestroyScript = "";
		destroyOnWaterSurface = 1;
		destroyOnWaterSurfaceOffset = -0.3;
		blockAIVisibility = 0;
		lifeTimeVar = 0.1;
		positionVar[] = {0.01,0.01,0.01};
		MoveVelocityVar[] = {0.8,0.8,0.8};
		rotationVelocityVar = 1;
		sizeVar = 0.1;
		colorVar[] = {0,0,0,0.2};
		randomDirectionPeriodVar = 0;
		randomDirectionIntensityVar = 0;
	};	
	class goko_goggleparts: Default
	{
		interval = 0.2;
		circleRadius = 0;
		circleVelocity[] = {0,0,0};
		particleShape = "\A3\data_f\ParticleEffects\Universal\AmmoBelt_Links";
		particleFSNtieth = 1;
		particleFSIndex = 0;
		particleFSFrameCount = 1;
		particleFSLoop = 0;
		angleVar = 360;
		animationName = "";
		particleType = "SpaceObject";
		timerPeriod = 1;
		lifeTime = 2;
		moveVelocity[] = {0,1.5,0};
		rotationVelocity = 1;
		weight = 22;
		volume = 1;
		rubbing = 0.2;
		size[] = {1.5};
		color[] = {{0.25,0.05,0.05,0.7},{0.25,0.05,0.05,0.7},{0.25,0.05,0.05,0.7},{0.25,0.05,0.05,0.5},{0.25,0.05,0.05,0.3},{0.25,0.05,0.05,0.1},{0.25,0.05,0.05,0.05}};
		animationSpeed[] = {0.1};
		randomDirectionPeriod = 0;
		randomDirectionIntensity = 0;
		onTimerScript = "";
		beforeDestroyScript = "";
		bounceOnSurface = 0;
		bounceOnSurfaceVar = 0;
		destroyOnWaterSurface = 1;
		destroyOnWaterSurfaceOffset = -0.3;
		blockAIVisibility = 0;
		lifeTimeVar = 0.1;
		positionVar[] = {0.01,0.01,0.01};
		MoveVelocityVar[] = {0.1,0.15,1.7};
		rotationVelocityVar = 8;
		sizeVar = 0.05;
		colorVar[] = {0,0,0,0.2};
		randomDirectionPeriodVar = 0;
		randomDirectionIntensityVar = 0;
	};
	class goko_testpar1: Default
	{
		interval = "0.5 * speedSize + 0.5";      //interval of particle's creation
		circleRadius = 0;			     //radius around emitter where particles are created
		circleVelocity[] = {0, 0, 0};	     //direction and speed of movement of particle's circle
		particleShape = \A3\data_f\ParticleEffects\Universal\Universal;		//path and name of file
		particleFSNtieth = 16;		     //coef; size of one particle's texture in pixels = 2048/coef
		particleFSIndex = 12;		     //index of start line on texture
		particleFSFrameCount = 8;		     //count of pictures in animation (starts on first picture in defined line - particleFSIndex)
		particleFSLoop = 1;		             //loop of animation (0 - false, 1 - true)
		angle = 0;				     //angle of particle
		angleVar = 0;			     //variability in angle of particle

		animationName = "";
		particleType = "Billboard";	             //type of animation (Billboard (2D), Spaceobject (3D))
		timerPeriod = 1;			     //interval of timer (how often is called script defined in parameter onTimerScript)
		lifeTime = 1;			     //life time of particle in seconds
		moveVelocity[] = {0, 0, 0};	             //direction and speed of movement of particle [x,z,y]
		rotationVelocity = 0;		     //direction and speed of rotation of particle [x,z,y]
		weight = 1;			             //weight of particle (kg)
		volume = 1;			             //volume of particle (m3)
		rubbing = 0.05;			     //how much is particle affected by wind/air resistance
		size[] = {1,1};			     //size of particle during the life
		color[] = {{1,1,1,1},{1,1,1,0}};	     //color of particle during the life (r,g,b,a)
		animationSpeed[] = {1};		     //speed of animation (number of animation cycles in 1s)
		randomDirectionPeriod = 0;		     //interval of random speed change
		randomDirectionIntensity = 0;	     //intensity of random speed change
		onTimerScript = "";		             //script triggered by timer (in variable "this" is stored position of particle)
		beforeDestroyScript = "";		     //script triggered before destroying of particle (in variable "this" is stored position of particle)
		lifeTimeVar = 0;			     //variability in lifetime of particle
		position[] = {0, 0, 0};                  //defines position of effect
		positionVar[] = {0, 0, 0};		     //variability in position of particle (each part of vector has it's own variability)
		positionVarConst[] = {0, 0, 0};	     //variability in position of particle (variablity of all parts of vector is the same)
		moveVelocityVar[] = {0, 0, 0};	     //variability in direction and speed of particle (each part of vector has it's own variability)
		moveVelocityVarConst[] = {0, 0, 0};      //variability in direction and speed of particle (variablity of all parts of vector is the same)
		rotationVelocityVar = 0;		     //variability in rotation of particle
		sizeVar = 0;			     //variability in size of particle
		colorVar[] = {0, 0, 0, 0};		     //variability in color of particle
		randomDirectionPeriodVar = 0;	     //variability in interval of random speed change
		randomDirectionIntensityVar = 0;	     //variability in intensity of random speed change
		sizeCoef = 1;                            //size of particle = size parameter value * this coef (works only in some effects)
		colorCoef[]={1,1,1,1};                   //color of particle = color parameter value * this coef (works only in some effects)
		animationSpeedCoef = 1;                  //animation speed of particle = animationSpeed parameter value * this coef (works only in some effects)

		destroyOnWaterSurface = 0;               //particle can exist - only underwater (-1), only above the water (1), everywhere (0)
		destroyOnWaterSurfaceOffset = 0;         //offset of water surface in destroyOnWaterSurface parameter
		onSurface = true;                        //placing of particle on (water) surface on start of it's existence, default value is true, works only if circleRadius > 0
		keepOnSurface = false;                   //true for particle is stay on water surface - see notes bellow
		surfaceOffset = 0;                       //offset of water surface in keepOnSurface parameter
		bounceOnSurface = 0.6;                   //coef of speed's loosing in collision with ground, 0-1 for collisions, -1 disable collision
		bounceOnSurfaceVar = 0.0;                //variability in speed's loosing in collision with ground
		postEffects = "ExploAmmoExplosion";            //effect triggered before destroying of particle
		particleEffects = "ExploAmmoExplosion"; //emitter of effect defined in this parameter is attached to each particle
		blockAIVisibility = true;                //sets if particles are in the AI visibility tests (default true) - false for better performance but AI is able to see through particles
		emissiveColor[] = {{30,30,30,0},{0,0,0,0}};  //sets emissivity of particle, 4th number has no meaning for now
	};
	class goko_testpar2: Default
	{
		interval = "0.5 * speedSize + 0.5";      //interval of particle's creation
		circleRadius = 0;			     //radius around emitter where particles are created
		circleVelocity[] = {0, 0, 0};	     //direction and speed of movement of particle's circle
		particleShape = \A3\data_f\ParticleEffects\Universal\Universal;		//path and name of file
		particleFSNtieth = 16;		     //coef; size of one particle's texture in pixels = 2048/coef
		particleFSIndex = 12;		     //index of start line on texture
		particleFSFrameCount = 8;		     //count of pictures in animation (starts on first picture in defined line - particleFSIndex)
		particleFSLoop = 1;		             //loop of animation (0 - false, 1 - true)
		angle = 0;				     //angle of particle
		angleVar = 0;			     //variability in angle of particle

		animationName = "";
		particleType = "Billboard";	             //type of animation (Billboard (2D), Spaceobject (3D))
		timerPeriod = 1;			     //interval of timer (how often is called script defined in parameter onTimerScript)
		lifeTime = 1;			     //life time of particle in seconds
		moveVelocity[] = {0, 0, 0};	             //direction and speed of movement of particle [x,z,y]
		rotationVelocity = 0;		     //direction and speed of rotation of particle [x,z,y]
		weight = 1;			             //weight of particle (kg)
		volume = 1;			             //volume of particle (m3)
		rubbing = 0.05;			     //how much is particle affected by wind/air resistance
		size[] = {1,1};			     //size of particle during the life
		color[] = {{1,1,1,1},{1,1,1,0}};	     //color of particle during the life (r,g,b,a)
		animationSpeed[] = {1};		     //speed of animation (number of animation cycles in 1s)
		randomDirectionPeriod = 0;		     //interval of random speed change
		randomDirectionIntensity = 0;	     //intensity of random speed change
		onTimerScript = "";		             //script triggered by timer (in variable "this" is stored position of particle)
		beforeDestroyScript = "";		     //script triggered before destroying of particle (in variable "this" is stored position of particle)
		lifeTimeVar = 0;			     //variability in lifetime of particle
		position[] = {0, 0, 0};                  //defines position of effect
		positionVar[] = {0, 0, 0};		     //variability in position of particle (each part of vector has it's own variability)
		positionVarConst[] = {0, 0, 0};	     //variability in position of particle (variablity of all parts of vector is the same)
		moveVelocityVar[] = {0, 0, 0};	     //variability in direction and speed of particle (each part of vector has it's own variability)
		moveVelocityVarConst[] = {0, 0, 0};      //variability in direction and speed of particle (variablity of all parts of vector is the same)
		rotationVelocityVar = 0;		     //variability in rotation of particle
		sizeVar = 0;			     //variability in size of particle
		colorVar[] = {0, 0, 0, 0};		     //variability in color of particle
		randomDirectionPeriodVar = 0;	     //variability in interval of random speed change
		randomDirectionIntensityVar = 0;	     //variability in intensity of random speed change
		sizeCoef = 1;                            //size of particle = size parameter value * this coef (works only in some effects)
		colorCoef[]={1,1,1,1};                   //color of particle = color parameter value * this coef (works only in some effects)
		animationSpeedCoef = 1;                  //animation speed of particle = animationSpeed parameter value * this coef (works only in some effects)

		destroyOnWaterSurface = 0;               //particle can exist - only underwater (-1), only above the water (1), everywhere (0)
		destroyOnWaterSurfaceOffset = 0;         //offset of water surface in destroyOnWaterSurface parameter
		onSurface = true;                        //placing of particle on (water) surface on start of it's existence, default value is true, works only if circleRadius > 0
		keepOnSurface = false;                   //true for particle is stay on water surface - see notes bellow
		surfaceOffset = 0;                       //offset of water surface in keepOnSurface parameter
		bounceOnSurface = 0.6;                   //coef of speed's loosing in collision with ground, 0-1 for collisions, -1 disable collision
		bounceOnSurfaceVar = 0.0;                //variability in speed's loosing in collision with ground
		postEffects = "GrenadeExplosion";            //effect triggered before destroying of particle
		particleEffects = "GrenadeExplosion"; //emitter of effect defined in this parameter is attached to each particle
		blockAIVisibility = true;                //sets if particles are in the AI visibility tests (default true) - false for better performance but AI is able to see through particles
		emissiveColor[] = {{30,30,30,0},{0,0,0,0}};  //sets emissivity of particle, 4th number has no meaning for now
	};
	
};	