///scr_event_cleanup()
/* * * * * * * * * * * * * * * * * * *
*
*   Releases allocated memory for the Event System.
*
*   Inputs - None
*
*   Returns - None   
*
*   Note: Only call this script once, when the game is finished
*
* * * * * * * * * * * * * * * * * * */

var map = global.events;
var key = ds_map_find_first(map);

while(ds_map_exists(map, key))
{
    var current = key;
    key = ds_map_find_next(map, key);
    scr_event_destroy(current);
}

ds_map_destroy(map);
