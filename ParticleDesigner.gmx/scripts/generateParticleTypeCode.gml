///generateParticleTypeCode(particleTypeName, uiInfoMap)
// generates code for a particle type
var name = argument0;
var info = argument1;
var str = "///init_" + name + "_type(sys)" + newline();
str += "Creates the " + name + " particle type and returns it." + newline();
str += "var sys = argument0;" + newline();
str += "var part = part_emitter_create(sys);";

var shapes = obj_system.shapes;
var shape = info[? "shape"];
if (ds_map_exists(shape, "type"))
{
    switch (shape[? "type"])
    {
        case SHAPE_SHAPE:
            str += "part_type_shape(part, " + shapes[? shape[? "index"]] + ");" + newline();
            break;
        case SHAPE_SPRITE:
            str += "part_type_sprite(part, " + sprite_get_name(shape[? "index"]) + ", " +
            stringb(shape[? "animate"]) + ", " + stringb(shape[? "stretch"]) + ", " + stringb(shape[? "random"]) + ");" + newline();
            break;
    }
}
else
{
    str += "part_type_shape(part, pt_shape_pixel);" + newline();
}

var scale = info[? "scale"];
str += "part_type_scale(part, " + scale[? "x"] + ", " + scale[? "y"] + ");" + newline();

var size = info[? "size"];
str += "part_type_size(part, " + size[? "min"] + ", " + size[? "max"] + 
", " + size[? "inc"] + ", " + size[? "wig"] + ");" + newline();

var spd = info[? "speed"];
str += "part_type_speed(part, " + spd[? "min"] + ", " + spd[? "max"] + ", " + 
spd[? "inc"] + ", " + spd[? "wig"] + ");" + newline();

var dir = info[? "dir"];
str += "part_type_direction(part, " + dir[? "min"] + ", " + dir[? "max"] + ", " + 
dir[? "inc"] + ", " + dir[? "wig"] + ");" + newline();

var angle = info[? "orientation"];
str += "part_type_orientation(part, " + angle[? "min"] + ", " + angle[? "max"] + ", " + 
angle[? "inc"] + ", " + angle[? "wig"] + ", " + stringb(angle[? "rel"]) + ");" + newline();

var grav = info[? "grav"];
str += "part_type_gravity(part, " + grav[? "amt"] + ", " + grav[? "dir"] + ");" + newline();

var col = info[? "color"];
switch (col[? "type"])
{
    case COLOR_1:
        str += "part_type_colour1(part, " + col[? "color1"] + ");" + newline();
        break;
    case COLOR_2:
        str += "part_type_colour2(part, " + col[? "color1"] + ", " + col[? "color2"] + ");" + newline();
        break;
    case COLOR_3:
        str += "part_type_colour3(part, " + col[? "color1"] + ", " + col[? "color2"] + ", " + 
        col[? "color3"] + ");" + newline();
        break;
    case COLOR_MIX:
        str += "part_type_colour_mix(part, " + col[? "color1"] + ", " + col[? "color2"] + ");" + newline();
        break;
    case COLOR_RGB:
        str += "part_type_colour_rgb(part, " + col[? "rmin"] + ", " + col[? "rmax"] + ", " +
        col[? "gmin"] + ", " + col[? "gmax"] + ", " + col[? "bmin"] + ", " + col[? "bmax"] + ");" + newline();
        break;
    case COLOR_HSV:
        str += "part_type_colour_hsv(part, " + col[? "hmin"] + ", " + col[? "hmax"] + ", " +
        col[? "smin"] + ", " + col[? "smax"] + ", " + col[? "vmin"] + ", " + col[? "vmax"] + ");" + newline();
        break;
}

var alpha = info[? "alpha"];
switch (alpha[? "type"])
{
    case ALPHA_1:
        str += "part_type_alpha1(part, " + alpha[? "alpha1"] + ");" + newline();
        break;
    case ALPHA_2:
        str += "part_type_alpha2(part, " + alpha[? "alpha1"] + ", " + alpha[? "alpha2"] + ");" + newline();
        break;
    case ALPHA_3:
        str += "part_type_alpha3(part, " + alpha[? "alpha1"] + ", " + alpha[? "alpha2"] + ", " +
        alpha[? "alpha3"] + ");" + newline();
        break;
}

str += "part_type_blend(part, " + stringb(info[? "blend"]) + ");" + newline();

var life = info[? "life"];
str += "part_type_life(part, " + life[? "min"] + ", " + life[? "max"] + ");" + newline();

var step = info[? "step"];
var stepTab = step[? "tabList"];
if (ds_exists(stepTab, ds_type_list))
{
    var stepPart = stepTab[| TAB_NAME];
    if (part_type_exists(stepPart))
    {
        str += "part_type_death(part, " + step[? "amt"] + ", " + stepPart + ");" + newline();
    }
}

var death = info[? "death"];
var deathTab = death[? "tabList"];
if (ds_exists(deathTab, ds_type_list))
{
    var deathPart = deathTab[| TAB_NAME];
    if (part_type_exists(deathPart))
    {
        str += "part_type_death(part, " + death[? "amt"] + ", " + deathPart + ");" + newline();
    }
}

str += "return part;"

return str;
