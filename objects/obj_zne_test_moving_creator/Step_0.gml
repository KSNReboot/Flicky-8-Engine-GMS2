/// @description  Create Platform.
if(bbox_right  > __view_get( e__VW.XView, 0 )
    && bbox_left   < __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )
    && bbox_bottom > __view_get( e__VW.YView, 0 )
    && bbox_top    < __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) 
    {  
       instance_create(x, y, obj_zne_test_moving_platform)
       instance_destroy();
    };

