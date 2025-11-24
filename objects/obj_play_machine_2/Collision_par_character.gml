if (Active == true){

ActionTimer -= 4;

with(self){
par_character.x = self.x;
par_character.y = self.y;
}

with(par_character){
Action = ActionPipe
}

with(objSlotPanel01){
if (CanCycle == true){
Cycle = true;
    }
}
with(objSlotPanel02){
if (CanCycle == true){
Cycle = true;
    }
}
with(objSlotPanel03){
if (CanCycle == true){
Cycle = true;
    }
}

}



