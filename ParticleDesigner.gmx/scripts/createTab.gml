/// createTab(name)
var tabMenus = ds_list_create();
/// all submenus
// displays the menu on the right hand side of the screen
// has submenus:

// tabs of other particles is handled by this

// shape/sprite
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleTypeTabs));
    // all shapes and sprites
    // import

// scale, size
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleTypeTabs));
    // sliders or numbers

// speed
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleTypeTabs));
    // slider or number

// direction
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleTypeTabs));
    // angle spinner

// gravity
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleTypeTabs));
    // slider or number

// orientation
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleTypeTabs));
    // angle

// color
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleTypeTabs));
    // color type
    // color submenu for choosing color

// alpha
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleTypeTabs));
    // alpha type
    // alpha sliders?

// blend
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleTypeTabs));
    // checkbox

// lifetime
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleTypeTabs));
    // slider or number

// step
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleTypeTabs));
    // choose another particle type...

// death
    addSubmenu(tabMenus, id, instance_create(0, 0, obj_particleTypeTabs));
    // choose another particle type...

var tab = ds_list_create();
tab[| 0] = tabMenus;
tab[| 1] = argument0;

return tab;
