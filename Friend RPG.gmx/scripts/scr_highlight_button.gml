///scr_highlight_button(button, device, device_type, button_state)

var button = argument0;
var device = argument1;
var device_type = argument2;
var button_state = argument3;

if (button == button_mapping && button_state == BUTTON_STATES.PRESSED)
{
    is_pressed = true;
    image_blend = blend_color;
    
    if (instance_exists(oGamepadRings))
    {
        oGamepadRings.device = device;
    }
}
else if (button == button_mapping && button_state == BUTTON_STATES.RELEASED)
{
    is_pressed = false;
    image_blend = c_white;
}
else if (button == button_mapping && button_state == BUTTON_STATES.LONG)
{
    image_blend = blend_color_long;
}
