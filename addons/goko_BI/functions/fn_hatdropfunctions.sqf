goko_hatdropchance = 74;

goko_fnc_hatdrop = {
 params ["_victim", "_sele", "_dmg", "_shooter", "_pjectile", "_partindex", "_shooterr", "_partHit" ];

	if !(alive _victim && _partHit == "hitHead" && _dmg > 0.9) exitWith {};
	
	if (round (random 100) < goko_hatdropchance) then {
	
	_vdir = _shooter weaponDirection (primaryWeapon _shooter);
	_scaleVdir = _vdir vectormultiply 2 + random 3;
	_calc = _scaleVdir vectorAdd [-1 + random 2,-1 + random 2, random 5];
	
	private _nvghmdspr = ["goko_fnc_nvghmdspark1", "goko_fnc_nvghmdspark2", "goko_fnc_nvghmdspark3", "goko_fnc_nvghmdspark4", "goko_fnc_nvghmdspark5", "goko_fnc_nvghmdspark6", "goko_fnc_nvgsparks1", "goko_fnc_nvgsparks2", "goko_fnc_nvgsparks3"];
	private _nvghmdsprsele = selectRandom _nvghmdspr;

	_nvgs = hmd _victim;
	_goggles = goggles _victim;
	if ( _nvgs != "" || _goggles != "") then {
		removeGoggles _victim;
		if (_nvgs == "") exitWith {};
		_victim unassignItem _nvgs;
		_victim removeItem _nvgs;
		_victim remoteExecCall ["goko_fnc_nvgsmoke"];
		[_victim, _calc] remoteExecCall ["goko_fnc_nvghmdparts"];
		_victim remoteExecCall [_nvghmdsprsele];

		private _gogglesounds = ["goko_BI\sounds\nvgbreak1.wav", "goko_BI\sounds\nvgbreak2.wav", "goko_BI\sounds\nvgbreak3.wav", "goko_BI\sounds\nvgbreak4.wav", "goko_BI\sounds\nvgbreak5.wav"];
		private _nvgsound = selectRandom _gogglesounds;
		playsound3d [format ["%1",_nvgsound], _victim, false, getPosASL _victim, 1.8, 1, 80];
		_victim remoteExecCall ["goko_fnc_hmdglassParts"];
	};

	_headgear = headgear _victim;
	_gotArmor = getNumber (configFile >> "CfgWeapons" >> _headgear >> "ItemInfo" >> "HitpointsProtectionInfo" >> "Head" >> "armor");
	if (_gotArmor != 0) then {

		_victim remoteExecCall ["goko_fnc_coughblood"];
		_caliber = getNumber (configFile >> "CfgAmmo" >> _pjectile >> "caliber");

		_calcdestroy = (_caliber * 4.62);
		_helmetpartfx = ["goko_fnc_helmetspark1", "goko_fnc_helmetspark2", "goko_fnc_helmetspark3", "goko_fnc_helmetspark4", "goko_fnc_helmetspark5"];
		_helmetpartfxsele = selectRandom _helmetpartfx;
		if (_calcdestroy > _gotArmor) then {
			if (_caliber <= 1.6) exitWith {};
			[_victim, _calc] remoteExecCall [_helmetpartfxsele];
			private _bloodsprayfx = ["goko_fnc_bloodspray1", "goko_fnc_bloodspray2", "goko_fnc_bloodspray3", "goko_fnc_brainparts"];
			private _bloodsprayfxs = selectRandom _bloodsprayfx;
			_victim remoteExecCall [_bloodsprayfxs];
			_headgearsounds = ["goko_BI\sounds\headgear1.wav", "goko_BI\sounds\headgear2.wav", "goko_BI\sounds\headgear3.wav", "goko_BI\sounds\headgear4.wav", "goko_BI\sounds\headgear5.wav", "goko_BI\sounds\headgear6.wav", "goko_BI\sounds\headgear7.wav", "goko_BI\sounds\headgear8.wav"];
			_helmetsound = selectRandom _headgearsounds;
			playsound3d [format ["%1",_helmetsound], _victim, false, getPosASL _victim, 1.9, 1, 90];

			if (_caliber >= 2.6) then {
				_victim remoteExecCall ["goko_fnc_destruct1"];
				removeHeadgear _victim;
			} else {
				_helmetremovalfx = ["goko_fnc_helmetsfly", "goko_fnc_newhelmetpart"];
				_helmetremovalfxs = selectRandom _helmetremovalfx;
				[_victim, _calc] remoteExecCall [_helmetremovalfxs];
				removeHeadgear _victim;	
				};

		} else {
			_victim remoteExecCall ["goko_fnc_smallhitparts"];	
			};

	} else {
		[_victim, _calc] remoteExecCall ["goko_fnc_helmetsfly"];
		private _bloodsprayfx = ["goko_fnc_bloodspray1", "goko_fnc_bloodspray2", "goko_fnc_bloodspray3", "goko_fnc_brainparts"];
		private _bloodsprayfxs = selectRandom _bloodsprayfx;
		_victim remoteExecCall [_bloodsprayfxs];
		removeHeadgear _victim;	
		};
	};
};