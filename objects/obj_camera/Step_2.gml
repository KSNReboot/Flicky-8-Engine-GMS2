/// @description  Camera shifting.

    if(cam_handle == par_character)
    {
       // Looking up:
          if(cam_handle.Action == ActionLookup && cam_handle.TimerUp >= 120 && cam_handle.y > limit_top+view_yhalf)
          {
             cam_y_shift = max(-104, cam_y_shift-2);
          }
          else
       // Looking down:
          if(cam_handle.Action == ActionCrouch && cam_handle.TimerDown >= 120 && cam_handle.y < limit_bottom-view_yhalf)
          {
             cam_y_shift = min(104, cam_y_shift+2);
          }       
          else // Center camera.
          {
             cam_y_shift = max(0, abs(cam_y_shift)-2)*sign(cam_y_shift);
          }   
          
       // Pan the camera horizontally if the player is using the peelout move.
          if((cam_handle.Action == ActionPeelout && cam_handle.PeeloutTimer > 6) || cam_handle.PeeloutFlag == 1)
          {
             var _xdir = sign(cam_handle.XSpeed + cam_handle.AnimationDirection);
             if(cam_handle.AnimationDirection == 1)
             {
                cam_x_shift = scr_approach(cam_x_shift, 64, 2);
             }
             else
             if(cam_handle.AnimationDirection == -1)
             {
                cam_x_shift = scr_approach(cam_x_shift, -64, 2);
             }             
          }
          else
          {
             // Pan the camera horizontally if the player is using the peelout move.
          if((cam_handle.XSpeed >= 6 && global.Camera = 1 && cam_handle.XSpeed != 0 || cam_handle.XSpeed <= -6 && global.Camera = 1 && cam_handle.XSpeed != 0))
          {
             var _xdir = sign(cam_handle.XSpeed + cam_handle.AnimationDirection);
             if(cam_handle.AnimationDirection == 1)
             {
                cam_x_shift = scr_approach(cam_x_shift, 64, 2);
             }
             else
             if(cam_handle.AnimationDirection == -1)
             {
                cam_x_shift = scr_approach(cam_x_shift, -64, 2);
             }             
          }
          else
          {
             cam_x_shift = max(0, abs(cam_x_shift)-2)*sign(cam_x_shift);
          }
          }
    }

/// Camera movement.

 // Update borders.
    border_left   = (cam_x-8) - (cam_lag);
    border_right  = (cam_x+8) + (cam_lag);
    border_top    = (cam_y-32);
    border_bottom = (cam_y+32);
    
 // Set temp view center variables:
    var centerX, centerY;
    centerX = (__view_get( e__VW.WView, 0 ))/2;
    centerY = (__view_get( e__VW.HView, 0 ))/2;
    
 // Player camera handling:
    if(cam_handle == par_character)
    {
       // Move camera to the right.
          if(cam_handle.x > border_right && cam_handle.x <= (limit_right-centerX))
          {
             cam_x += min(abs(cam_handle.x-border_right), 16);
          }
       // Move camera to the left.
          if(cam_handle.x < border_left && cam_handle.x >= (limit_top-centerX))
          { 
             cam_x -= min(abs(cam_handle.x-border_left), 16);
          }       
          
       // Move camera up or down while in the air.
         if(cam_handle.Ground == false && cam_handle.Action != ActionDie)
         {
            if(cam_handle.y > border_bottom && cam_handle.y < limit_bottom-centerY)
            {
               cam_y += cam_handle.y-border_bottom;
            }
            if(cam_handle.y < border_top && cam_handle.y > limit_top+centerY)
            {
              cam_y -= border_top-cam_handle.y;
            }
         }
          
       // Move camera up or down while grounde.
         if(cam_handle.Ground == true && cam_handle.Action != ActionDie)
         {
            if(cam_handle.y != cam_y)
            {
               if(abs(cam_handle.y-cam_handle.yprevious) <= 6) 
               {
                  if(cam_handle.y > cam_y && cam_handle.y < limit_bottom-centerY)
                  {
                      cam_y += min(abs(cam_handle.y-cam_y), 6);
                  }    
                  if(cam_handle.y < cam_y && cam_handle.y > limit_top+centerY)
                  {
                     cam_y -= min(abs(cam_y-cam_handle.y), 6);
                  }
               }
               if(abs(cam_handle.y-cam_handle.yprevious) > 6)
               {
                  if(cam_handle.y > cam_y && cam_handle.y < limit_bottom-centerY)
                  {
                     cam_y += min(abs(cam_handle.y-cam_y), 16);
                  }                              
                  if(cam_handle.y < cam_y && cam_handle.y > limit_top+centerY)
                  {
                     cam_y -= min(abs(cam_y-cam_handle.y), 16);
                  }
               } 
            }
         }                    
    }
    
 // Target camera handling:    
    if(cam_handle != noone && cam_handle != par_character)
    {
       if(cam_handle.x != cam_x)
       {
          if(cam_handle.x > cam_x && cam_x <= limit_right-centerX)
          {
             cam_x += min(abs(cam_handle.x-cam_x), cam_speed);
          }
          if(cam_handle.x < cam_x && cam_x >= limit_left-centerX)
          {
             cam_x -= min(abs(cam_x-cam_handle.x), cam_speed);
          }
       }
       if(cam_handle.y != cam_y)
       {
          if(cam_handle.y > cam_y && cam_y < limit_bottom-centerY)
          {
             cam_y += min(abs(cam_handle.y-cam_y), cam_speed);
          }
          if(cam_handle.y < cam_y && cam_y > limit_top-centerY)
          {
             cam_y -= min(abs(cam_y-cam_handle.y), cam_speed);
          }
       }       
    }
  
 // Set position, floor the camera values to prevent jittering.
    x = floor(cam_x + cam_x_shift + random_range(-Camera_ShakeForce, Camera_ShakeForce));
    y = floor(cam_y + cam_y_shift + random_range(-Camera_ShakeForce, Camera_ShakeForce));


