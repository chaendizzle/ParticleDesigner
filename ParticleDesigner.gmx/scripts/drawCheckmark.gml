///drawCheckmark(X, Y, length1, length2, thickness, color, alpha)
var X = argument0;
var Y = argument1;
var l1 = argument2;
var l2 = argument3;
var thick = argument4;
var col = argument5;
var alpha = argument6;
draw_set_color(col);
draw_set_alpha(alpha);

var xList = ds_list_create();
var yList = ds_list_create();

// add points
ds_list_add(xList, X + lengthdir_x(l1, 135));
ds_list_add(yList, Y + lengthdir_y(l1, 135));
ds_list_add(xList, X);
ds_list_add(yList, Y);
ds_list_add(xList, X + lengthdir_x(l2, 45));
ds_list_add(yList, Y + lengthdir_y(l2, 45));

// draw
draw_linestrip_width(xList, yList, thick, false, true);

// clean up
ds_list_destroy(xList);
ds_list_destroy(yList);
