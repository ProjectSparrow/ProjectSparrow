/// scr_gamepad_unregister(device)

/* Unregisters a gamepad.  oInputWatcher will no longer check for input on gamepad. */

var device = argument0;

if (!instance_exists(oInputWatcher)) return false;
if (!ds_exists(oInputWatcher.registered_controllers, ds_type_list)) return false;

var idx = ds_list_find_index(oInputWatcher.registered_controllers, device);
if (idx == -1) return false;

ds_list_delete(oInputWatcher.registered_controllers, idx);
show_debug_message("Gamepad un-registered successfully: " + string(device));

return true;
