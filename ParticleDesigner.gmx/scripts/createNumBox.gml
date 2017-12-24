///createNumBox(X, Y, W, H, text, font, textcol, fillcol, outlinecol, highlightCol, textalpha, fillalpha, outlinealpha, highlightAlpha)
var menu = instance_create(0, 0, obj_numbox);
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
menu.highlightCol = argument9;
menu.textAlpha = argument10;
menu.fillAlpha = argument11;
menu.outlineAlpha = argument12;
menu.highlightAlpha = argument13;
return menu;
