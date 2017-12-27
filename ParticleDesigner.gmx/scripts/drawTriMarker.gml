///drawTriMarker(X, Y, fillCol, outlineCol)
var X = argument0;
var Y = argument1;
var fillCol = argument2;
var outlineCol = argument3;
draw_set_alpha(1);
draw_set_color(fillCol);
draw_triangle(X, Y - 2, X - 6, Y + 4, X + 6, Y + 4, false);
draw_set_color(outlineCol);
draw_triangle(X, Y - 2, X - 6, Y + 4, X + 6, Y + 4, true);
