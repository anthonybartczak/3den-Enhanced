class Enh_Patrol
{
	displayName = $STR_ENH_patrol_displayName;
	tooltip = $STR_ENH_patrol_tooltip;
	property = "Enh_randomPatrol_maxDistance";
	control = "Edit";
	expression = "if (!is3DEN && (_value > 0)) then {[_this,getPosATL (leader _this),_value] call BIS_fnc_taskPatrol}";
	defaultValue = "-1";
	typeName = "NUMBER";
};