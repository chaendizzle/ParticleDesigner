///createSpriteRect(X, Y, W, H, spr, img, outlinecol, outlinealpha)
var menu = instance_create(0, 0, obj_spriterect);
menu.RelX = argument0;
menu.RelY = argument1;
menu.X = menu.RelX;
menu.Y = menu.RelY;
menu.W = argument2;
menu.H = argument3;
menu.spr = argument4;
menu.img = argument5;
menu.outlineCol = argument6;
menu.outlineAlpha = argument7;
return menu;
