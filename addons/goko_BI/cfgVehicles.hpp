/*	
	Initialise handleDamage EH for man main class
	Author: Gokmen
	website: github.com/the0utsider
*/

class CfgVehicles
{
	class Land;
	class Man: Land
	{
		class EventHandlers;
	};	
	class CAManBase: Man
	{
		class EventHandlers: EventHandlers
		{
			class Goko_ballistics
			{
				init = "_this execVM '\goko_BI\functions\goko_install.sqf'";
			};
		};
	};	
};