/// @description  Gain a life with 100 rings.

    if(global.Ring100Check < 100){
    
       if(global.Rings >= (global.Ring100Check * 100)){
       
          // Gain a life:
             global.Ring100Check+=1
             global.Lives+=1
          
          // Play life jingle:
             PlaySound(snd_character_life, global.MaxSFXV, 1, 1)
       }
       
       // If we get hit and we no longer have any rings, set the check back to 1:
          if(global.Rings = 0 && global.Ring100Check != 1){
             global.Ring100Check = 1;
          }
          
    }


