/// @description scr_character_handle_tornado
function scr_character_handle_tornado() {
	//Tornado Script
	if instance_exists(obj_tornado){
	if scr_character_collision_bottom_object(x,y,Angle,spr_mask_big,obj_tornado){
	obj_tornado.control = true
	}
	else
	obj_tornado.control = false
	}



}
