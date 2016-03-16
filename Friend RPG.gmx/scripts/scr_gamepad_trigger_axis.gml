///scr_gamepad_trigger_axis(device, device_type, button, state)

/* Fires all the related events for an axis and passes 
   the value of the axis to the events */

var device = argument0;
var device_type = argument1;
var button = argument2;
var state = argument3;

var value = gamepad_axis_value(device, button);  
var last_val = map_2d_get_value_ext(gamepad_current_values, device, button, 0);
    
if (global.gamepad_record_previous_values)
{
    map_2d_set_value(gamepad_previous_values, device, button, 
        map_2d_get_value(gamepad_current_values, device, button));
    map_2d_set_value(gamepad_current_values, device, button, value);
}

if (global.gamepad_trigger_axis_on_0 || value != 0 || value != last_val) 
{ 
    scr_trigger_event(button, button, device, device_type, state, value); 
}
