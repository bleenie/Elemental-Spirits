/// @description Insert description here
// You can write your code in this editor
 hsp = 0; //horizontal speed
 vsp = 0; //vertical speed 
 grv = 0.3 //gravity
 walksp = 4; // walk speed
 
 key_left = keyboard_check(vk_left);
 key_right = keyboard_check(vk_right);
 key_jump = keyboard_check_pressed(vk_space);
  
x = x + hsp;