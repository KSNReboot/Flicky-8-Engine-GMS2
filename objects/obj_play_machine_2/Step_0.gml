if (ActionTimer < 0) { ActionTimer = 0; }
if (ActionTimer > 800) { ActionTimer = 800; }

if (ActionTimer == 0)
{
Active = false;
}

if (Active == false)
{
ActionTimer += 50;
}

if (ActionTimer == 800)
{
Active = true;
}
with(par_character){
if Action = ActionPipe{
YSpeed = 10
XSpeed = 0
}
if Ground && Action = ActionPipe{
Pipe = 0
YSpeed = 0
Action = ActionNormal
}
}

