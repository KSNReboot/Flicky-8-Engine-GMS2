/// @description  Create Gumball.
    Triggered = false;
    alarm[1]  = 15; 
    Gumball = instance_create(x, y, obj_bonus_gumball); 
    Gumball.image_index = choose(0, 1, 2, 3, 4, 5, 6,7) //choose(0, 0, 1, 1, 2, 2, 4, 4, 5, 5, 6, 6, 3)

