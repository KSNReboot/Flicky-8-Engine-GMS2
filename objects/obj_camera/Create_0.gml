/// @description  Camera variables.
 // Set view:
    __view_set( e__VW.Object, 0, id );
    __view_set( e__VW.HBorder, 0, 320/2 );
    __view_set( e__VW.VBorder, 0, 224/2 );
    view_xhalf      = global.ScreenWidth  * 0.5;
    view_yhalf      = global.ScreenHeight * 0.5;
    
 // Horizontal Borders:
    border_left  = x-8;
    border_right = x+8;
    limit_right = room_width;
    limit_left  = 0;
 // Vertical Borders:
    border_top    = y-32;
    border_bottom = y+32;
    limit_top    = 0;
    limit_bottom = room_height;  
 // Camera handle:
    cam_handle = par_character;
    cam_speed  = 6.5;
    
 // Camera position.
    cam_x       = x;
    cam_y       = y;
    cam_x_shift = 0;
    cam_y_shift = 0;
    cam_lag     = 0;
    cam_limit   = 0;
    
// Special functions.
    Camera_ShakeScreen   = false;              // If enabled, the screen will shake as long as _ShakeDuration is above 0.
    Camera_ShakeDuration = 0;                  // How many frames the Shaking lasts.
    Camera_ShakeForce    = 0;                  // The force of the Shake, 2 to 3 is a good number, everything above 3 is a strong shake.
    Camera_ShakeSound    = snd_object_crumble; // If not set to noone, the game will loop this sound until the shake is over.
    Camera_DebugDisplay  = false;              // Displays Debug Graphics.    
         

