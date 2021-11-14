/*	
	function classes for add-on goko ballistic impact mod
	Author: Gokmen
	website: github.com/the0utsider
*/

class CfgFunctions
{
	class goko
	{
		class ballisticImpact
		{	
			class BallisticImpactMain
			{
				file = "goko_BI\functions\fn_gokoBI_main.sqf";
				preInit = 1;
			};
			class particlefxBlood
			{
				file = "goko_BI\functions\fn_particleEffectsBlood.sqf";
				preInit = 1;
			};
			class particlefxHeadgear
			{
				file = "goko_BI\functions\fn_particleEffectsHeadgear.sqf";
				preInit = 1;
			};
			class particlefxHMD
			{
				file = "goko_BI\functions\fn_particleEffectsHMD.sqf";
				preInit = 1;
			};
			class particlefxOther
			{
				file = "goko_BI\functions\fn_particleEffectsOther.sqf";
				preInit = 1;
			};
			class gokobi_optionalcba
			{
				file = "goko_BI\functions\gokobi_options.sqf";
				preInit = 1;
			};
		};
	};
};
