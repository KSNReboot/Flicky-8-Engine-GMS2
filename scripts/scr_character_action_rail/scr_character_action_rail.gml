function scr_character_action_rail() {
	if Action != ActionDie{
	if scr_character_collision_bottom_object(x,y,Angle,spr_mask_big,par_rail) && AnimationDirection = 1{
	if !CheckSound(snd_rain_bowring) && !instance_exists(obj_grindspark){
	PlaySound(snd_rail_contact,global.SFXVolume,1,1)
	instance_create(x,y,obj_grindspark)
	}
	if XSpeed < 5.5{
	XSpeed = 5.5
	}
	Action = ActionRail
	Animation = "RAIL"
	}
	else
	if !scr_character_collision_bottom_object(x,y,Angle,spr_mask_big,par_rail) && Action = ActionRail && AnimationDirection = 1{
	if CheckSound(snd_rail_contact) = true{
	StopSound(snd_rail_contact)
	}
	Action = ActionJump
	}
	if scr_character_collision_bottom_object(x,y,Angle,spr_mask_big,par_rail) && AnimationDirection = -1{
	if !instance_exists(obj_grindspark){
	PlaySound(snd_rail_contact,global.SFXVolume,1,1)
	instance_create(x,y,obj_grindspark)
	}
	if XSpeed > -5.5{
	XSpeed = -5.5
	}
	Action = ActionRail
	Animation = "RAIL"
	}
	else
	if !scr_character_collision_bottom_object(x,y,Angle,spr_mask_big,par_rail) && Action = ActionRail && AnimationDirection = -1{
	if CheckSound(snd_rail_contact) = true{
	StopSound(snd_rail_contact)
	}
	Action = ActionJump
	}
	}



}
