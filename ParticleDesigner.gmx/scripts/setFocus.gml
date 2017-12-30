///setFocus(element)
if (argument0 == noone || !instance_exists(argument0))
{
    if (!ds_stack_empty(obj_focus.focus))
    {
        ds_stack_pop(obj_focus.focus);
    }
}
else
{
    ds_stack_push(obj_focus.focus, argument0);
}
obj_focus.timer = obj_focus.dur;
