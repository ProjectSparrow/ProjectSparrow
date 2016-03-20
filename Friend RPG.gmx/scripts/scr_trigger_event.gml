#define scr_trigger_event
///scr_trigger_event(event_key, arg0 ...);
/* * * * * * * * * * * * * * * * * * *
*
*   Triggers an event (executes all registered scripts).
*
*   Inputs - 
*             Event_key: The key of the event to trigger.
*               
*             Also accepts variable length of parameters to pass to script.
*
*   Returns - None.  
*
*   Notes:  ALWAYS ensure the signiture of the scripts match the passed in parameters.
*           As of writting, passing 2 parameters to a script that expects 3 will use 0 for the missing parameters.
*
* * * * * * * * * * * * * * * * * * */

var params = noone;

if (argument_count > 0)
{
    for(var i = argument_count-1; i > 0; i--)
    {
        params[i-1] = argument[i];
    }
    
    scr_trigger_event_array(argument[0], params);
}

#define scr_trigger_event_array
///scr_trigger_event_array(event_key, parameter_array)
/* * * * * * * * * * * * * * * * * * *
*
*   Triggers an event (executes all registered scripts).
*
*   Inputs - 
*             Event_key: The key of the event to trigger.
*               
*             Parameter_array: The parameters to pass to the script.
*
*   Returns - None.  
*
*   Notes:  ALWAYS ensure the signiture of the scripts match the passed in parameters.
*           As of writting, passing 2 parameters to a script that expects 3 will use 0 for the missing parameters.
*
* * * * * * * * * * * * * * * * * * */

var event_key = argument0;
var params = argument1

if (is_array(params) || params == noone)
{
    if (ds_map_exists(global.events, event_key))
    {
        var listeners = ds_map_find_value(global.events, event_key);
        var cnt = ds_priority_size(listeners);
        var tmp = ds_priority_create();
        ds_priority_copy(tmp, listeners);
        
        for (var i = 0; i < cnt; i++)
        {
            var listener = ds_priority_delete_max(tmp);
            
            with(listener[|listener_array.instance])
            {
                var script = listener[|listener_array.script];
                if (script_exists(script))
                {
                    script_execute_ext(script, params);
                }
            }
        }
        
        ds_priority_destroy(tmp);
    }
}