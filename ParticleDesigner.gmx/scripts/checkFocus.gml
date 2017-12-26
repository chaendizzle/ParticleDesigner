///checkFocus(popupId/noone)
// checks if focus is on the base layer
var popupId = argument0;
if (popupId == noone)
{
    return !instance_exists(obj_focus.focus);
}
return obj_focus.focus == popupId;
