/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
/// @DnDVersion : 1.1
/// @DnDHash : 2489304C
/// @DnDArgument : "obj" "Obj_player"
/// @DnDSaveInfo : "obj" "Obj_player"
var l2489304C_0 = collision_line(0, 0, 0, 0, Obj_player, true, 1);
if((l2489304C_0))
{
	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 5A8B7B7F
	/// @DnDParent : 2489304C
	game_restart();
}