if (ActionTimer > 100) { ActionTimer = 100 }

if (Cycle == true){
ActionTimer += 1;
image_speed = 1/4;
}

if (ActionTimer == 1)
{
PlaySound(snd_object_lucky,global.SFXVolume,1,1);
}

if (ActionTimer == 50)
{
alarm[0] = 50;
}

