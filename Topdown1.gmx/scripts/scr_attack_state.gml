///scr_attack_state

image_speed = 2;

switch (sprite_index) {
case spr_joey_down: 
sprite_index = spr_joey_attack_down;
vspd = 0;
break;

case spr_joey_left:
sprite_index = spr_joey_attack_left;
hspd = 0;
break;

case spr_joey_right:
sprite_index = spr_joey_attack_right;
hspd = 0;
break;

case spr_joey_up: 
sprite_index = spr_joey_attack_up;
vspd = 0;
break;

//when other directions are done, add them same as the others
}



if (image_index >= 3 and attacked == false) {
 var xx = 0;
 var yy = 0;
      switch (sprite_index) {
          case spr_joey_attack_down:
          xx = x;
          yy = y+40;
          break;
        
     
          case spr_joey_attack_up:
          xx = x;
          yy = y-30;
          break;
     
     
     
          case spr_joey_attack_right:
          xx = x+30;
          yy = y+10;
          break;
    
     
          case spr_joey_attack_left:
          xx = x-30;
          yy = y+10;
          break;
          
     }
     
    var damage = instance_create(xx, yy, obj_damage);
    damage.creator = id;
    attacked = true;

}




