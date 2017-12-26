///findStringPos(str, pos)
var prev = -100;
for (var i = 0; i < string_length(argument0); i++)
{
    var width = string_width(string_copy(argument0, 1, i));
    if (width > argument1)
    {
        // if closer to the space on the left
        if (abs(prev - argument1) <= abs(width - argument1))
        {
            return i - 1;
        }
        // if closer to the space on the right
        return i;
    }
    prev = width;
}
return string_length(argument0);