///scr_event_add_listener(event_key, script_reference)
/* * * * * * * * * * * * * * * * * * *
*
*   Adds an listener to an event.
*
*   Inputs - 
*             Event_key: The key of the event to register to.
*               
*             Script_reference: The script to execute when the event is triggered.
*
*   Returns - Priority of the event.  
*
*   Notes:  ALWAYS ensure the signiture of the scripts are the same.
*           As of writting, passing 2 parameters to a script that expects 3 will use 0 for the missing parameters.
*
*           Script execution order will be left up to how game maker
*           handles duplicate keys in a priority queue. 
*
* * * * * * * * * * * * * * * * * * */

return scr_event_add_listener_ext(argument0, id, argument1, 0);
