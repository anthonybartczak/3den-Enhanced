/*
  Author: R3vo

  Description:
  Changes the rotation. Used in the ENH_PatternTools GUI.

  Parameter(s):
  -

  Returns:
  -
*/

#include "\3denEnhanced\defines\defineCommon.inc"

params ["", "_newValue"];

_newValue = _newValue call ENH_fnc_placementTools_stringToNumeric;

ENH_PlacementTools_InitialAngle = _newValue;
private _angle = _newValue;
private _angleStep = ENH_PlacementTools_CentralAngle / count ENH_PlacementTools_Selected;

collect3DENHistory
{
  {
    private _pos = ENH_PlacementTools_Center getPos [ENH_PlacementTools_Radius, _angle];
    _x set3DENAttribute ["Position", _pos];
    _x set3DENAttribute ["Rotation", [0, 0, _angle]];
    _angle = _angle + _angleStep;
  } forEach ENH_PlacementTools_Selected;
};