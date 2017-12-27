///createSlider(X, Y, W, H, min, max, twoHandled, leftCol, rightCol, spr, rounding)

var menu = instance_create(0, 0, obj_slider);
menu.RelX = argument0;
menu.RelY = argument1;
menu.X = menu.RelX;
menu.Y = menu.RelY;
menu.W = argument2;
menu.H = argument3;

menu.valueMin = argument4;
menu.valueMax = argument5;

menu.twoHandled = argument6;

menu.leftCol = argument7;
menu.rightCol = argument8;
menu.spr = argument9;

menu.rnd = argument10;

return menu;
