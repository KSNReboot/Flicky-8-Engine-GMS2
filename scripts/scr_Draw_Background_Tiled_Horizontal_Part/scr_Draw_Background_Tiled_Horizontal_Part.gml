function scr_Draw_Background_Tiled_Horizontal_Part(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
	// ==== FUNCTION ====================================================================
	// scr_Draw_Background_Tiled_Horizontal_Part(background, left, top, width, height, x, y, sep)
	// ==================================================================================

	    var BackgroundStart, BackgroundEnd, BackgroundStep;
    
	    // Retrieve background properties        
	    BackgroundStep  = argument3+argument7;
	    BackgroundStart = __view_get( e__VW.XView, view_current )+((argument5-__view_get( e__VW.XView, view_current )) mod BackgroundStep)-BackgroundStep;
	    BackgroundEnd   = __view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )+BackgroundStep;
        
	    while(BackgroundStart<BackgroundEnd) {
	        draw_background_part(argument0, argument1, argument2, argument3, argument4, BackgroundStart, argument6);   
	        BackgroundStart += BackgroundStep;
	    }



}
