///createColorButton(X, Y, W, H)

var menu = instance_create(0, 0, obj_colorButton);
menu.RelX = argument0;
menu.RelY = argument1;
menu.X = menu.RelX;
menu.Y = menu.RelY;
menu.W = argument2;
menu.H = argument3;

return menu;
