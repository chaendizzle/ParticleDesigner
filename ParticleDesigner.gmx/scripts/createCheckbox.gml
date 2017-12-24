///createCheckbox(X, Y, W, H, checkcol, fillcol, outlinecol, checkalpha, fillalpha, outlinealpha)
var menu = instance_create(0, 0, obj_checkbox);
menu.RelX = argument0;
menu.RelY = argument1;
menu.X = menu.RelX;
menu.Y = menu.RelY;
menu.W = argument2;
menu.H = argument3;
menu.checkCol = argument4;
menu.fillCol = argument5;
menu.outlineCol = argument6;
menu.checkAlpha = argument7;
menu.fillAlpha = argument8;
menu.outlineAlpha = argument9;
return menu;
