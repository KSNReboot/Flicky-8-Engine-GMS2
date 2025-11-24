/// @description  scr_animation_data_mighty()
function scr_animation_data_mighty() {
	//  All of Mighty's Animations are stored here:
 
	  // Idle Animation (Standing)
	     if(Animation = "IDLE"){
	        AnimationSprite      = spr_mighty_idle;
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
	        AnimationSprite      = spr_mighty_idle;     
	        AnimationStart       = 0;
	        AnimationEnd         = 4;
	        AnimationLoop        = 3;  
	        AnimationSpeed       = 0.10;
	        AnimationRepeat      = 1;
	        AnimationRepeatTimes = -1;
	        AnimationLinkedTo    = "NONE";       
	     }  
	        // Spindash Animation            
	     if(Animation = "SPINDASH"){
	        AnimationSprite      = spr_mighty_spindash;         
	        AnimationStart       = 0;
	        AnimationEnd         = 5;
	        AnimationLoop        = 0;
	        AnimationSpeed       = 0.8;
	        AnimationRepeat      = 1;
	        AnimationRepeatTimes = -1;
	        AnimationLinkedTo    = "NONE";       
	     }   
	  // Lookup Animation   
	     if(Animation = "LOOK_UP"){
	        AnimationSprite      = spr_mighty_lookup;     
	        AnimationStart       = 0;
	        AnimationEnd         = 1;
	        AnimationLoop        = 1;
	        AnimationSpeed       = 0.15;
	        AnimationRepeat      = 0;
	        AnimationRepeatTimes = 0;
	        AnimationLinkedTo    = "NONE";       
	     } 
        
	  // Crouch Animation   
	     if(Animation = "CROUCH"){
	        AnimationSprite      = spr_mighty_crouch;     
	        AnimationStart       = 0;
	        AnimationEnd         = 1;
	        AnimationLoop        = 1;
	        AnimationSpeed       = 0.15;
	        AnimationRepeat      = 0;
	        AnimationRepeatTimes = 0;
	        AnimationLinkedTo    = "NONE";       
	     }  
             
	  // Walk Animation            
	     if(Animation = "WALK"){
	        AnimationSprite      = spr_mighty_walk;
	        AnimationStart       = 0;
	        AnimationEnd         = 5;
	        AnimationLoop        = 0;
	        AnimationSpeed       = 0.125;
	        AnimationRepeat      = 1;
	        AnimationRepeatTimes = -1;
	        AnimationLinkedTo    = "NONE";       
	     }
     
	  // Run Animation            
	     if(Animation = "RUN"){
	        AnimationSprite      = spr_mighty_run;         
	        AnimationStart       = 0;
	        AnimationEnd         = 3;
	        AnimationLoop        = 0;
	        AnimationSpeed       = 0;
	        AnimationRepeat      = 1;
	        AnimationRepeatTimes = -1;
	        AnimationLinkedTo    = "NONE";               
	     }
	  // Push Animation            
	     if(Animation = "PUSH"){
	        AnimationSprite      = spr_mighty_push;         
	        AnimationStart       = 0;
	        AnimationEnd         = 4;
	        AnimationLoop        = 1;
	        AnimationSpeed       = .12; // Changing this won't do much for you, check the pushing script.
	        AnimationRepeat      = 1;
	        AnimationRepeatTimes = -1;
	        AnimationLinkedTo    = "NONE";       
	     }
                    
	  // Jump/Roll Animation            
	     if(Animation = "ROLL"){
	        AnimationSprite      = spr_mighty_roll;         
	        AnimationStart       = 0;
	        AnimationEnd         = 7;
	        AnimationLoop        = 0;
	        AnimationSpeed       = 0.2;
	        AnimationRepeat      = 1;
	        AnimationRepeatTimes = -1;
	        AnimationLinkedTo    = "NONE"; 
	     }  

	  // Skidding Animation            
	     if(Animation = "SKID"){
	        AnimationSprite      = spr_mighty_skid;         
	        AnimationStart       = 0;
	        AnimationEnd         = 2;
	        AnimationLoop        = 2;
	        AnimationSpeed       = 0.50;
	        AnimationRepeat      = 0;
	        AnimationRepeatTimes = 3;
	        AnimationLinkedTo    = "NONE";
	     }
	  // Spring Animation            
	     if(Animation = "SPRING"){
	        AnimationSprite      = spr_mighty_spring;         
	        AnimationStart       = 0;
	        AnimationEnd         = 0;
	        AnimationLoop        = 0;
	        AnimationSpeed       = 0;
	        AnimationRepeat      = 0;
	        AnimationRepeatTimes = 0;
	        AnimationLinkedTo    = "NONE";
	     }
           
	  // Edge wobble 1 Animation            
	     if(Animation = "EDGEWOBBLE"){
	        AnimationSprite      = spr_mighty_balance;         
	        AnimationStart       = 0;
	        AnimationEnd         = 2;
	        AnimationLoop        = 0;
	        AnimationSpeed       = 0.15;
	        AnimationRepeat      = -1;
	        AnimationRepeatTimes = -1;
	        AnimationLinkedTo    = "NONE";
	     }
           

	  // Hurt Animation            
	     if(Animation = "HURT"){
	        AnimationSprite      = spr_mighty_hurt;         
	        AnimationStart       = 0;
	        AnimationEnd         = 1;
	        AnimationLoop        = 0;
	        AnimationSpeed       = 0.10;
	        AnimationRepeat      = 1;
	        AnimationRepeatTimes = 0;
	        AnimationLinkedTo    = "NONE";
	     }
    
	  // Goal Animation            
	     if(Animation = "GOAL"){
	        AnimationSprite      = spr_mighty_idle;         
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
	        AnimationSprite      = spr_mighty_breath ;         
	        AnimationStart       = 0;
	        AnimationEnd         = 0;
	        AnimationLoop        = 0;
	        AnimationSpeed       = 0;
	        AnimationRepeat      = 0;
	        AnimationRepeatTimes = 0;
	        AnimationLinkedTo    = "NONE";
	     }
                          
	  // Die Animation            
	     if(Animation = "DIE"){
	        AnimationSprite      = spr_mighty_die;     
	        if(HasDrowned == false){   
	           AnimationStart       = 0;        
	           AnimationEnd         = 0;
	           AnimationLoop        = 0;
	           AnimationSpeed       = 0;
	           AnimationRepeat      = 0;
	           AnimationRepeatTimes = 0; 
	        }else{
	           AnimationStart       = 1;
	           AnimationEnd         = 1;
	           AnimationLoop        = 1;
	           AnimationSpeed       = 0;
	           AnimationRepeat      = 0;
	           AnimationRepeatTimes = 0;        
	        }       
	        AnimationLinkedTo    = "NONE";
	     }
	  // Breath Animation            
	     if(Animation = "SPIKE"){
	        AnimationSprite      = spr_mighty_spike;         
	        AnimationStart       = 0;
	        AnimationEnd         = 0;
	        AnimationLoop        = 0;
	        AnimationSpeed       = 0;
	        AnimationRepeat      = 0;
	        AnimationRepeatTimes = 0;
	        AnimationLinkedTo    = "NONE";
	     }



}
