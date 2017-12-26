///createTextRect(X, Y, W, H, text, font, textcol, fillcol, outlinecol, textalpha, fillalpha, outlinealpha)
var menu = instance_create(0, 0, obj_textrect);
menu.RelX = argument0;
menu.RelY = argument1;
menu.X = menu.RelX;
menu.Y = menu.RelY;
menu.W = argument2;
menu.H = argument3;
menu.text = argument4;
menu.textFont = argument5;
menu.textCol = argument6;
menu.fillCol = argument7;
menu.outlineCol = argument8;
menu.textAlpha = argument9;
menu.fillAlpha = argument10;
menu.outlineAlpha = argument11;
return menu;