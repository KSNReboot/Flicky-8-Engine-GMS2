if instance_exists(obj_tornado){
if obj_tornado.control = true{
      if(!Ground){
          AirTimer += 1;
          if(AirTimer > 10) { 
             AirTimer = 10;
          }
      }else if(Ground){
          AirTimer = 0;
          JumpHeightMod = true;          
      }

      // Set a check variable we need for the next step. Otherwise we'd perform a full jump underwater even if we release the jump button.
         var JSCheck;
                if(PhysicMode == "Normal")     { JSCheck = -4 }
                if(CharacterID != CharacterKnuckles){
                   if(PhysicMode == "Underwater") { JSCheck = -3 }     
                }else{
                   if(PhysicMode == "Underwater") { JSCheck = -2 }    
                }          
                       
         if(Ground == true && !scr_character_collision_top(x, y-6, Angle, spr_mask_big) && LockTunnel == 0){
                                                       
             // Set X and Y Speed:
                GSpeed = XSpeed;             
                XSpeed =  (dcos(RelativeAngle) * GSpeed) - (dsin(RelativeAngle) * -JumpStrength);
                YSpeed = -(dsin(RelativeAngle) * GSpeed) - (dcos(RelativeAngle) * -JumpStrength);   
                        
             // Make sure to disable that we're grounded:
                Ground        = false;                
                Angle         = 0;      
                RelativeAngle = 0;          
                                           
             // If we're rolling, enable the jump lock (which prevents us to change the direction and speed:
                if(Action = ActionRolling){
                   if(CharacterID != CharacterAmy){
                      JumpLock    = true;
                   }else{
                      AmyRollJump = true;
                   }
                }else{
                   JumpLock = false;
                }              
           
             // Finish the Jump by defining the current action...
                Action       = ActionJump;
              
             // Enable the shield usage while playing the jump sound.       
                ShieldUsable = true;
                if(CharacterID != CharacterAmy){
                   PlaySound(snd_character_jump, global.SFXVolume, 1, 1);  
                }else{
                   PlaySound(snd_character_jump, global.SFXVolume, 1.10, 1); 
                }
                          
             // Set the rendering speed of the animation
                RenderingSpeed = 1/max(5-abs(XSpeed), 1);//0.25+abs(GSpeed)/10;                
         }
         
}
         
}


      

