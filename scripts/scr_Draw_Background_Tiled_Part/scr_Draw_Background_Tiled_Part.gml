function scr_Draw_Background_Tiled_Part(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {
	// ==== FUNCTION ====================================================================
	// scr_Draw_Background_Tiled_Part(background, left, top, width, height, x, y, x sep, y sep);
	// ==================================================================================

	    var BackgroundXStart, BackgroundXEnd, BackgroundXCurrent, BackgroundXStep;
	    var BackgroundYStart, BackgroundYEnd, BackgroundYCurrent, BackgroundYStep;
 
	    // Retrieve background properties        
	    BackgroundXStep  = argument3+argument7;
	    BackgroundXStart = __view_get( e__VW.XView, view_current )+((argument5-__view_get( e__VW.XView, view_current )) mod BackgroundXStep)-BackgroundXStep;
	    BackgroundXEnd   = __view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )+BackgroundXStep;
	    BackgroundYStep  = argument4+argument8;
	    BackgroundYStart = __view_get( e__VW.YView, view_current )+((argument6-__view_get( e__VW.YView, view_current )) mod BackgroundYStep)-BackgroundYStep;
	    BackgroundYEnd   = __view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current )+BackgroundYStep;
        
	    for (BackgroundYCurrent = BackgroundYStart; BackgroundYCurrent <= BackgroundYEnd; BackgroundYCurrent += BackgroundYStep)
	        for (BackgroundXCurrent = BackgroundXStart; BackgroundXCurrent <= BackgroundXEnd; BackgroundXCurrent += BackgroundXStep)
	            draw_background_part(argument0, argument1, argument2, argument3, argument4, BackgroundXCurrent, BackgroundYCurrent);



}
