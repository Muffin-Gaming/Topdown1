///scr_get_input
dkey = keyboard_check(ord("D"));
akey = keyboard_check(ord("A"));
wkey = keyboard_check(ord("W"));
skey = keyboard_check(ord("S"));
dash_key = keyboard_check_pressed(ord("C"));
attack_key = keyboard_check_pressed(ord("F"));

//axis
xaxis = (dkey - akey);
yaxis = (skey - wkey);

//chek for gamepad input
if (gamepad_is_connected(0)) {
gamepad_set_axis_deadzone(0, .35);
xaxis = gamepad_axis_value(0, gp_axislh);
yaxis = gamepad_axis_value(0, gp_axislv);
dash_key = gamepad_button_check_pressed(0,gp_face2);
attack_key = gamepad_button_check_pressed(0,gp_face3);
}

