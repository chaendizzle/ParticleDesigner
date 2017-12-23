///setActive(menu, bool)
var menu = argument0;
var active = argument1;

// set this menu's active flag
menu.active = active;

// don't do anything if it's a leaf element
var submenus = menu.submenus;
if (!ds_exists(submenus, ds_type_list))
{
    return false;
}

// if it has submenus, set all of them
for (var i = 0; i < ds_list_size(submenus); i++)
{
    var inst = submenus[| i];
    if (instance_exists(inst))
    {
        setActive(inst, active);
    }
}
return true;
