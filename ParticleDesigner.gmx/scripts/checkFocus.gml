///checkFocus(popupId/noone)
// checks if focus is on the base layer
var popupId = argument0;
// if timer is not yet done, there is no focus on anything
if (obj_focus.timer > 0)
{
    return false;
}
// remove any nonexistent elements
while(!ds_stack_empty(obj_focus.focus) && !instance_exists(ds_stack_top(obj_focus.focus)))
{
    ds_stack_pop(obj_focus.focus);
}
// if the stack is empty, focus is on noone
if (popupId == noone)
{
    return ds_stack_empty(obj_focus.focus);
}
// otherwise, focus is on the top element
return ds_stack_top(obj_focus.focus) == popupId;
