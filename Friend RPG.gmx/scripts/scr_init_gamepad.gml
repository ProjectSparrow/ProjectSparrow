///scr_init_gamepad()

/* Initializes all the different button events that can be triggered.  
   This should only be called from oInputWatcher. */

global.gamepad_registered_event = scr_event_create("Gamepad_registered");
global.gamepad_lost_event = scr_event_create("Gamepad_lost");

scr_event_create(gp_face1);
scr_event_create(gp_face2);
scr_event_create(gp_face3);
scr_event_create(gp_face4);
scr_event_create(gp_shoulderl);
scr_event_create(gp_shoulderlb);
scr_event_create(gp_shoulderr);
scr_event_create(gp_shoulderrb);
scr_event_create(gp_select);
scr_event_create(gp_start);
scr_event_create(gp_stickl);
scr_event_create(gp_stickr);
scr_event_create(gp_padu);
scr_event_create(gp_padd);
scr_event_create(gp_padl);
scr_event_create(gp_padr);
scr_event_create(gp_axislh);
scr_event_create(gp_axislv);
scr_event_create(gp_axisrh);
scr_event_create(gp_axisrv);
scr_event_create(GAMEPAD.ANY);

// holds the indexes of registered controllers
registered_controllers = ds_list_create();

// holds all the previous values for each button
gamepad_current_values = ds_map_create();
gamepad_previous_values = ds_map_create();

// holds the times the holds started
gamepad_pressed_durations = ds_map_create();
