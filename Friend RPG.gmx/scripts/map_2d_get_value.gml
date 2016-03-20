///map_2d_get_value(map, x_key, y_key)

var map = argument0;
var x_val = argument1;
var y_val = argument2;

if (ds_exists(map, ds_type_map) && ds_map_exists(map, x_val))
{
    var val = map[? x_val];
    if (ds_exists(val, ds_type_map) && ds_map_exists(val, y_val))
    {
        return val[? y_val];
    }
}

return -1;
