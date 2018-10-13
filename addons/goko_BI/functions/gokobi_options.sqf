/*	
	options and cba detection for variables
	Author: Gokmen
	website: github.com/the0utsider
*/

gokobi_var_AllowedCaliber = profileNamespace getVariable ["gokobi_var_AllowedCaliber", 1.6]; //only allow designated marksmen rifles, heavy mgs and such remove headgear
gokobi_var_onoffswitch = profileNamespace getVariable ["gokobi_var_onoffswitch", true];
gokobi_var_debug = profileNamespace getVariable ["gokobi_var_debug", false];

if(isClass(configFile >> "CfgPatches" >> "cba_settings")) then 
{
	[] spawn 
	{
		[
			"gokobi_var_onoffswitch", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
			"CHECKBOX", // setting type
			["gokoBI Damage simulation","Enable headshot mechanics."], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
			"Goko Ballistic Impact", // Pretty name of the category where the setting can be found. Can be stringtable entry.
			true, // default
			true, // "global" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
			{
			} // function that will be executed once on mission start and every time the setting is changed.
		] call CBA_Settings_fnc_init;
		
		[
			"gokobi_var_debug", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
			"CHECKBOX", // setting type
			["gokoBI Debug","Enable debug info."], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
			"Goko Ballistic Impact", // Pretty name of the category where the setting can be found. Can be stringtable entry.
			false, // default
			false, // "global" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
			{
			} // function that will be executed once on mission start and every time the setting is changed.
		] call CBA_Settings_fnc_init;
		
		[
			"gokobi_var_AllowedCaliber", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
			"SLIDER", // setting type
			["Required caliber to initialise","Caliber in cfgAmmo. Only designated marksmen rifles, heavy MGs can remove headgear by mod default."], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
			"Goko Ballistic Impact", // Pretty name of the category where the setting can be found. Can be stringtable entry.
			[0.8,2.4,1.6,1], // default
			true, // "global" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
			{
			} // function that will be executed once on mission start and every time the setting is changed.
		] call CBA_Settings_fnc_init;
	};	
};
