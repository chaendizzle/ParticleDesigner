///draw_linestrip_width(pointX, pointY, width, closed, sharp)
var pointX, pointY, width, closed, sharp;
pointX = argument0;
pointY = argument1;
width = argument2;
closed = argument3;
sharp = argument4;

//check if lists are valid
if (ds_list_size(pointX) != ds_list_size(pointY))
{
    //invalid lists
    return false;
}

//check for enough points
if (ds_list_size(pointX) < 3)
{
    if (ds_list_size(pointX) == 0)
    {
        //do nothing, invalid empty list
        return false;
    }
    if (ds_list_size(pointX) == 1)
    {
        //if a point, just draw a dot
        draw_rectangle(pointX[| 0] - (width / 2), pointY[| 0] - (width / 2), pointX[| 0] + (width / 2), pointY[| 0] + (width / 2), false);
        return true;
    }
    if (ds_list_size(pointX) == 2)
    {
        //if a line, just draw a straight line
        draw_line_width(pointX[| 0], pointY[| 0], pointX[| 1], pointY[| 1], width);
        return true;
    }
}

draw_primitive_begin(pr_trianglestrip);

//draws everything up to the second to last line
var first, lastPoint, last;
first = 0;
lastPoint = ds_list_size(pointX) - 1;
last = lastPoint - 1;
for(var i = 0; i < last; i += 1)
{
    draw_linestrip_width_point(pointX[| i], pointY[| i], pointX[| i + 1], pointY[| i + 1], pointX[| i + 2], pointY[| i + 2], width, sharp);
}

//draws the last line, adjusting for closed or not.
if (closed)
{
    draw_linestrip_width_point(pointX[| last], pointY[| last], pointX[| lastPoint], pointY[| lastPoint], pointX[| first], pointY[| first], width, sharp);
    draw_linestrip_width_point(pointX[| lastPoint], pointY[| lastPoint], pointX[| first], pointY[| first], pointX[| first + 1], pointY[| first + 1], width, sharp);
    draw_linestrip_width_point(pointX[| first], pointY[| first], pointX[| first + 1], pointY[| first + 1], pointX[| first + 2], pointY[| first + 2], width, sharp);
}
else
{
    //calculate starting points
    var startX, startY, endX, endY;
    var w = width / 2;
    var angleA = -radtodeg(arctan2(pointY[| last] - pointY[| lastPoint], pointX[| last] - pointX[| lastPoint]));
    startX[0] = pointX[| last] + lengthdir_x(w, angleA - 90);
    startY[0] = pointY[| last] + lengthdir_y(w, angleA - 90);
    startX[1] = pointX[| last] + lengthdir_x(w, angleA + 90);
    startY[1] = pointY[| last] + lengthdir_y(w, angleA + 90);
    
    //calculate ending points
    endX[0] = pointX[| lastPoint] + lengthdir_x(w, angleA - 90);
    endY[0] = pointY[| lastPoint] + lengthdir_y(w, angleA - 90);
    endX[1] = pointX[| lastPoint] + lengthdir_x(w, angleA + 90);
    endY[1] = pointY[| lastPoint] + lengthdir_y(w, angleA + 90);
    
    //draw
    draw_vertex(startX[0], startY[0]);
    draw_vertex(startX[1], startY[1]);
    draw_vertex(endX[0], endY[0]);
    draw_vertex(endX[1], endY[1]);
}

draw_primitive_end();