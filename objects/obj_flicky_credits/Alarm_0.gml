/// @description  Load Next String/Fade out.
    if(Credit_Fade == false){
       Credit_Fade  = true;
    }else{
       Credit_Fade  = false;
       String_Number+=1
       if(String_Number == END){
          alarm[1] = 120;
          obj_audio_manager.DeadFade = true;
       }else{
          alarm[0] = 180;
       }
    }

