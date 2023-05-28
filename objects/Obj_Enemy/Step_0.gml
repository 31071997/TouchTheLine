/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 237DB0FC
/// @DnDArgument : "obj" "Obj_player"
/// @DnDSaveInfo : "obj" "Obj_player"
var l237DB0FC_0 = false;
l237DB0FC_0 = instance_exists(Obj_player);
if(l237DB0FC_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 12614821
	/// @DnDParent : 237DB0FC
	/// @DnDArgument : "direction" "random(y)"
	/// @DnDArgument : "direction_relative" "1"
	direction += random(y);

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
	/// @DnDArgument : "direction" "random(y)"
	/// @DnDArgument : "direction_relative" "1"
	gravity_direction += random(y);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 75D048BF
	/// @DnDParent : 237DB0FC
	/// @DnDArgument : "var" "varFire"
	/// @DnDArgument : "value" "10"
	if(varFire == 10)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 70DB63DF
		/// @DnDParent : 75D048BF
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "Obj_fire"
		/// @DnDArgument : "layer" ""LayerSpark""
		/// @DnDSaveInfo : "objectid" "Obj_fire"
		instance_create_layer(x, y, "LayerSpark", Obj_fire);
	}
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