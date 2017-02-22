/*
	fn_eXpochVectorDirandUp
	
	Made for Anarchy, adapted to eXpoch and ported into Altis Life and A3Wasteland by DirtySanchez
	
	http://DonkeyPunch.INFO
	
	The contents of this file are under the following license:
	Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License
	http://creativecommons.org/licenses/by-nc-nd/4.0/
*/
params["_builtObj","_pushVar"];

if(isNil {_builtObj})exitWith{};
if(isNil {_pushVar})then{_pushVar = false;};
if!(_builtObj isEqualTo R3F_LOG_joueur_deplace_objet)exitWith{};

R3F_LOG_joueur_deplace_objet attachTo [R3FObjAttachedTo,[BuildPosX,BuildPosY,BuildPosZ]];
private _newDirAndUp = [[ sin BuildVecYaw * cos BuildVecPitch,cos BuildVecYaw * cos BuildVecPitch,sin BuildVecPitch],	[[ sin BuildVecRoll,-sin BuildVecPitch,cos BuildVecRoll * cos BuildVecPitch],-BuildVecYaw] call BIS_fnc_rotateVector2D];
R3F_LOG_joueur_deplace_objet setVectorDirAndUp _newDirAndUp;
if(_pushVar)then
{
	R3F_ARTY_AND_LOG_PUBVAR_setDirAndUp = [R3F_LOG_joueur_deplace_objet, R3FObjAttachedTo, _newDirAndUp, BuildPosX, BuildPosY, BuildPosZ];
	publicVariable "R3F_ARTY_AND_LOG_PUBVAR_setDirAndUp";
};
