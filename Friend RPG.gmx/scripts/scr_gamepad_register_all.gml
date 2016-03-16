/// scr_gamepad_register_all()

/* Registers all gamepad slots.  oInputWatcher will then check for input 
   on all connected gamepad. */

for (var i = 0; i < gamepad_get_device_count(); i++)
{
    scr_gamepad_register(i);
}
