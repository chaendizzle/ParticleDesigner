///draw_linestrip_width_point(xOne, yOne, xTwo, yTwo, xThree, yThree, width, sharp)
var xOne, yOne, xTwo, yTwo, xThree, yThree, width, sharp;
xOne = argument0;
yOne = argument1;
xTwo = argument2;
yTwo = argument3;
xThree = argument4;
yThree = argument5;
width = argument6;
sharp = argument7;

var w = width / 2;
//calculate angles
var angleA, angleB, angleDifference, angleBisectorOne, angleBisectorTwo;
angleA = -radtodeg(arctan2(yOne - yTwo, xOne - xTwo));
angleB = -radtodeg(arctan2(yThree - yTwo, xThree - xTwo));
angleDifference = angleA - angleB;
angleBisectorOne = (angleA + angleB) * 0.5;
angleBisectorTwo = angleBisectorOne + 90;

//calculate starting points
var startX, startY;
startX[0] = xOne + lengthdir_x(w, angleA - 90);
startY[0] = yOne + lengthdir_y(w, angleA - 90);
startX[1] = xOne + lengthdir_x(w, angleA + 90);
startY[1] = yOne + lengthdir_y(w, angleA + 90);

startX[2] = xTwo + lengthdir_x(w, angleA - 90);
startY[2] = yTwo + lengthdir_y(w, angleA - 90);
startX[3] = xTwo + lengthdir_x(w, angleA + 90);
startY[3] = yTwo + lengthdir_y(w, angleA + 90);

//calculate ending points
var endX, endY;
var tLength, rOne, rTwo;
if (sin(degtorad(angleDifference)) != 0)
{
    tLength = 2 * w / sin(degtorad(angleDifference));
}
else
{
    tLength = 0;
}

//handle case where rhombus overreaches point boundary
if (abs(tLength) >= point_distance(xOne, yOne, xTwo, yTwo))
{
    tLength = sign(tLength) * point_distance(xOne, yOne, xTwo, yTwo);
}

var diagAngle = angleDifference / 2;
rOne = tLength * sin(degtorad(90 - diagAngle));
rTwo = tLength * sin(degtorad(diagAngle));
endX[0] = xTwo + lengthdir_x(rOne, angleBisectorOne);
endY[0] = yTwo + lengthdir_y(rOne, angleBisectorOne);
endX[1] = xTwo + lengthdir_x(rTwo, angleBisectorTwo);
endY[1] = yTwo + lengthdir_y(rTwo, angleBisectorTwo);
endX[2] = xTwo - lengthdir_x(rOne, angleBisectorOne);
endY[2] = yTwo - lengthdir_y(rOne, angleBisectorOne);
endX[3] = xTwo - lengthdir_x(rTwo, angleBisectorTwo);
endY[3] = yTwo - lengthdir_y(rTwo, angleBisectorTwo);

//handle case where tLength is 0
if (tLength == 0)
{
    endX[3] = xTwo + lengthdir_x(w, angleA + 90);
    endY[3] = yTwo + lengthdir_y(w, angleA + 90);
    endX[1] = xTwo + lengthdir_x(w, angleA - 90);
    endY[1] = yTwo + lengthdir_y(w, angleA - 90);
    draw_vertex(startX[0], startY[0]);
    draw_vertex(startX[1], startY[1]);
    draw_vertex(startX[2], startY[2]);
    draw_vertex(startX[3], startY[3]);
}

//draw
draw_vertex(startX[0], startY[0]);
draw_vertex(startX[1], startY[1]);
if (sharp)
{
    draw_vertex(endX[0], endY[0]);
    draw_vertex(endX[2], endY[2]);
}
else
{
    draw_vertex(endX[3], endY[3]);
    draw_vertex(endX[1], endY[1]);
}
