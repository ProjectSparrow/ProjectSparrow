///scr_event_initialize()
/* * * * * * * * * * * * * * * * * * *
*
*   Initializes the Event System.
*
*   Inputs - None
*
*   Returns - None   
*
*   Note: Only call this script once, when the game starts
*
* * * * * * * * * * * * * * * * * * */

enum listener_array {
    instance,
    script,
    count
}

// Map of all events
global.events = ds_map_create();
