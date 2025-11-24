/// @description  scr_animation_data_ray()
function scr_animation_data_ray() {
	//  All of Ray's Animations are stored here:
	// I made it like in Gmate
	  // Idle Animation (Standing)
	     if(Animation = "IDLE"){
	        AnimationSprite      = spr_ray;
	        AnimationStart       = 0;
	        AnimationEnd         = 0;
	        AnimationLoop        = 0;
	        AnimationSpeed       = 0;
	        AnimationRepeat      = 0;
	        AnimationRepeatTimes = 0;
	        AnimationLinkedTo    = "NONE";      
	     } 
        
	  // Idle Animation (Foot tapping)      
	     if(Animation = "IDLE_2"){
	        AnimationSprite      = spr_ray;     
	        AnimationStart       = 124;
	        AnimationEnd         = 178;
	        AnimationLoop        = 124;  
	        AnimationSpeed       = 0.10;
	        AnimationRepeat      = 1;
	        AnimationRepeatTimes = -1;
	        AnimationLinkedTo    = "NONE";       
	     }  
	        // Spindash Animation            
	     if(Animation = "SPINDASH"){
	        AnimationSprite      = spr_ray;         
	        AnimationStart       = 197;
	        AnimationEnd         = 212;
	        AnimationLoop        = 197;
	        AnimationSpeed       = 0.8;
	        AnimationRepeat      = 1;
	        AnimationRepeatTimes = -1;
	        AnimationLinkedTo    = "NONE";       
	     }   
	  // Lookup Animation   
	     if(Animation = "LOOK_UP"){
	        AnimationSprite      = spr_ray;     
	        AnimationStart       = 45;
	        AnimationEnd         = 50;
	        AnimationLoop        = 50;
	        AnimationSpeed       = 0.15;
	        AnimationRepeat      = 0;
	        AnimationRepeatTimes = 0;
	        AnimationLinkedTo    = "NONE";       
	     } 
        
	  // Crouch Animation   
	     if(Animation = "CROUCH"){
	        AnimationSprite      = spr_ray;     
	        AnimationStart       = 41;
	        AnimationEnd         = 44;
	        AnimationLoop        = 41;
	        AnimationSpeed       = 0.15;
	        AnimationRepeat      = 0;
	        AnimationRepeatTimes = 0;
	        AnimationLinkedTo    = "NONE";       
	     }  
             
	  // Walk Animation            
	     if(Animation = "WALK"){
	        AnimationSprite      = spr_ray;
	        AnimationStart       = 6;
	        AnimationEnd         = 17;
	        AnimationLoop        = 0;
	        AnimationSpeed       = 0.125;
	        AnimationRepeat      = 1;
	        AnimationRepeatTimes = -1;
	        AnimationLinkedTo    = "NONE";       
	     }
     
	  // Run Animation            
	     if(Animation = "RUN"){
	        AnimationSprite      = spr_ray;         
	        AnimationStart       = 28;
	        AnimationEnd         = 35;
	        AnimationLoop        = 28;
	        AnimationSpeed       = 0;
	        AnimationRepeat      = 1;
	        AnimationRepeatTimes = -1;
	        AnimationLinkedTo    = "NONE";               
	     }
	  // Push Animation            
	     if(Animation = "PUSH"){
	        AnimationSprite      = spr_ray;         
	        AnimationStart       = 187;
	        AnimationEnd         = 196;
	        AnimationLoop        = 187;
	        AnimationSpeed       = .12; // Changing this won't do much for you, check the pushing script.
	        AnimationRepeat      = 1;
	        AnimationRepeatTimes = -1;
	        AnimationLinkedTo    = "NONE";       
	     }
                    
	  // Jump/Roll Animation            
	     if(Animation = "ROLL"){
	        AnimationSprite      = spr_ray;         
	        AnimationStart       = 61;
	        AnimationEnd         = 76;
	        AnimationLoop        = 61;
	        AnimationSpeed       = 0.2;
	        AnimationRepeat      = 1;
	        AnimationRepeatTimes = -1;
	        AnimationLinkedTo    = "NONE"; 
	     }  

	  // Skidding Animation            
	     if(Animation = "SKID"){
	        AnimationSprite      = spr_ray;         
	        AnimationStart       = 52;
	        AnimationEnd         = 60;
	        AnimationLoop        = 59;
	        AnimationSpeed       = 0.50;
	        AnimationRepeat      = 0;
	        AnimationRepeatTimes = 3;
	        AnimationLinkedTo    = "NONE";
	     }
	  // Spring Animation            
	     if(Animation = "SPRING"){
	        AnimationSprite      = spr_ray;         
	        AnimationStart       = 110;
	        AnimationEnd         = 111;
	        AnimationLoop        = 110;
	        AnimationSpeed       = 0;
	        AnimationRepeat      = 0;
	        AnimationRepeatTimes = 0;
	        AnimationLinkedTo    = "NONE";
	     }
           
	  // Edge wobble 1 Animation            
	     if(Animation = "EDGEWOBBLE"){
	        AnimationSprite      = spr_ray;         
	        AnimationStart       = 89;
	        AnimationEnd         = 96;
	        AnimationLoop        = 89;
	        AnimationSpeed       = 0.15;
	        AnimationRepeat      = -1;
	        AnimationRepeatTimes = -1;
	        AnimationLinkedTo    = "NONE";
	     }
           

	  // Hurt Animation            
	     if(Animation = "HURT"){
	        AnimationSprite      = spr_ray;         
	        AnimationStart       = 105;
	        AnimationEnd         = 109;
	        AnimationLoop        = 108;
	        AnimationSpeed       = 0.10;
	        AnimationRepeat      = 1;
	        AnimationRepeatTimes = 0;
	        AnimationLinkedTo    = "NONE";
	     }
    
	  // Goal Animation            
	     if(Animation = "GOAL"){
	        AnimationSprite      = spr_ray;         
	        AnimationStart       = 0;
	        AnimationEnd         = 0;
	        AnimationLoop        = 0;
	        AnimationSpeed       = 0.10;
	        AnimationRepeat      = -1;
	        AnimationRepeatTimes = -1;
	        AnimationLinkedTo    = "NONE";
	     }
    
	  // Breath Animation            
	     if(Animation = "BREATH"){
	        AnimationSprite      = spr_ray ;         
	        AnimationStart       = 242;
	        AnimationEnd         = 242;
	        AnimationLoop        = 242;
	        AnimationSpeed       = 0;
	        AnimationRepeat      = 0;
	        AnimationRepeatTimes = 0;
	        AnimationLinkedTo    = "NONE";
	     }
                          
	  // Die Animation            
	     if(Animation = "DIE"){
	        AnimationSprite      = spr_ray;     
	        if(HasDrowned == false){   
	           AnimationStart       = 242;        
	           AnimationEnd         = 242;
	           AnimationLoop        = 242;
	           AnimationSpeed       = 0;
	           AnimationRepeat      = 0;
	           AnimationRepeatTimes = 0; 
	        }else{
	           AnimationStart       = 243;
	           AnimationEnd         = 243;
	           AnimationLoop        = 243;
	           AnimationSpeed       = 0;
	           AnimationRepeat      = 0;
	           AnimationRepeatTimes = 0;        
	        }       
	        AnimationLinkedTo    = "NONE";
	     }
	  // Breath Animation            
	     if(Animation = "SPIKE"){
	        AnimationSprite      = spr_ray;         
	        AnimationStart       = 0;
	        AnimationEnd         = 0;
	        AnimationLoop        = 0;
	        AnimationSpeed       = 0;
	        AnimationRepeat      = 0;
	        AnimationRepeatTimes = 0;
	        AnimationLinkedTo    = "NONE";
	     }



}
