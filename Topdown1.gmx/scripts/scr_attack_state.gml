///scr_attack_state

image_speed = .5;

switch (sprite_index) {
case splayer1u: 
sprite_index = splayer1ushoot;
vspd = 0;
break;

case splayer1r:
sprite_index = splayer1rshoot;
hspd = 0;
break;
case splayer1l:
sprite_index = splayer1lshoot;
hspd = 0;
break;

case splayer1d: 
sprite_index = splayer1dshoot;
vspd = 0;
break;

//when other directions are done, add them same as the others
}



if (image_index >= 0 and attacked == false) {
 var xx = 0;
 var yy = 0;
      switch (sprite_index) {
          case splayer1dshoot:
          xx = x;
          yy = y+40;
          break;
        
     
          case splayer1ushoot:
          xx = x;
          yy = y-30;
          break;
     
     
     
          case splayer1rshoot:
          xx = x+30;
          yy = y+10;
          break;
    
     
          case splayer1lshoot:
          xx = x-30;
          yy = y+10;
          break;
          
     }
     
    var damage = instance_create(xx, yy, obullet);
    damage.creator = id;
    attacked = true;

}




