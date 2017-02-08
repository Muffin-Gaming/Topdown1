///scr_fire_state
if (sprite_index = splayer1u){
var dir = ((x+1) and  (y-15));
} else if (sprite_index =  splayer1r) {
var dir = ((x+15) and (y-1));
} else if (sprite_index =  splayer1l) {
var dir = ((x-15) and (y-1));
} else if (sprite_index = splayer1d) { 
var dir = ((x+1) and (y+15));
}
fire = (attack_key and alarm[0] <=0);

if (fire) {
alarm[0]= shot_delay;

var temp_dir = dir+random_range(-vari, vari);
var temp_x = x+lengthdir_x(48, temp_dir);
var temp_y = y+lengthdir_y(48, temp_dir);
var start_x = temp_x;
var start_y = temp_y;
var collision = (position_meeting(temp_x, temp_y, ocollision)); // || position_meeting(temp_x, temp_y, obj_target));
while (!ocollision and distance_to_point(temp_x, temp_y) < room_width) {
temp_x += lengthdir_x(4, temp_dir);
temp_y += lengthdir_y(4, temp_dir);
collision = (position_meeting(temp_x, temp_y, ocollision)); // || position_meeting(temp_x, temp_y, obj_target));
}
var shot = instance_create(temp_x, temp_y, obullet);
shot.start_x = start_x;
shot.start_y = start_y;
} 
