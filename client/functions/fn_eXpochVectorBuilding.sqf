/*
	fn_eXpochVectorBuilding
	
	Made for Anarchy, adapted to eXpoch and ported into Altis Life and A3Wasteland by DirtySanchez
	
	http://DonkeyPunch.INFO
	
	The contents of this file are under the following license:
	Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License
	http://creativecommons.org/licenses/by-nc-nd/4.0/
*/
params["_builtObj"];

if(isNil {_builtObj})exitWith{};
if!(_builtObj isEqualTo R3F_LOG_joueur_deplace_objet)exitWith{};
R3FObjAttachedTo = player;
closeDialog 0;
keyDownEHId = (findDisplay 46) displayAddEventHandler ["KeyDown", { 
	params ["_dikCodeKey", "_dikCode", "_shift", "_ctrl", "_alt"];
	private _handled = false;
		
		switch(_dikCode)do{
			//Num7
			case 71: {
				_adjust = 1;
				if(_shift)then{_adjust = 3;};
				if(_ctrl)then{_adjust = 0.5;};
				if(_alt)then{	_adjust = 0.25;};
				BuildVecYaw = (((BuildVecYaw - _adjust)min 360) max -360);
				[R3F_LOG_joueur_deplace_objet,false] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			//Num9
			case 73: {
				_adjust = 1;
				if(_shift)then{_adjust = 3;};
				if(_ctrl)then{_adjust = 0.5;};
				if(_alt)then{	_adjust = 0.25;};
				BuildVecYaw = (((BuildVecYaw + _adjust)min 360) max -360);
				[R3F_LOG_joueur_deplace_objet,false] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			// Q
			case 16: {
				_adjust = 1;
				if(_shift)then{_adjust = 3;};
				if(_ctrl)then{_adjust = 0.5;};
				if(_alt)then{	_adjust = 0.25;};
				BuildVecYaw = (((BuildVecYaw - _adjust)min 360) max -360);
				[R3F_LOG_joueur_deplace_objet,false] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			// E
			case 18: {
				_adjust = 1;
				if(_shift)then{_adjust = 3;};
				if(_ctrl)then{_adjust = 0.5;};
				if(_alt)then{	_adjust = 0.25;};
				BuildVecYaw = (((BuildVecYaw + _adjust)min 360) max -360);
				[R3F_LOG_joueur_deplace_objet,false] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			//Page UP
			case 201: {
				_adjust = 0.5;
				if(_shift)then{_adjust = 1.5;};
				if(_ctrl)then{_adjust = 0.1;};
				if(_alt)then{	_adjust = 0.01;};
				BuildPosZ = (((BuildPosZ + _adjust)min 10) max -3);
				[R3F_LOG_joueur_deplace_objet,false] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			//Page DOWN
			case 209: {
				_adjust = 0.5;
				if(_shift)then{_adjust = 1.5;};
				if(_ctrl)then{_adjust = 0.1;};
				if(_alt)then{	_adjust = 0.01;};
				BuildPosZ = (((BuildPosZ - _adjust)min 10) max -3);
				[R3F_LOG_joueur_deplace_objet,false] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			//Num8
			case 72: {
				_adjust = 0.5;
				if(_shift)then{_adjust = 1.5;};
				if(_ctrl)then{_adjust = 0.1;};
				if(_alt)then{	_adjust = 0.01;};
				BuildPosY = (((BuildPosY + _adjust)min 10) max 2);
				[R3F_LOG_joueur_deplace_objet,false] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			//Num2
			case 80: {
				_adjust = 0.5;
				if(_shift)then{_adjust = 1.5;};
				if(_ctrl)then{_adjust = 0.1;};
				if(_alt)then{	_adjust = 0.01;};
				BuildPosY = (((BuildPosY - _adjust)min 10) max 2);
				[R3F_LOG_joueur_deplace_objet,false] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			//Home
			case 199: {
				_adjust = 0.5;
				if(_shift)then{_adjust = 1.5;};
				if(_ctrl)then{_adjust = 0.1;};
				if(_alt)then{	_adjust = 0.01;};
				BuildPosY = (((BuildPosY + _adjust)min 10) max 2);
				[R3F_LOG_joueur_deplace_objet,false] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			//END
			case 207: {
				_adjust = 0.5;
				if(_shift)then{_adjust = 1.5;};
				if(_ctrl)then{_adjust = 0.1;};
				if(_alt)then{	_adjust = 0.01;};
				BuildPosY = (((BuildPosY - _adjust)min 10) max 2);
				[R3F_LOG_joueur_deplace_objet,false] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			//Num4
			case 75: {
				_adjust = 0.5;
				if(_shift)then{_adjust = 1.5;};
				if(_ctrl)then{_adjust = 0.1;};
				if(_alt)then{	_adjust = 0.01;};
				BuildPosX = (((BuildPosX - _adjust)min 5) max -5);
				[R3F_LOG_joueur_deplace_objet,false] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			//Num6
			case 77: {
				_adjust = 0.5;
				if(_shift)then{_adjust = 1.5;};
				if(_ctrl)then{_adjust = 0.1;};
				if(_alt)then{	_adjust = 0.01;};
				BuildPosX = (((BuildPosX + _adjust)min 5) max -5);
				[R3F_LOG_joueur_deplace_objet,false] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			case 208: {
				_adjust = 0.5;
				if(_shift)then{_adjust = 1.5;};
				if(_ctrl)then{_adjust = 0.1;};
				if(_alt)then{	_adjust = 0.01;};
				BuildVecPitch = (((BuildVecPitch + _adjust)min 360) max -360);
				[R3F_LOG_joueur_deplace_objet,false] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			case 200: {
				_adjust = 0.5;
				if(_shift)then{_adjust = 1.5;};
				if(_ctrl)then{_adjust = 0.1;};
				if(_alt)then{	_adjust = 0.01;};
				BuildVecPitch = (((BuildVecPitch - _adjust)min 360) max -360);
				[R3F_LOG_joueur_deplace_objet,false] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			case 203: {
				_adjust = 0.5;
				if(_shift)then{_adjust = 1.5;};
				if(_ctrl)then{_adjust = 0.1;};
				if(_alt)then{	_adjust = 0.01;};
				BuildVecRoll = (((BuildVecRoll - _adjust)min 360) max -360);
				[R3F_LOG_joueur_deplace_objet,false] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			case 205: {
				_adjust = 0.5;
				if(_shift)then{_adjust = 1.5;};
				if(_ctrl)then{_adjust = 0.1;};
				if(_alt)then{	_adjust = 0.01;};
				BuildVecRoll = (((BuildVecRoll + _adjust)min 360) max -360);
				[R3F_LOG_joueur_deplace_objet,false] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
		};
	_handled;
}];

keyUpEHId = (findDisplay 46) displayAddEventHandler ["KeyUp", { 
	params ["_dikCodeKey", "_dikCode", "_shift", "_ctrl", "_alt"];
	private _handled = false;
		
		switch(_dikCode)do{
			//Num7
			case 71: {
				[R3F_LOG_joueur_deplace_objet,true] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			//Num9
			case 73: {
				[R3F_LOG_joueur_deplace_objet,true] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			// Q
			case 16: {
				[R3F_LOG_joueur_deplace_objet,true] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			// E
			case 18: {
				[R3F_LOG_joueur_deplace_objet,true] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			//Page UP
			case 201: {
				[R3F_LOG_joueur_deplace_objet,true] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			//Page DOWN
			case 209: {
				[R3F_LOG_joueur_deplace_objet,true] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			//Num8
			case 72: {
				[R3F_LOG_joueur_deplace_objet,true] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			//Num2
			case 80: {
				[R3F_LOG_joueur_deplace_objet,true] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			//Home
			case 199: {
				[R3F_LOG_joueur_deplace_objet,true] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			//END
			case 207: {
				[R3F_LOG_joueur_deplace_objet,true] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			//Num4
			case 75: {
				[R3F_LOG_joueur_deplace_objet,true] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			//Num6
			case 77: {
				[R3F_LOG_joueur_deplace_objet,true] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			//Num 5
			case 76: {
				BuildPosX = 0;BuildPosY = 5;BuildPosZ = 2;BuildVecYaw = 0;BuildVecPitch = 0;BuildVecRoll = 0;
				[R3F_LOG_joueur_deplace_objet,true] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			//BackSpace
			case 14: {
				BuildPosX = 0;BuildPosY = 5;BuildPosZ = 2;BuildVecYaw = 0;BuildVecPitch = 0;BuildVecRoll = 0;
				[R3F_LOG_joueur_deplace_objet,true] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			case 208: {
				[R3F_LOG_joueur_deplace_objet,true] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			case 200: {
				[R3F_LOG_joueur_deplace_objet,true] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			case 203: {
				[R3F_LOG_joueur_deplace_objet,true] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			case 205: {
				[R3F_LOG_joueur_deplace_objet,true] call A3W_fnc_eXpochVectorDirandUp;
				_handled = true;
			};
			case 82: {
				if(R3FObjAttachedTo isEqualTo player)then
				{
					[]spawn
					{
						disableSerialization;
						_result = ["Do you really want to snap to this object?", "Confirm", "Yes", "Nah"] call BIS_fnc_guiMessage;
						waitUntil { !isNil "_result" };
						if (_result) then
						{
							BuildPosX = 0;BuildPosY = 0;BuildPosZ = 2;BuildVecYaw = 0;BuildVecPitch = 0;BuildVecRoll = 0;
							R3FObjAttachedTo = cursorObject;
							[R3F_LOG_joueur_deplace_objet,true] call A3W_fnc_eXpochVectorDirandUp;
						};
					};
				}else{
					R3FObjAttachedTo = player;
					BuildPosX = 0;BuildPosY = 5;BuildPosZ = 2;BuildVecYaw = 0;BuildVecPitch = 0;BuildVecRoll = 0;
					[R3F_LOG_joueur_deplace_objet,true] call A3W_fnc_eXpochVectorDirandUp;
				};
				_handled = true;
			};
			case 57: {
				["","","",false] execVM "addons\R3F_ARTY_AND_LOG\R3F_LOG\objet_deplacable\relacher.sqf";
				BuildPosX = 0;BuildPosY = 5;BuildPosZ = 2;BuildVecYaw = 0;BuildVecPitch = 0;BuildVecRoll = 0;
				R3FObjAttachedTo = objNull;
				(findDisplay 46) displayRemoveEventHandler ["KeyDown", keyDownEHId];
				(findDisplay 46) displayRemoveEventHandler ["KeyUp", keyUpEHId];
				_handled = true;
			};
		};
	_handled;
}];