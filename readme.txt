[B]Note: This add-on used to be a feature in [url=http://steamcommunity.com/sharedfiles/filedetails/?id=1248372833]Unit voiceovers[/url] mod and is now separate. [/B]
First name I had in mind for add-on was [B]"cheap nvg's from china" [/B] now It is B.I. or ballistic Impact

[B]Short description:[/B] An advanced headshout mechanic & damage implementation for arma 3. Designed to simulate hmd & headgear destruction with headshots.

[B]Author:[/B] gokmen 'the outsider'
[B]Website/Repo:[/B] https://github.com/the0utsider/ballistic-impact
[url=https://forums.bohemia.net/forums/topic/213230-goko-ballistic-impact-add-on/] Bohemia Interactive forums thread [/url]

[B]Requirements:[/B] None
[B]Version:[/B] v1.15
[B]Signed:[/B] Yes

[B]Features:[/B]
[list]
 [*] Visual effects for bullet hit on metal surfaces: 3 different profiles (low, normal, high) for "particles" under Video Settings.
 [*] Brand new mechanic for A3: headshots destroy head gear.
 [*] Brand new visual and audio effects.
 [*] Doesn't kill performance -- close to zero impact
 [*] Headshot mechanics (removal of headgear, destruction of head mounted display etc)
 [*] Randomized particle effects according to gear present on unit
 [*] Each effect is randomized within itself for authentic simulation
 [*] HMDs can be broken with a non fatal shot. This depends on used weapon type and damage value.
 [*] Helmets can be removed & destroyed with caliber equal to and/or higher than 7.62
 [*] Other factors such as helmet's armor level taken into account with weapon caliber for a better simulation
 [*] 5 different sound effect for HMD destruction played random each time
 [*] 12 different sound effect for headshots
 [*] Performance demand of this add-on is minimal as It uses no loops and nothing is added to Arma scheduler
[/list]

[B]Options:[/B]
 [*] CBA is not mandatory but you can have addon options menu if you have CBA loaded
 [*] Variables and their defaults for editing without cba:
profileNamespace getVariable ["gokobi_var_AllowedCaliber", 1.6];
profileNamespace getVariable ["gokobi_var_onoffswitch", true];
[/list]

[B]Description:[/B]
Headshots on unit cause removal of protective glass, head mounted display and/or helmet of unit depending on damage and armor level, spawns particle effects accordingly. 
Factors such as Item present or not, helmet's armor level, weapon caliber and 'chance' taken into account in order to simulate custom particle FX.

[B]Included Files:[/B] 
gokmen.bikey
goko_BI.pbo
goko_BI.pbo.gokmen.bisign

[i][b]Has to be loaded both on server and client in order to work on MP[/b][/i]

[B]Thanks:[/B] Hamza 'ElKappucino' for helping with artwork and testing
[url=https://steamcommunity.com/profiles/76561198021333922]I RexCityRx I[/url] for testing and ideas
[url=http://steamcommunity.com/id/654wak654]654wak654[/url] for support.
[b]Bohemia Interactive for creating Arma.[/b]

[B]License:[/B] Covered under [url=https://www.bohemia.net/community/licenses/arma-public-license-share-alike]APL-SA[/url]
	Feel free to use and modify this code, on the proviso that you post back changes and improvements so that everyone can benefit from them, and acknowledge the original author in any derivative works.
[b] Reuploading this is not allowed [/b]

