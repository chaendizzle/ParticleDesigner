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
    // sliders or numbers

// speed
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleColorMenu));
    // slider or number

// direction
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleTypeTest));
    // angle spinner

// gravity
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleTypeTest));
    // slider or number

// orientation
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleTypeTest));
    // angle

// color
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleTypeTest));
    // color type
    // color submenu for choosing color

// alpha
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleTypeTest));
    // alpha type
    // alpha sliders?

// blend
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleTypeTest));
    // checkbox

// lifetime
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleTypeTest));
    // slider or number

// step
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleTypeTest));
    // choose another particle type...

// death
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleTypeTest));
    // choose another particle type...

var tab = ds_list_create();
tab[| TAB_MENU] = tabMenus;
tab[| TAB_NAME] = argument0;
tab[| TAB_SURF] = noone;

return tab;
