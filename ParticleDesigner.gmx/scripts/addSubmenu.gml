///addSubmenu(submenuList, parent, submenu)
var list = argument0;
var parent = argument1;
var submenu = argument2;

ds_list_add(list, submenu);
submenu.parent = parent;
