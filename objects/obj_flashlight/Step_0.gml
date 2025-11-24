if (!surface_exists(light)){
light = surface_create(global.ScreenWidth,global.ScreenHeight)
}
surface_set_target(light);
draw_set_color(c_ltgray);
draw_rectangle(0,0,global.ScreenWidth,global.ScreenHeight,false)
surface_reset_target()

