function scr_character_action_spike() {
	if (Animation = "ROLL" || Action = ActionRolling || YSpeed > 0) && (scr_character_collision_bottom_object(x, y+6, Angle,spr_mask_big,par_spike)){
	Action = ActionBouse
	}
	if Action = ActionBouse{
	  if AnimationDirection = 1{
	  PlaySound(snd_character_spike, global.SFXVolume, 1, 1);  
	  XSpeed = 2
	  YSpeed  = max(-7.5, YSpeed*-1); 
	  Ground  = false;     
	  JumpHeightMod = false;  
	Animation = "SPIKE" 
	}
	  if AnimationDirection = -1{
	  PlaySound(snd_character_spike, global.SFXVolume, 1, 1);  
	   XSpeed = -2
	  YSpeed  = max(-7.5, YSpeed*-1); 
	  Ground  = false;     
	  JumpHeightMod = false;  
	Animation = "SPIKE" 
	}
	}
	if Ground = false && Action = ActionBouse{
	Action = ActionNormal
	}



}
