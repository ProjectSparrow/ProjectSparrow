/// scr_gamepad_register(device)

// Registers a gamepad.  oInputWatcher will then check for input on gamepad.

var device = argument0;

if (!instance_exists(oInputWatcher)) return false;
if (!ds_exists(oInputWatcher.registered_controllers, ds_type_list)) return false;
if (ds_list_find_index(oInputWatcher.registered_controllers, device) != -1) return false;

ds_list_add(oInputWatcher.registered_controllers, device);
ds_list_sort(oInputWatcher.registered_controllers, true);

show_debug_message("Gamepad registered successfully: " + string(device));
scr_trigger_event(global.gamepad_registered_event, device);


if (!ds_map_exists(oInputWatcher.gamepad_current_values, device))
{
    oInputWatcher.gamepad_current_values[? device] = ds_map_create();
}

if (!ds_map_exists(oInputWatcher.gamepad_previous_values, device))
{
    oInputWatcher.gamepad_previous_values[? device] = ds_map_create();
}

if (!ds_map_exists(oInputWatcher.gamepad_pressed_durations, device))
{
    oInputWatcher.gamepad_pressed_durations[? device] = ds_map_create();
}


return true;
