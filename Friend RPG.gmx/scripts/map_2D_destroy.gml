///map_2D_destroy(map)

var map = argument0;

if (ds_exists(map, ds_type_map))
{
    var key = ds_map_find_first(map);
    while(ds_map_exists(map, key))
    {
        var sub_map = map[? key];    
    
        if (ds_exists(sub_map, ds_type_map))
        {
            ds_map_destroy(sub_map);
        }
        
        key = ds_map_find_next(map, key);
    }
}
