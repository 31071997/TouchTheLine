/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 1D46BC76
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 22BFF832
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 2D5C9D91
var l2D5C9D91_0;
l2D5C9D91_0 = mouse_check_button(mb_left);
if (l2D5C9D91_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1299E15E
	/// @DnDParent : 2D5C9D91
	/// @DnDArgument : "var" "stop"
	/// @DnDArgument : "op" "3"
	if(stop <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4CC7678F
		/// @DnDParent : 1299E15E
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "Obj_Spark"
		/// @DnDArgument : "layer" ""LayerSpark""
		/// @DnDSaveInfo : "objectid" "Obj_Spark"
		instance_create_layer(x, y, "LayerSpark", Obj_Spark);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 73F85BD3
		/// @DnDParent : 1299E15E
		/// @DnDArgument : "expr" "3"
		/// @DnDArgument : "var" "stop"
		stop = 3;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 21AE3168
	/// @DnDParent : 2D5C9D91
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "stop"
	stop += -1;
}