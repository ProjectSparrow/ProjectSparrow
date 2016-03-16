/// scr_gamepad_register_all_ext(axis_deadzone, button_threshold)

// Registers all gamepad slots.  oInputWatcher will then check for input 
// on all connected gamepad.

var deadzone = argument0;
var threshold = argument1;

for (var i = 0; i < gamepad_get_device_count(); i++)
{
    scr_gamepad_register(i);
    
    gamepad_set_axis_deadzone(i, deadzone);
    gamepad_set_button_threshold(i, threshold);
}
