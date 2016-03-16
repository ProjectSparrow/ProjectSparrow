///scr_destroy_gamepad()

/* Deinitializes all the gamepad events and data stores */

scr_event_destroy(global.gamepad_registered_event);
scr_event_destroy(global.gamepad_lost_event);

scr_event_destroy(gp_face1);
scr_event_destroy(gp_face2);
scr_event_destroy(gp_face3);
scr_event_destroy(gp_face4);
scr_event_destroy(gp_shoulderl);
scr_event_destroy(gp_shoulderlb);
scr_event_destroy(gp_shoulderr);
scr_event_destroy(gp_shoulderrb);
scr_event_destroy(gp_select);
scr_event_destroy(gp_start);
scr_event_destroy(gp_stickl);
scr_event_destroy(gp_stickr);
scr_event_destroy(gp_padu);
scr_event_destroy(gp_padd);
scr_event_destroy(gp_padl);
scr_event_destroy(gp_padr);
scr_event_destroy(gp_axislh);
scr_event_destroy(gp_axislv);
scr_event_destroy(gp_axisrh);
scr_event_destroy(gp_axisrv);
scr_event_destroy(GAMEPAD.ANY);

if (ds_exists(registered_controllers, ds_type_list))
{
    ds_list_destroy(registered_controllers);
}

if (ds_exists(gamepad_current_values, ds_type_map))
{
    map_2D_destroy(gamepad_current_values);
}

if (ds_exists(registered_controllers, ds_type_map))
{
    map_2D_destroy(gamepad_previous_values);
}

if (ds_exists(gamepad_pressed_durations, ds_type_map))
{
    map_2D_destroy(gamepad_pressed_durations);
}
