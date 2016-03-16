///scr_event_destroy(event_key)
/* * * * * * * * * * * * * * * * * * *
*
*   De-registers an event along with all listeners.
*
*   Inputs - The key for the event to be destroyed.
*
*   Returns - None   
*
*   Note: If event does not exist, nothing will happen.
*
* * * * * * * * * * * * * * * * * * */

var event_key = argument0;

// if the key does not exist, do nothing.
if (ds_map_exists(global.events, event_key))
{
    var listeners = ds_map_find_value(global.events, event_key);
    var cnt = ds_priority_size(listeners);
    
    for (var i = 0; i < cnt; i++)
    {
        var listener = ds_priority_delete_max(listeners);
        ds_list_destroy(listener);
    }
    
    ds_priority_destroy(listeners);
    ds_map_delete(global.events, event_key);
}
