class CfgCloudlets
{
	class Default;
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
		color[] = { { 1, 0.4, 0.2, -50 }, { 1, 0.3, 0.2, -1 } };
		emissiveColor[] = { { 250, 80, 25, 0 }, { 0, 0, 0, 0 } };
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
	class goko_helmetflyoff: Default
	{
		interval = 0.02;
		circleRadius = 0;
		circleVelocity[] = {0,0,0};
		particleShape = "\A3\data_f\ParticleEffects\Universal\SparksBall.p3d";
		particleFSNtieth = 1;
		particleFSIndex = 0;
		particleFSFrameCount = 1;
		particleFSLoop = 0;
		angleVar = 0;
		animationName = "";
		particleType = "SpaceObject";
		timerPeriod = 3;
		lifeTime = 0.005;
		moveVelocity[] = {0,0,0};
		rotationVelocity = 0;
		weight = 1.275;
		volume = 1;
		rubbing = 0.0;
		size[] = {1};
		sizeCoef = 1;
		color[] = {{1,1,1,-50}};
		colorCoef[] = {1,1,1,1};
		animationSpeed[] = {1000};
		animationSpeedCoef = 1;
		randomDirectionPeriod = 0;
		randomDirectionIntensity = 0;
		onTimerScript = "";
		postEffects = "";
		beforeDestroyScript = "";
		blockAIVisibility = 0;
		lifeTimeVar = 0.0;
		position[] = {0,0,0};
		positionVar[] = {0,0,0};
		moveVelocityVar[] = {0,0,0};
		rotationVelocityVar = 0;
		sizeVar = 0.03;
		colorVar[] = {0.05,0.05,0.05,5};
		randomDirectionPeriodVar = 0;
		randomDirectionIntensityVar = 0;
	};	
/// bullet metal surface impact related stuff below this point
	class gokoFX_Starter_SparksBurstLOW : Default
	{
		interval = 0.001;
		color[] = { { 1, 0.8, 0.8, -500 }, { 1, 0.3, 0.1, -500 } };
		emissiveColor[] = { { 250, 180, 10, 0 }, { 0, 0, 0, 0 } };
		lifeTime = 0.015;
		lifeTimeVar = 0.5;
		weight = 1000;
		volume = 0.01;
		rubbing = 0.15;
		size[] = { 0.1, 0.035, 0 };
		sizeVar = 0.4;
		moveVelocity[] = {"surfNormalX * inSpeed / 225","surfNormalY * inSpeed / 225","surfNormalZ * inSpeed / 250"};
		moveVelocityVar[] = { 1, 1, 1};
		bounceOnSurface = 0.1;
		bounceOnSurfaceVar = 0.2;

		circleRadius = 0;
		circleVelocity[] = { 0, 0, 0 };
		particleShape = "\A3\data_f\ParticleEffects\Universal\Universal";
		particleFSNtieth = 16;
		particleFSIndex = 13;
		particleFSFrameCount = 2;
		particleFSLoop = 0;
		angleVar = 360;
		animationName = "";
		particleType = "Billboard";
		timerPeriod = 3;
		rotationVelocity = 1;
		colorCoef[] = { 1, 1, 1, 1 };
		animationSpeed[] = { 1000 };
		animationSpeedCoef = 1;
		randomDirectionPeriod = 0;
		randomDirectionIntensity = 0;
		onTimerScript = "";
		beforeDestroyScript = "";
		blockAIVisibility = 0;
		position[] = { 0, 0, 0 };
		positionVar[] = { 0.01, 0.01, 0.01 };
		rotationVelocityVar = 0;
		colorVar[] = { 0.05, 0.05, 0.05, 5 };
		randomDirectionPeriodVar = 0.09;
		randomDirectionIntensityVar = 2.3;
	};
	class gokoFX_Starter_SparksBurstMed : Default
	{
		interval = 0.001;
		color[] = { { 1, 0.3, 0.1, -500 }, { 1, 0.3, 0.1, -500 } };
		emissiveColor[] = { { 235, 235, 250, 0 }, { 0, 0, 0, 0 } };
		lifeTime = 0.015;
		lifeTimeVar = 0.5;
		weight = 1000;
		volume = 0.01;
		rubbing = 0.15;
		size[] = { 0.1, 0.035, 0 };
		sizeVar = 0.4;
		moveVelocity[] = {"surfNormalX * inSpeed / 250 * 1.33","surfNormalY * inSpeed / 250 * 1.33","surfNormalZ * inSpeed / 250"};
		moveVelocityVar[] = { 1, 1, 1};
		bounceOnSurface = 0.1;
		bounceOnSurfaceVar = 0.2;

		circleRadius = 0;
		circleVelocity[] = { 0, 0, 0 };
		particleShape = "\A3\data_f\ParticleEffects\Universal\Universal";
		particleFSNtieth = 16;
		particleFSIndex = 13;
		particleFSFrameCount = 2;
		particleFSLoop = 0;
		angleVar = 360;
		animationName = "";
		particleType = "Billboard";
		timerPeriod = 3;
		rotationVelocity = 1;
		colorCoef[] = { 1, 1, 1, 1 };
		animationSpeed[] = { 1000 };
		animationSpeedCoef = 1;
		randomDirectionPeriod = 0;
		randomDirectionIntensity = 0;
		onTimerScript = "";
		beforeDestroyScript = "";
		blockAIVisibility = 0;
		position[] = { 0, 0, 0 };
		positionVar[] = { 0.01, 0.01, 0.01 };
		rotationVelocityVar = 0;
		colorVar[] = { 0.05, 0.05, 0.05, 5 };
		randomDirectionPeriodVar = 0.09;
		randomDirectionIntensityVar = 2.3;
	};
	class gokoFX_Starter_SparksBurst : Default
	{
		interval = 0.001;
		color[] = { { 1, 0.3, 0.1, -500 }, { 1, 0.3, 0.1, -500 } };
		emissiveColor[] = { { 250, 80, 25, 0 }, { 0, 0, 0, 0 } };
		lifeTime = 0.015;
		lifeTimeVar = 1;
		weight = 1000;
		volume = 0.01;
		rubbing = 0.15;
		size[] = { 0.075, 0.015, 0 };
		sizeVar = 0.5;
		moveVelocity[] = {"surfNormalX * inSpeed / 250 * 0.66","surfNormalY * inSpeed / 250 * 0.66","surfNormalZ * inSpeed / 250 * 0.66"};
		moveVelocityVar[] = { 0.1, 0.1, 0.1};
		bounceOnSurface = 0.05;
		bounceOnSurfaceVar = 0.1;

		circleRadius = 0;
		circleVelocity[] = { 0, 0, 0 };
		particleShape = "\A3\data_f\ParticleEffects\Universal\Universal";
		particleFSNtieth = 16;
		particleFSIndex = 13;
		particleFSFrameCount = 2;
		particleFSLoop = 0;
		angleVar = 360;
		animationName = "";
		particleType = "Billboard";
		timerPeriod = 3;
		rotationVelocity = 1;
		colorCoef[] = { 1, 1, 1, 1 };
		animationSpeed[] = { 1000 };
		animationSpeedCoef = 1;
		randomDirectionPeriod = 0;
		randomDirectionIntensity = 0;
		onTimerScript = "";
		beforeDestroyScript = "";
		blockAIVisibility = 0;
		position[] = { 0, 0, 0 };
		positionVar[] = { 0.01, 0.01, 0.01 };
		rotationVelocityVar = 0;
		colorVar[] = { 0.05, 0.05, 0.05, 5 };
		randomDirectionPeriodVar = 0.1;
		randomDirectionIntensityVar = 0.2;
	};
	class gokoFX_Starter_SparksBurst1 : Default
	{
		interval = 0.001;
		color[] = { { 1, 0.3, 0.1, -500 }, { 1, 0.3, 0.1, -500 } };
		emissiveColor[] = { { 250, 225, 160, 0 }, { 0, 0, 0, 0 } };
		lifeTime = 0.015;
		lifeTimeVar = 1;
		weight = 1000;
		volume = 0.01;
		rubbing = 0.15;
		size[] = { 0.075, 0.015, 0 };
		sizeVar = 0.5;
		moveVelocity[] = {"surfNormalX * inSpeed / 250 * 0.66","surfNormalY * inSpeed / 250 * 0.66","surfNormalZ * inSpeed / 250 * 0.66"};
		moveVelocityVar[] = { 0.1, 0.1, 0.1};
		bounceOnSurface = 0.2;
		bounceOnSurfaceVar = 0.3;

		circleRadius = 0;
		circleVelocity[] = { 0, 0, 0 };
		particleShape = "\A3\data_f\ParticleEffects\Universal\Universal";
		particleFSNtieth = 16;
		particleFSIndex = 13;
		particleFSFrameCount = 2;
		particleFSLoop = 0;
		angleVar = 360;
		animationName = "";
		particleType = "Billboard";
		timerPeriod = 3;
		rotationVelocity = 1;
		colorCoef[] = { 1, 1, 1, 1 };
		animationSpeed[] = { 1000 };
		animationSpeedCoef = 1;
		randomDirectionPeriod = 0.05;
		randomDirectionIntensity = 0.1;
		onTimerScript = "";
		beforeDestroyScript = "";
		blockAIVisibility = 0;
		position[] = { 0, 0, 0 };
		positionVar[] = { 0.01, 0.01, 0.01 };
		rotationVelocityVar = 0;
		colorVar[] = { 0.05, 0.05, 0.05, 5 };
		randomDirectionPeriodVar = 0.1;
		randomDirectionIntensityVar = 0.2;
	};
	class gokoFX_Starter_SparksBurst2 : Default
	{
		interval = 0.001;
		color[] = { { 1, 1, 0.9, -500 }, { 1, 0.3, 0.1, -500 } };
		emissiveColor[] = { { 252, 255, 128, 0 }, { 0, 0, 0, 0 } };
		lifeTime = 0.015;
		lifeTimeVar = 1;
		weight = 1000;
		volume = 0.01;
		rubbing = 0.15;
		size[] = { 0.175, 0.015, 0 };
		sizeVar = 0.5;
		moveVelocity[] = {"surfNormalX * inSpeed / 250","surfNormalY * inSpeed / 250","surfNormalZ * inSpeed / 250"};
		moveVelocityVar[] = {"surfNormalX * inSpeed / 250","surfNormalY * inSpeed / 250","surfNormalZ * inSpeed / 250"};
		bounceOnSurface = 0.2;
		bounceOnSurfaceVar = 0.1;

		circleRadius = 0;
		circleVelocity[] = { 0, 0, 0 };
		particleShape = "\A3\data_f\ParticleEffects\Universal\Universal";
		particleFSNtieth = 16;
		particleFSIndex = 13;
		particleFSFrameCount = 2;
		particleFSLoop = 0;
		angleVar = 360;
		animationName = "";
		particleType = "Billboard";
		timerPeriod = 3;
		rotationVelocity = 1;
		colorCoef[] = { 1, 1, 1, 1 };
		animationSpeed[] = { 1000 };
		animationSpeedCoef = 1;
		randomDirectionPeriod = 0.5;
		randomDirectionIntensity = 1;
		onTimerScript = "";
		beforeDestroyScript = "";
		blockAIVisibility = 0;
		position[] = { 0, 0, 0 };
		positionVar[] = { 0.01, 0.01, 0.01 };
		rotationVelocityVar = 1;
		colorVar[] = { 0.05, 0.05, 0.05, 5 };
		randomDirectionPeriodVar = 0.5;
		randomDirectionIntensityVar = 2;
	};
	class gokoFX_Starter_SparksStream : gokoFX_Starter_SparksBurst
	{
		interval = 0.001;
		lifeTime = 0.15;
		lifeTimeVar = 5;
		moveVelocity[] = { 1, 5, 1 };
		moveVelocityVar[] = {"surfNormalX * inSpeed / 250 * 0.66","surfNormalY * inSpeed / 250 * 0.66","surfNormalZ * inSpeed / 250 * 0.66"};
		bounceOnSurface = 0.1;
		bounceOnSurfaceVar = 0.1;
	};
	class gokoFX_Starter_SparksOmni : gokoFX_Starter_SparksBurst2
	{
		interval = 0.008;
		lifeTime = 0.05;
		lifeTimeVar = 1;
		moveVelocity[] = {"surfNormalX * inSpeed / 200","surfNormalY * inSpeed / 200","surfNormalZ * inSpeed / 200"};
		moveVelocityVar[] = {"surfNormalX * inSpeed / 200","surfNormalY * inSpeed / 200","surfNormalZ * inSpeed / 200"};
		bounceOnSurface = 0.1;
		bounceOnSurfaceVar = 0.1;
	};
	class gokoFX_Starter_SparksOmniSparkle : gokoFX_Starter_SparksOmni
	{
		interval = 0.5;
		size[] = { 0.15, 0.05, 0 };
		moveVelocity[] = { 1, 1, 1 };
		moveVelocityVar[] = { 0.1, -1, 0.1 };
		postEffects = "gokoFX_SparksSparkleEffect";
	};
	class gokoFX_Starter_SparksOmniSparklings : gokoFX_Starter_SparksBurst1
	{
		interval = 0.0003;
		lifeTime = 0.003;
		lifeTimeVar = 1;
		moveVelocity[] = { 0.7, 0.7, 0.1 };
		moveVelocityVar[] = { 2, 2, 0.3};
	};
	class gokoFX_Starter_SparksDrop2 : gokoFX_Starter_SparksBurst
	{
		interval = 100;
		lifeTime = 0.5;
		lifeTimeVar = 1;
		moveVelocity[] = { -0.1, -1, -0.1 };
		moveVelocityVar[] = { 0.2, 2, 0.2 };
		bounceOnSurface = 0;
		bounceOnSurfaceVar = 0;
		postEffects = "gokoFX_SparksSparkleEffect";
	};
	class gokoFX_Starter_SparksDrop : gokoFX_Starter_SparksBurst
	{
		interval = 0.020;
		lifeTime = 0.05;
		lifeTimeVar = 3;
		moveVelocity[] = { 0.3, -2, 0.3 };
		moveVelocityVar[] = { 0.3, 0, 0.3 };
		bounceOnSurface = 0.1;
		bounceOnSurfaceVar = 0.2;
	};
	class gokoFX_Starter_SparksDropLightFire : gokoFX_Starter_SparksBurst
	{
		interval = 0.3;
		lifeTime = 0.1;
		lifeTimeVar = 0.2;
		size[] = { 0.25, 0.10, 0 };
		sizeVar = 0.5;
		moveVelocity[] = { 1, 0, 1 };
		moveVelocityVar[] = { 1, 0, 1 };
		bounceOnSurface = -1;
		bounceOnSurfaceVar = 0.0;
		particleEffects = "gokoFX_SparksLightFireEffect";
	};
};

class ImpactMetal
{
	/*class Starter_SparksBurst2
	{
		simulation = "particles";
		type = "gokoFX_Starter_SparksBurst2";
		position[] = { 0, 0, 0 };
		intensity = 1;
		interval = 1;
		lifeTime = 0.3;
		
	};
	class Starter_SparksBurst
	{
		simulation = "particles";
		type = "gokoFX_Starter_SparksBurst";
		position[] = { 0, 0, 0 };
		intensity = 1;
		interval = 1;
		lifeTime = 0.3;
		randomDirectionPeriodVar = 0.2;
		randomDirectionIntensityVar = 1;
		qualityLevel = 2;
	};
	;*/
	class LightExp
	{
		position[] = { 0, 0, 0 };
		simulation = "light";
		type = "Goko_bulletexplo2";
		intensity = 1;
		interval = 1;
		lifeTime = 1;
	};
	class Starter_SparksBurstLow
	{
		simulation = "particles";
		type = "gokoFX_Starter_SparksBurstLOW";
		position[] = { 0, 0, 0 };
		intensity = 1;
		interval = 0.1;
		lifeTime = 0.4;
		randomDirectionPeriodVar = 1;
		randomDirectionIntensityVar = 1;

	};
	class Starter_SparksBurstMed
	{
		simulation = "particles";
		type = "gokoFX_Starter_SparksBurstMed";
		position[] = { 0, 0, 0 };
		intensity = 1;
		interval = 0.1;
		lifeTime = 0.6;
		randomDirectionPeriodVar = 1;
		randomDirectionIntensityVar = 1;
		quality = 1;
	};
	class SparksOmni
	{
		simulation = "particles";
		type = "gokoFX_Starter_SparksOmni";
		position[] = { 0, 0, 0 };
		intensity = 1;
		interval = 10;
		randomDirectionPeriodVar = 0.5;
		randomDirectionIntensityVar = 2;
		qualityLevel = 2;
		lifeTime = 1;
	};
	class SparksDrop2
	{
		simulation = "particles";
		type = "gokoFX_Starter_SparksDrop2";
		position[] = { 0, 0, 0 };
		intensity = 1;
		interval = 1;
		lifeTime = 1;
		qualityLevel = 2;
	};
	class SparksDrop
	{
		simulation = "particles";
		type = "gokoFX_Starter_SparksDrop";
		position[] = { 0, 0, 0 };
		intensity = 1;
		interval = 11;
		lifeTime = 1.5;
		qualityLevel = 2;
	};

	/*class SparksOmni
	{
		simulation = "particles";
		type = "gokoFX_Starter_SparksOmni";
		position[] = { 0, 0, 0 };
		intensity = 1;
		interval = 10;
		randomDirectionPeriodVar = 0.5;
		randomDirectionIntensityVar = 0.5;
		qualityLevel = 2;
		lifeTime = 0.8;
	};
	class SparksOmniSparkle
	{
		simulation = "particles";
		type = "gokoFX_Starter_SparksOmniSparkle";
		position[] = { 0, 0, 0 };
		intensity = 1;
		interval = 10;
		qualityLevel = 2;
		lifeTime = 0.07;
	};
	*/
};

class gokoFX_SparksSparkleEffect
{
	class gokoFX_Starter_SparksOmniSparklings
	{
		simulation = "particles";
		type = "gokoFX_Starter_SparksOmniSparklings";
		position[] = { 0, 0, 0 };
		intensity = 1;
		interval = 1;
		lifeTime = 0.03;

	};
};
