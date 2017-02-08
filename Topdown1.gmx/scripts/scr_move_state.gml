///scr_move_state
scr_get_input();


//vspd hspd
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

// Move

if (attack_key) {
image_index = 0;
state = scr_fire_state;
}
//get direction
dir = point_direction(0, 0, xaxis, yaxis);

//length
if (xaxis == 0 and yaxis = 0) {
len = 0;
} else {
len = spd;
}

//sprite control
image_speed = .5
if (len == 0) image_index = 0;

if (vspd > 0) {
sprite_index = splayer1d;
} else if (vspd < 0) {
sprite_index = splayer1u;
}

if (hspd > 0) {
sprite_index = splayer1r;
} else if (hspd < 0) {
sprite_index = splayer1l;
}




