/// @description  Render the Logo parts.
  
// BG:
if state == 5{
   draw_sprite_ext(spr_flicky_background, -1, 0, -224, image_xscale, image_yscale, image_angle, image_blend, BGAlpha)
   }
    
// Draw the text part of the logo.    
   if(state >= 3) {
      draw_sprite(spr_flicky_text, 0, XText, y);
   }

// Draw the Icon
   draw_self();

