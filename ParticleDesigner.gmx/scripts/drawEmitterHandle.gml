///drawEmitterHandle(x, y, val)

var X = argument0;
var Y = argument1;
var val = argument2;
var B = 3;

draw_set_color(c_black);
draw_set_alpha(1);
draw_rectangle(X - B, Y - B, X + B, Y + B, true);

if (mouse_in_rect(X - B, Y - B, 2 * B, 2 * B))
{
    draw_set_color(c_white);
    draw_set_alpha(0.4);
    draw_rectangle(X - B + 1, Y - B + 1, X + B - 1, Y + B - 1, false);
    if (mouse_check_button_pressed(mb_left))
    {
        draggablePoint = val;
    }
}
if (draggablePoint == val)
{
    draw_set_color(c_blue);
    draw_set_alpha(1);
    draw_rectangle(X - B + 1, Y - B + 1, X + B - 1, Y + B - 1, false);
}
