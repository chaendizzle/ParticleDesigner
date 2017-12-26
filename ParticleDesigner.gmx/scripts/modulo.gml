///modulo(a, b)
var a = argument0;
var b = argument1;

var r = a mod b;
if (r < 0)
{
    return r + b;
}
return r;