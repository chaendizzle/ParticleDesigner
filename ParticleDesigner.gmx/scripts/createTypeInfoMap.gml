///createTypeInfoMap(?map)

// map structure:
// shape
///    type
//     index
//     animate
//     stretch
//     random
// scale
//     x
//     y
// size
//     min
//     max
//     inc
//     wig
// speed
//     min
//     max
//     inc
//     wig
// dir
//     min
//     max
//     inc
//     wig
// grav
//     amt
//     dir
// orientation
//     min
//     max
//     inc
//     wig
// color
//     type
//     color1/rmin->rmax/hmin->hmax
//     color2/gmin->gmax/smin->smax
//     color3/bmin->gmax/vmin->vmax
// alpha
//     type
//     alpha1
//     alpha2
//     alpha3
// blend
// life
//     min
//     max
// step
//     amt
//     tabList
// death
//     amt
//     tabList

var map = noone;
if (argument_count >= 1)
{
    map = argument[0];
    ds_map_clear(map);
}
else
{
    map = ds_map_create();
}

var menu = instance_nearest(0, 0, obj_particleTypeMenu);
menu.info = map;
with (menu)
{
    event_user(WRITE_INFO);
}
return map;
