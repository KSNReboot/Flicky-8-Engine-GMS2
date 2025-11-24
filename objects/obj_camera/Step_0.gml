/// @description  Camera Shake.

    if(Camera_ShakeScreen = true){
       if(Camera_ShakeDuration != 0){
          if(CheckSound(Camera_ShakeSound) == false){
             LoopSound(Camera_ShakeSound, global.SFXVolume, 1);
          }
          Camera_ShakeDuration-=1       
       }else{
          if(CheckSound(Camera_ShakeSound) == true){
             StopSound(Camera_ShakeSound);
          }      
          Camera_ShakeScreen = false;   
          Camera_ShakeForce  = 0; 
       }
    }

/// Camera lag.
 // Used to stop the camera from moving, one example is when releasing a spindash or using a fire shield.

    if(cam_lag)
    {
       cam_lag -= 3;
    }
    if(cam_lag < 0)
    {
       cam_lag = 0;
    }

