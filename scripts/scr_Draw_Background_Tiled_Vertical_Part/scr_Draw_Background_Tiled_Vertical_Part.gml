function scr_Draw_Background_Tiled_Vertical_Part(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
	// ==== FUNCTION ====================================================================
	// scr_Draw_Background_Tiled_Vertical_Part(background, left, top, width, height, x, y);
	// ==================================================================================

	    var BackgroundStart, BackgroundEnd, BackgroundStep;
 
	    // Retrieve background properties 
	    BackgroundStep  = argument4+argument7;
	    BackgroundStart = __view_get( e__VW.YView, view_current )+((argument6-__view_get( e__VW.YView, view_current )) mod BackgroundStep)-BackgroundStep;
	    BackgroundEnd   = __view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current )+BackgroundStep;
    
	    while(BackgroundStart<BackgroundEnd) {
	        draw_background_part(argument0, argument1, argument2, argument3, argument4, argument5, BackgroundStart);   
	        BackgroundStart += BackgroundStep;
	    }



}
