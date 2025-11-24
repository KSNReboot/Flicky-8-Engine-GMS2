function scr_ray_action_fly() {
	if (!Ground && (Action = ActionJump && Animation = "ROLL") && KeyAction_Pressed && ShieldUsable == true && !scr_character_collision_bottom(x,y,0,spr_mask_big) && Action != ActionRail){
	if Action == ActionRayFly {if PlaneoDir > 1 {PlaneoDir-=0.2} else {PlaneoDir=1}
	if AnimationDirection > 0 {if scr_character_collision_right(x,y,Angle,spr_mask_big) {Action = ActionRayUp;}
	if KeyRight_Pressed {Action=ActionRayFly YSpeed = 0;}
	if YSpeed > 2.8 {if XSpeed < 8.3 XSpeed+=0.1} else {XSpeed = 4.2}
	}
	}
	if AnimationDirection < 0 {if scr_character_collision_left(x,y,Angle,spr_mask_big) {Action = ActionRayUp;}
	if KeyLeft_Pressed {Action=ActionRayDown YSpeed = 0;}
	if YSpeed > 2.8 {if XSpeed > -8.3 XSpeed-=0.1} else {XSpeed = -4.2}
	}
	if FuerzaAcumulada <= 0 {YSpeed += YAcceleration; YSpeed = min(YSpeed, 2.8)} else {YSpeed-=0.24 FuerzaAcumulada-=0.17}
	if (Ground) {FuerzaAcumulada=0; Action = ActionNormal}

	if Action == ActionRayDown {if PlaneoDir < 5 {PlaneoDir+=0.2} else {PlaneoDir=5}; FuerzaAcumulada+=0.12
	if AnimationDirection > 0 {if scr_character_collision_right(x,y,Angle,spr_mask_big) {Action = ActionRayUp;}
	if KeyLeft_Pressed {Action=ActionRayFly YSpeed = 0}
	}  if (Ground) {FuerzaAcumulada=0; Action = ActionNormal}
	if AnimationDirection < 0 {if scr_character_collision_left(x,y,Angle,spr_mask_big) {Action = ActionRayUp; }
	if KeyRight_Pressed {Action=ActionRayFly YSpeed = 0}
	if FuerzaAcumulada > FuerzaAcumuladaMax {FuerzaAcumulada=FuerzaAcumuladaMax}
	YSpeed = min(YSpeed, GravedadDePlaneoMax)
	if YSpeed > 4.2 {XSpeed=YSpeed*AnimationDirection} else {XSpeed = 4.2*AnimationDirection}
	}
	}
	}



}
