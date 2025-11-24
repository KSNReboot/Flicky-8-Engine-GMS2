/// @description  scr_create_dummy_effect(sprite, image speed, x, y, loop times, depth)
/// @param sprite
/// @param  image speed
/// @param  x
/// @param  y
/// @param  loop times
/// @param  depth
function scr_create_dummy_effect(argument0, argument1, argument2, argument3, argument4, argument5) {
	//  Creates a dummy effect.

	    Dummy = instance_create(argument2, argument3, obj_effect_dummy){
	            Dummy.sprite_index = argument0;
	            Dummy.image_speed  = argument1;
	            Dummy.LoopTimes    = argument4;
	            Dummy.depth        = argument5;
	    }




}
