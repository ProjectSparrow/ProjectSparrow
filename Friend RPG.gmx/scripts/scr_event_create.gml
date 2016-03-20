///scr_event_create(unique_event_name [optional])
/* * * * * * * * * * * * * * * * * * *
*
*   Creates a new event.
*
*   Inputs - A unique key used to register to and trigger this event.
*            (If key is not specified, it will be generated)
*
*   Returns - The map key for this event.   
*
*   Note: Duplicating a key will overwrite the existing event.
*         Doing this will cause a memory leak.  Always remove an event before
*         re-using it's key.
*
* * * * * * * * * * * * * * * * * * */


var event_key;

// if a key is specified, use it.  
if (argument_count == 1)
{
    event_key = argument[0];
}
else // generate a key
{
    event_key = string(ds_map_size(global.events)) + "_" + string(date_current_datetime());
}

ds_map_add(global.events, event_key, ds_priority_create());

return event_key;
