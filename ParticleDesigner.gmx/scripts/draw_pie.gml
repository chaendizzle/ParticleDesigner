///draw_pie(x, y, r, angle1, angle2, prec)
var X = argument0;
var Y = argument1;
var R = argument2;
var angleA = argument3;
var angleB = argument4;
var prec = argument5;
var angleMin = min(angleA, angleB);
var angleMax = max(angleA, angleB);

// in the degenerate case, draw a line
if (abs(angleMin - angleMax) < 4)
{
    draw_line(X, Y, X + lengthdir_x(R, angleMin), Y + lengthdir_y(R, angleMin));
    return false;
}

draw_primitive_begin(pr_trianglefan);

// iterate
draw_vertex(X, Y);
for (var i = 0; i <= prec; i++)
{
    var angle = map_range(i, 0, prec, angleMin, angleMax);
    draw_vertex(X + lengthdir_x(R, angle), Y + lengthdir_y(R, angle));
}

// finish drawing
draw_primitive_end();
return true;
