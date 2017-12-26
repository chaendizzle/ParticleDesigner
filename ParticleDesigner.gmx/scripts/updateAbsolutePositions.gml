///updateAbsolutePositions(rootMenu)
var menu = argument0;

// set absolute position of this menu based on absolute = (parent.absolute + relative)
if (instance_exists(menu.parent))
{
    menu.X = menu.RelX + menu.parent.X;
    menu.Y = menu.RelY + menu.parent.Y;
}
else
{
    menu.X = menu.RelX;
    menu.Y = menu.RelY;
}

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
        updateAbsolutePositions(inst);
    }
}
return true;