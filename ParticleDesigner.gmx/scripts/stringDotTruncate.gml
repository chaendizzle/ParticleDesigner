///stringDotTruncate(str, len)
var str = argument0;
var len = argument1;
if (string_length(str) > len)
{
    return string_copy(str, 1, len - 3) + "...";
}
return str;