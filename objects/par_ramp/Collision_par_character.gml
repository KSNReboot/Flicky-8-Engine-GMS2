with other{
if (XSpeed >= 4 )
{
YSpeed = -6 
if CharacterID != CharacterMighty{
Animation = "ROTATION_1"
}
if CharacterID = CharacterMighty{
Animation = "ROLL"
}
if Animation = "ROLL" && CharacterID != CharacterMighty{
Animation = "ROTATION_1"
}
}
}

