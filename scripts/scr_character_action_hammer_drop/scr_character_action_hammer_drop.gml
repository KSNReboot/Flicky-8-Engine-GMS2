function scr_character_action_hammer_drop() {
	 if(!Ground && (Action = ActionJump && Animation = "ROLL") && KeyAction_Pressed && ShieldUsable == true && !scr_character_collision_bottom(x,y,0,spr_mask_big) && Action != ActionRail)
	       {
	          if(KeyAction_Pressed)
	          { 
	          Action = ActionDrop
	             XSpeed       = 0;
	             YSpeed       = 8;
	             ShieldState  = 1;
	             ShieldUsable = false;    
	             JumpLock     = false; 
	             PlaySound(snd_character_hammer_drop, global.SFXVolume, 1, 1); 
	          }
	       }   
	       if(ShieldState == 1 && Ground && Action = ActionDrop)
	       {
	       if scr_character_collision_bottom_object(x,y,0,spr_mask_big,obj_monitor){
	 obj_monitor.DestroyParent = par_character
	       with instance_nearest(x,y,obj_monitor){
	       instance_destroy()
	       }
	       }
	       obj_camera.Camera_ShakeScreen   = true;
	       obj_camera.Camera_ShakeDuration = 20;
	                  obj_camera.Camera_ShakeForce    = 6;
	 instance_create(x,y,obj_mighty_drop_left)
	  instance_create(x,y,obj_mighty_drop_right)
	                 Ground                 = false;                  
	          if(PhysicMode != "Underwater")
	          {
	             YSpeed = -(dsin(RelativeAngle) * GSpeed) - (dcos(RelativeAngle) * 1.5);
	          }
	          else
	          {
	             YSpeed = -(dsin(RelativeAngle) * GSpeed) - (dcos(RelativeAngle) * 1.5/2);          
	          }
	          jump_completed         = false;   
	          JumpLock              = false;   
	          ShieldState           = 2;
	          ShieldUsable          = true;
	          }
	       if Ground && ShieldState = 2 && Action = ActionDrop{
	       ShieldState = 0
	       Action = ActionNormal
	       }



}
