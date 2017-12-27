/// createTab(name)
var tabMenus = ds_list_create();
/// all submenus
// displays the menu on the right hand side of the screen
// has submenus:

// tabs of other particles is handled by this

// shape/sprite
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleShapeMenu));
    // all shapes and sprites
    // import

// scale, size
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleSizeMenu));

// color
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleColorMenu));

// alpha
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleAlphaMenu));

// movement
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleMoveMenu));

// lifetime, step creation, death creation
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleLifeMenu));

var tab = ds_list_create();
tab[| TAB_MENU] = tabMenus;
tab[| TAB_NAME] = argument0;
tab[| TAB_SURF] = noone;
// when done, info is stored here
tab[| TAB_INFO] = noone;
// then when created, particle type is stored here
tab[| TAB_PARTICLE] = noone;

return tab;
