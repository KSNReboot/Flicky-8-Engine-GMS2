/// @description scr_character_collision_right(x, y, angle, mask); 
/// @param x
/// @param  y
/// @param  angle
/// @param  mask
function scr_character_collision_right(argument0, argument1, argument2, argument3) {
	// Returns when the right sensor has collided.
   
	   // Setup temporal masks:
	      TempMask   = (mask_index);
	      mask_index = (argument3);
      
	   // Test the Collision:
	      ColTest    = scr_character_collision(floor(argument0 + cos(degtorad(argument2)) * 11), 
	                                           floor(argument1 - sin(degtorad(argument2)) * 11), 
	                                           Layer);
      
	   // Return to the old mask:
	      mask_index = TempMask;
   
	   // Return:
	      return (ColTest);





}
