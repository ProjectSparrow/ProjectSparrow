///scr_highlight_axis(button, device, device_type, state, value)

var button = argument0;
var device = argument1;
var device_type = argument2;
var state = argument3;
var value = argument4;

if (button == h_axis_button)
{
    axis_x = value;
    if (instance_exists(oGamepadRings) && value != 0)
    {
        oGamepadRings.device = device;
    }
}
else if (button == v_axis_button)
{
    axis_y = value;
    if (instance_exists(oGamepadRings) && value != 0)
    {
        oGamepadRings.device = device;
    }
}
