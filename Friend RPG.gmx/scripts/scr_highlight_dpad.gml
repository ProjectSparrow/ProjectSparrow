///scr_highlight_dpad(button, device, device_type, button_state)

var button = argument0;
var device = argument1;
var device_type = argument2;
var button_state = argument3;

if (button_state == BUTTON_STATES.PRESSED)
{
    switch(button)
    {
        case XBOX360.UP:
            dir |= up;
            break;
        case XBOX360.DOWN:
            dir |= down;
            break;
        case XBOX360.LEFT:
            dir |= left;
            break;
        case XBOX360.RIGHT:
            dir |= right;
            break;
    }
}
else if (button_state == BUTTON_STATES.RELEASED)
{
    switch(button)
    {
        case XBOX360.UP:
            dir ^= up;
            break;
        case XBOX360.DOWN:
            dir ^= down;
            break;
        case XBOX360.LEFT:
            dir ^= left;
            break;
        case XBOX360.RIGHT:
            dir ^= right;
            break;
    }
}
