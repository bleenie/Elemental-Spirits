/// @description Insert description here
// You can write your code in this editor

x = obj_player.x;
y = obj_player.y +10; 
;

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingdelay = firingdelay -1;
 recoil = max(0,recoil - 1);

if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
   recoil = 4;
   firingdelay = 5;
   with (instance_create_layer(x,y,"Bullet", Obullet))
   {
		speed = 25;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
   }

}

x = x-lengthdir_x(recoil,image_angle);
y = y-lengthdir_x(recoil,image_angle);
