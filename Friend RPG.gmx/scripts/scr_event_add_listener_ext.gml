///scr_event_add_listener_ext(event_key, instance_id, script_reference, priority)
/* * * * * * * * * * * * * * * * * * *
*
*   Adds an listener to an event.
*
*   Inputs - 
*             Event_key: The key of the event to register to.
*
*             Instance_id: The id of the instance to execute the script.
*               
*             Script_reference: The script to execute when the event is triggered.
*
*             Priority: The priority of this listener when triggering.  (Higher means first)
*
*   Returns - Priority of the event.  
*
*   Note:  ALWAYS ensure the signiture of the scripts are the same.
*          As of writting, passing 2 parameters to a script that expects 3 will use 0 for the missing parameters.
*
*
* * * * * * * * * * * * * * * * * * */

var event_key = argument0;
var instance = argument1;
var script = argument2;
var priority = argument3;

// if the key does not exist, do nothing.
if (ds_map_exists(global.events, event_key))
{
    var listeners = ds_map_find_value(global.events, event_key);
    
    var listener = ds_list_create();
    listener[|listener_array.script] = script;
    listener[|listener_array.instance] = instance;
    
    // if empty priority, find the lowest and use that
    if (string(priority) == "")
    {
        var min_pr = ds_priority_find_min(listeners);
        priority = ds_priority_find_priority(listeners, min_pr);
    }
    
    ds_priority_add(listeners, listener, priority);
    
    return priority;
}

return "";
