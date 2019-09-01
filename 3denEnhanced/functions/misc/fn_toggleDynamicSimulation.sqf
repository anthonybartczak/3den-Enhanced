/*
	Author: Revo

	Description:
	Toggles dynamic simulation.

	Parameter(s):
	-

	Returns:
	BOOLEAN: true / false
*/

if !(is3DEN) exitWith {false};

private _selected = [["Object","Group"]] call Enh_fnc_all3denSelected;

if (_selected isEqualTo []) exitWith
{
	["Enh_NoEntitiesSelected"] call BIS_fnc_3DENNotification;
	false
};

#define ATTRIBUTE "dynamicSimulation"
#define GET_ATTRIBUTE (_x get3DENAttribute ATTRIBUTE)

collect3DENHistory
{
	{
		if (GET_ATTRIBUTE isEqualTo [false]) then
		{
		 	_x set3DENAttribute [ATTRIBUTE,true];
		}
		else
		{
			_x set3DENAttribute [ATTRIBUTE,false];
		};
	} forEach _selected;
};

["Enh_actionPerformed"] call BIS_fnc_3DENNotification;

true