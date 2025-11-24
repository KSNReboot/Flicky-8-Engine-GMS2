x = par_character.x     
y = par_character.y
image_angle = par_character.Angle
image_xscale = par_character.AnimationDirection

if par_character.Action != ActionRail{
with self{
instance_destroy()
}
}

