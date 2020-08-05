set "MOD=YeeBoi"
:: This enables all of the various modding cheats for testing, and gives you 50 gold. This overrides any settings you might have in modsettings.json.
set "MODCHEATS=1"
:: Sets all enemies in a dungeon to the same enemy. e.g. `-allenemies="Loud Bird"`. 
set "ALLENEMIES="
:: Forces the boss of the next dungeon to be the enemy you specify, e.g. `-boss="Baby Squid"`.
set "BOSS="
:: Immediately starts the game at the beginning of a dungeon, playing as the specified character, in thier first available episode. e.g. `-character="Robot"`.
set "CHARACTER="
:: Allows you to specify the episode when quickstarting as a character. e.g. `-character="Thief" episode=2`.
set "EPISODE="
:: Immediately starts the game in combat against the enemy you specify. Unless otherwise specified, as Warrior in episode 1. e.g. `-enemy="Snowman"`.
set "ENEMY="
:: Makes the first remix offered be the one you specify. Only works in episodes with remix rules. e.g. `-character="Warrior" -episode=6 -remix="Val"`.
set "REMIX=Magician"
:: Gives the list of named equipment to the player. Only works when quickstarting with either the character or enemy arguments e.g. `-character="Robot" -enemy="Cowboy" -equipment="Slingshot,Cheat Code"`.
set "EQUIPMENT="

@echo off
IF DEFINED MODCHEATS (
	IF %MODCHEATS% NEQ 0 (
		set "FLAGS=%FLAGS% -modcheats"
	)
)
IF DEFINED ALLENEMIES (
	set "FLAGS=%FLAGS% -allenemies="%ALLENEMIES%""
)
IF DEFINED BOSS (
	set "FLAGS=%FLAGS% -boss="%BOSS%""
)
IF DEFINED CHARACTER (
	set "FLAGS=%FLAGS% -character="%CHARACTER%""
)
IF DEFINED EPISODE (
	set "FLAGS=%FLAGS% -episode="%EPISODE%""
)
IF DEFINED ENEMY (
	set "FLAGS=%FLAGS% -enemy="%ENEMY%""
)
IF DEFINED REMIX (
	set "FLAGS=%FLAGS% -remix="%REMIX%""
)
IF DEFINED EQUIPMENT (
	set "FLAGS=%FLAGS% -equipment="%EQUIPMENT%""
)
@echo on
"diceydungeons.exe" "mod=%MOD%"%FLAGS%
@echo off
IF %ERRORLEVEL% NEQ 0 (
	pause
)