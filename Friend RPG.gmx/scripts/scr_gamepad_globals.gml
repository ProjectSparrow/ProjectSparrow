///scr_gamepad_globals()

/* Initializes all the enums and global options for the gamepad */

global.gamepad_trigger_unregister_on_disconnect = false;  // Should controllers be unregistered when disconnected?
global.gamepad_trigger_axis_on_0 = false;  // should the axis events fire on 0 values?
global.gamepad_record_previous_values = true; // should previous values for keys be stored?
global.gamepad_enable_long_press = true;  // should long presses be enabled?
global.long_press_duration = 1000; //in milliseconds
global.gamepad_support_any_button = false;  // fire the event for any gamepad button changing state (button = GAMEPAD.ANY) (Any button is always fire after defined buttons)
global.gamepad_last_button = -1;  // The last button that has been pressed

// contains misc useful data
enum GAMEPAD {
    ANY = gp_axisrv + 1, // any button is pressed
}

// add any other input types your game supports.
enum DEVICE_TYPE {
    GAMEPAD,
    KEYBOARD
}

enum BUTTON_STATES {
    PRESSED = 1,
    DOWN = 2,
    RELEASED = 3,
    LONG = 4,
    AXIS_H = 5,
    AXIS_V = 6
}

enum PS4 {
     X = gp_face1,
     O = gp_face2,
     SQUARE = gp_face3,
     TRIANGLE = gp_face4,
     L1 = gp_shoulderl,
     L2 = gp_shoulderlb,
     R1 = gp_shoulderr,
     R2 = gp_shoulderrb,
     SHARE = gp_select,
     OPTIONS = gp_start,
     L3 = gp_stickl,
     R3 = gp_stickr,
     UP = gp_padu,
     DOWN = gp_padd,
     LEFT = gp_padl,
     RIGHT = gp_padr,
     L_STICK_H = gp_axislh,
     L_STICK_V = gp_axislv,
     R_STICK_H = gp_axisrh,
     R_STICK_V = gp_axisrv
}

enum PS3 {
     X = gp_face1,
     O = gp_face2,
     SQUARE = gp_face3,
     TRIANGLE = gp_face4,
     L1 = gp_shoulderl,
     L2 = gp_shoulderlb,
     R1 = gp_shoulderr,
     R2 = gp_shoulderrb,
     SELECT = gp_select,
     START = gp_start,
     L3 = gp_stickl,
     R3 = gp_stickr,
     UP = gp_padu,
     DOWN = gp_padd,
     LEFT = gp_padl,
     RIGHT = gp_padr,
     L_STICK_H = gp_axislh,
     L_STICK_V = gp_axislv,
     R_STICK_H = gp_axisrh,
     R_STICK_V = gp_axisrv
}

enum XBOXONE {
     A = gp_face1,
     B = gp_face2,
     X = gp_face3,
     Y = gp_face4,
     LB = gp_shoulderl,
     LT = gp_shoulderlb,
     RB = gp_shoulderr,
     RT = gp_shoulderrb,
     CHANGE_VIEW = gp_select,
     MENU = gp_start,
     L3 = gp_stickl,
     R3 = gp_stickr,
     UP = gp_padu,
     DOWN = gp_padd,
     LEFT = gp_padl,
     RIGHT = gp_padr,
     L_STICK_H = gp_axislh,
     L_STICK_V = gp_axislv,
     R_STICK_H = gp_axisrh,
     R_STICK_V = gp_axisrv
}

enum XBOX360 {
     A = gp_face1,
     B = gp_face2,
     X = gp_face3,
     Y = gp_face4,
     LB = gp_shoulderl,
     LT = gp_shoulderlb,
     RB = gp_shoulderr,
     RT = gp_shoulderrb,
     BACK = gp_select,
     START = gp_start,
     L3 = gp_stickl,
     R3 = gp_stickr,
     UP = gp_padu,
     DOWN = gp_padd,
     LEFT = gp_padl,
     RIGHT = gp_padr,
     L_STICK_H = gp_axislh,
     L_STICK_V = gp_axislv,
     R_STICK_H = gp_axisrh,
     R_STICK_V = gp_axisrv
}

instance_create(0,0,oInputWatcher);
