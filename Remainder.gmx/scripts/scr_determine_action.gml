#define scr_determine_action
var array_checking=current_range_array;
var moved=0;
/*var array_checking_times=0;*/
if (array_checking>0)
{
    do
    {
        array_checking-=5;

    }
    until array_checking<0;
    array_checking+=5;
}

//move forward
if ((array_checking+range)<5)&&(moved=0)/*&&(attacking=0)*/
{
    if (mouvement_banked=0){state_visual.mouvement=1;state_visual.start_up=1;state_visual.winding_up=0;state_visual.winding_down=0;attacking=0;attack_bank=0;winding_down=0;}
    //add up mouvement (so you can have enemies that move every other turn)
    mouvement_banked+=mouvement_speed;
    state_visual.anim_speed=(mouvement_banked/1)
    
    
    //safeguard to not move to far
    var max_mouv=5-(array_checking+range);
    if(max_mouv<mouvement_banked)mouvement_banked=max_mouv;
    
    if (mouvement_banked>=1)
    {
        do
        {
            
            var array_being_checked=current_range_array+1;
            var stop=obj_overlay_test.range_array[array_being_checked];
            if (stop=0)
            {
                y+=240;
                obj_overlay_test.range_array[current_range_array]=0;
                current_range_array=array_being_checked;
                obj_overlay_test.range_array[current_range_array]=range;
            }
            mouvement_banked-=1;
            state_visual.mouvement=0;
            state_visual.start_up=0;
            state_visual.anim_speed=0;
        }
        until (mouvement_banked=0)||(stop>0)
        
        if (stop>0) mouvement_banked=0;
        var moved=1;
    }
}

//move back
if ((array_checking+range)>5)&&(moved=0)&&(attacking=0)
{
    if (mouvement_banked=0){state_visual.mouvement=1;state_visual.start_up=1;state_visual.winding_up=0;state_visual.winding_down=0;}
    //add up mouvement (so you can have enemies that move every other turn)
    mouvement_banked+=mouvement_speed;
    //safeguard to not move to far
    var max_mouv=array_checking;
    if(max_mouv<mouvement_banked)mouvement_banked=max_mouv;
    if (mouvement_banked>=range)mouvement_banked=range-1;
    if (mouvement_banked>=1)
    {
        do
        {
            
            var array_being_checked=current_range_array-1;
            var stop=obj_overlay_test.range_array[array_being_checked];
            if (stop=0)
            {
                y-=240;
                obj_overlay_test.range_array[current_range_array]=0;
                current_range_array=array_being_checked;
                obj_overlay_test.range_array[current_range_array]=range;
            }
            mouvement_banked-=1;
            state_visual.mouvement=0;
            state_visual.start_up=0;
        }
        until (mouvement_banked=0)||(stop>0)
        var moved=1;
        if (stop>0) {mouvement_banked=0;moved=0;}
        moved_back=1;
        
    }
}

//start_attacking
if (moved=0)&&(((array_checking+range)>=5)||(attacking=1))&&(global.enemie_attack_count=0)
{
    attacking=1;
    //wait for wind up
    if(attack_bank<wind_up)
    {
        attack_bank+=1;
        state_visual.winding_up=1;
        state_visual.anim_speed=(attack_bank/wind_up);
        state_visual.start_up=1;
        state_visual.mouvement=0;
    }
    //attack
    if(attack_bank>=wind_up)&&(winding_down=0)&&(array_checking+range>=5)
    {
        instance_create(x,y,obj_enemie_attack);
        state_visual.winding_up=0;
    }
    //wait for wind down
    if(attack_bank>=wind_up)&&(winding_down<wind_down)
    {
        winding_down+=1;
        state_visual.winding_down=1;
        state_visual.anim_speed=(winding_down/wind_down);
        state_visual.start_up=1;
    }
    //return to normal
    if(attack_bank>=wind_up)&&(winding_down>=wind_down)
    {
        attacking=0;
        winding_down=0;
        attack_bank=0;
        state_visual.winding_down=0;
        state_visual.anim_speed=0;
    }
}
moved_back=1;
moved=0;
global.enemy_acting=0;

#define scr_determin_action_mole_wait
//start_attacking
if ((moved=0)||(attacking=1))&&(global.enemie_attack_count=0)
{
    attacking=1;
    //wait for wind up
    if(attack_bank<wind_up)
    {
        attack_bank+=1;
        state_visual.winding_up=1;
        state_visual.anim_speed=(attack_bank/wind_up);
        state_visual.start_up=1;
        state_visual.mouvement=0;
    }
    //attack
    if(attack_bank=wind_up)&&(winding_down=0)
    {
        instance_create(x,y,obj_enemie_attack);
        state_visual.winding_up=0;
    }
    //wait for wind down
    if(attack_bank=wind_up)&&(winding_down<wind_down)
    {
        winding_down+=1;
        state_visual.winding_down=1;
        state_visual.anim_speed=(winding_down/wind_down);}
        state_visual.start_up=1;
    //return to normal
    if(attack_bank>=wind_up)&&(winding_down>=wind_down)
    {
        attacking=0;
        winding_down=0;
        attack_bank=0;
        state_visual.winding_down=0;
        state_visual.anim_speed=0;
    }
}

moved=0;