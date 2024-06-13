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