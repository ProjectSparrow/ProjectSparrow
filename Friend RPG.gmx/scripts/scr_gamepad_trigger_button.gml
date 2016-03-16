///scr_gamepad_trigger_button(device, device_type, button)

/* Fires all the related events for a button and passes 
   the value of the button to the events */

var device = argument0;
var device_type = argument1;
var button = argument2;

var value = gamepad_button_value(device, button);

if gamepad_button_check_pressed(device, button) 
{ 
    if (global.gamepad_enable_long_press)
    {
        map_2d_set_value(gamepad_pressed_durations, device, button, current_time);
    }

    scr_gamepad_trigger_event(button, device, device_type, BUTTON_STATES.PRESSED, value);
}

if gamepad_button_check(device, button) 
{ 
    scr_gamepad_trigger_event(button, device, device_type, BUTTON_STATES.DOWN, value);
    
    if (global.gamepad_enable_long_press)
    {
        var pressed_time = map_2d_get_value(gamepad_pressed_durations, device, button);
        if ( pressed_time != -1 && (current_time - pressed_time) >= global.long_press_duration)
        {
            scr_gamepad_trigger_event(button, device, device_type, BUTTON_STATES.LONG, value);
        }
    }
    
    if (global.gamepad_record_previous_values)
    {
        map_2d_set_value(gamepad_previous_values, device, button, 
            map_2d_get_value(gamepad_current_values, device, button));
        map_2d_set_value(gamepad_current_values, device, button, value);
    }
}

if gamepad_button_check_released(device, button) 
{ 
    scr_gamepad_trigger_event(button, device, device_type, BUTTON_STATES.RELEASED, value);
}
