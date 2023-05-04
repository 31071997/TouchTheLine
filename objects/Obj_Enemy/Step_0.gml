/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 237DB0FC
/// @DnDArgument : "obj" "Obj_player"
/// @DnDSaveInfo : "obj" "Obj_player"
var l237DB0FC_0 = false;
l237DB0FC_0 = instance_exists(Obj_player);
if(l237DB0FC_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 77CF4A49
	/// @DnDParent : 237DB0FC
	/// @DnDArgument : "speed" "random(velocity)"
	/// @DnDArgument : "type" "2"
	vspeed = random(velocity);

	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Direction
	/// @DnDVersion : 1
	/// @DnDHash : 18C6F598
	/// @DnDParent : 237DB0FC
	/// @DnDArgument : "direction" "Obj_player"
	gravity_direction = Obj_player;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 29B9A582
/// @DnDArgument : "angle" "Obj_player.direction"
image_angle = Obj_player.direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4D98907F
/// @DnDArgument : "var" "shoot"
if(shoot == 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 726AF4C5
	/// @DnDParent : 4D98907F
	instance_destroy();

	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 50D3956B
	/// @DnDParent : 4D98907F
	game_restart();
}