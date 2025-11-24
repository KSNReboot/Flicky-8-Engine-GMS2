/// @description  Movement.
 // Exit if player doesn't exist.
    if(!instance_exists(par_character)) exit;
 if par_character.Shield = 2 || par_character.CharacterState = CharacterSuper || par_character.CharacterState = CharacterHyper{
    var player;
    player = instance_nearest(x, y, par_character);
    var DistanceToPlayer = distance_to_object(player);
    var xx, yy;
    xx = sign(player.x-x);
    yy = sign(player.y-y);
    
    if DistanceToPlayer < 80{
    hspeed += xx*(0.1875+(0.75*(sign(hspeed)!=xx)));
    vspeed += yy*(0.1875+(0.75*(sign(vspeed)!=yy))); 
    speed   = scr_clamp(speed, -64, 64);
}
}

    /// Motion (Dropped)
    if IsAttracted = 0{
 // Apply Motion:
    if(InMotion == true)
    {
       if(!place_meeting(x+XSpeed, y, par_collision_solid))
       {
          x += XSpeed;
       }
       else
       {
          XSpeed *= -0.25;
       }
       if(!place_meeting(x, y+YSpeed, par_collision_solid))
       {
          y += YSpeed;
       }
       else
       {
          YSpeed *= -0.75;
       }  YSpeed += 0.09375  
 
       // Decrease timer:
          if(RingTimer > 0)
          {
             RingTimer -= 1
          }
          else instance_destroy();       
    }   

 // Destroy rings outside the view.
    if(InMotion == true)
    {
       if(x < __view_get( e__VW.XView, 0 )-sprite_width || x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+sprite_width || y < __view_get( e__VW.YView, 0 )-sprite_height || y > __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+sprite_height)
       {
          instance_destroy();
          }
       }
    }

    

/// Animation Speed.
   if(InMotion == 0){
      image_index = global.ObjectTime div 120;
   }
   
   if(InMotion == 1 && RingTimer > 120){
      image_index = global.ObjectTime div 80;
   }
      
   if(InMotion && RingTimer < 120){   
      image_index = global.ObjectTime div 200;   
   }

