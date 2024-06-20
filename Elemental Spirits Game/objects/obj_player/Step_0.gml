<<<<<<< Updated upstream
/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 7F1D5033
/// @DnDInput : 4
/// @DnDArgument : "var" "right"
/// @DnDArgument : "value" "keyboard_check(ord("D"))"
/// @DnDArgument : "var_1" "left"
/// @DnDArgument : "value_1" "keyboard_check(ord("A"))"
/// @DnDArgument : "var_2" "up"
/// @DnDArgument : "value_2" "keyboard_check(vk_space)"
/// @DnDArgument : "var_3" "xinput"
/// @DnDArgument : "value_3" "right - left"
var right = keyboard_check(ord("D"));
var left = keyboard_check(ord("A"));
var up = keyboard_check(vk_space);
var xinput = right - left;

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 4059E2FD
/// @DnDArgument : "xvel" "xinput * player_speed"
/// @DnDArgument : "object" "obj_block"
/// @DnDSaveInfo : "object" "obj_block"
move_and_collide(xinput * player_speed, 0, obj_block,4,0,0,-1,-1);
=======
/// @description Insert description here
// You can write your code in this editor

//get player keyboard input 
 key_left = keyboard_check(vk_left);
 key_right = keyboard_check(vk_right);
 key_jump = keyboard_check_pressed(vk_space);
 
 //movement
 var _move = key_right - key_left; 
 
 hsp = _move * walksp;
 vsp = vsp +grv;
 
 if(place_meeting(x,y+1,obj_wall)) && (key_jump)
 {
	vsp = -7;
 }
 
//horizontal collision 
if (place_meeting(x+hsp,y,obj_wall))
{
	while (!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x = x + sign(hsp);
		
	}
	
	hsp = 0;
}
  
 x = x + hsp;
 //vertical collision 
if (place_meeting(x,y+vsp,obj_wall))
{
	while (!place_meeting(x,y+sign(vsp),obj_wall))
	{
		y = y + sign(vsp);
		
	}
	
	vsp = 0;
}
  
 y = y + vsp;
>>>>>>> Stashed changes
