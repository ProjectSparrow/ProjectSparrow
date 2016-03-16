///scr_event_remove_listener_ext(event_key, instance, priority ["" for all])
/* * * * * * * * * * * * * * * * * * *
*
*   Removes an instance from an event, matching the specified priority.
*
*   Inputs - 
*             Event_key: The key of the event to de-register from.
*               
*             Instance: The instance to de-register.
*
*             Priority: The priority to match when de-registering.  Use "" to de-register all matching instance id.
*
*   Returns - None
*
* * * * * * * * * * * * * * * * * * */

var event_key = argument0;
var instance = argument1;
var priority = argument2;

// if the key does not exist, do nothing.
if (ds_map_exists(global.events, event_key))
{
    var listeners = ds_map_find_value(global.events, event_key);
    var cnt = ds_priority_size(listeners);
    var tmp = ds_priority_create();
    ds_priority_copy(tmp, listeners);
    
    for (var i = 0; i < cnt; i++)
    {
        var listener = ds_priority_delete_max(tmp);
        var tmp_inst = listener[|listener_array.instance];
        var tmp_priority = ds_priority_find_priority(listeners, listener);
        
        if (tmp_inst == instance
            && (string(priority) == "" || string(priority) == string(tmp_priority))
        )
        {
            ds_priority_delete_value(listeners, listener);     
        }
    }
    
    ds_priority_destroy(tmp);
}
