if image_index = 7{
instance_destroy()
}
if place_meeting(x,y,obj_monitor){
 obj_monitor.DestroyParent = par_character
       if distance_to_object(instance_nearest(x,y,obj_monitor)) < 1{
       with instance_nearest(x,y,obj_monitor){
       instance_destroy()
       }
       }
       }
       if place_meeting(x,y,par_harmful){
        if distance_to_object(instance_nearest(x,y,par_harmful)) < 1{
       with instance_nearest(x,y,par_harmful){
       instance_destroy()
       }
       }
       }
              if par_character.Angle != 0 || par_character.Animation = "SPIKE"{
       instance_destroy()
       }

