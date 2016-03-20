///map_get_value(map, key, default)

var map = argument0;
var key = argument1;
var default_val = argument2;

if (ds_map_exists(map, key))
{
    return map[? key];
}

return default_val;
