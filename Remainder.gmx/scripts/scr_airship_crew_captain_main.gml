#define scr_airship_crew_captain_main
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

//move back based on enemy position
if skeleton_id[1].y<=y||skeleton_id[2].y<=y
{
    y-=240;
    obj_overlay_test.range_array[current_range_array]=0;
    current_range_array-=1;
    obj_overlay_test.range_array[current_range_array]=range;
    global.enemy_acting=0;return 1;
}



//standard actions

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
    if(attack_bank=wind_up)&&(winding_down=0)&&(array_checking+range>=5)
    {
        instance_create(x,y,obj_enemie_attack);
        state_visual.winding_up=0;
    }
    //wait for wind down
    if(attack_bank=wind_up)&&(winding_down<wind_down)
    {
        winding_down+=1;
        state_visual.winding_down=1;
        state_visual.anim_speed=(winding_down/wind_down);
        state_visual.start_up=1;
    }
    //return to normal
    if(attack_bank=wind_up)&&(winding_down=wind_down)
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



global.enemy_acting=0;

#define scr_airship_crew_captain
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
//revive
if skeleton_id[1].down=1&&skeleton_id[2].down=1
{
    up_count+=1
    if up_count>1
    {
        skeleton_id[1].upped=1;
        skeleton_id[2].upped=1;
        //move red
        skeleton_id[1].y=512;
        skeleton_id[1].reseting=1;
        //move blue
        skeleton_id[2].y=512;
        skeleton_id[2].reseting=1;
        up_count=0;
    }
    upping=1;
}
if upping=0
{
    //move back based on enemy position
    if skeleton_id[1].y<y||skeleton_id[2].y<y
    {
        y-=240;
        obj_overlay_test.range_array[current_range_array]=0;
        current_range_array-=1;
        obj_overlay_test.range_array[current_range_array]=range;
        global.enemy_acting=0;
        return 1 ;
    }
    //attack once
    if array_checking=4&&winding_down=0
    {
        var att=instance_create(x,y,obj_enemie_attack);
        att.attack_type=0;
        att.attack_type_1=damage_type_1;
        att.attack_type_2=damage_type_2;
        att.damage_1=damage_1;
        att.damage_2=damage_2;
        wait_wait_gate=1;
        global.enemy_acting=0;
        return 1 ;
    }
}
global.enemy_acting=0;



#define scr_airship_crew_red
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
if (array_checking=2)&&(mouvement_speed=0.5)
    {
        range=1;
        mouvement_speed=2;
    }
if (array_checking=4)&&(mouvement_speed=2)&&(winding_down>0)
{
    range=3;
    mouvement_speed=0.5;
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
moved=0;
global.enemy_acting=0;

#define scr_airship_crew_blue
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

if array_checking=3
{
    var att=instance_create(x,y,obj_enemie_attack);
        att.attack_type=1;
        att.attack_type_1=5;
        att.attack_type_2=3;
        att.damage_1=2;
        att.damage_2=1;
        wait_wait_gate=1;
        global.enemy_acting=0;
        return 1 ;
}
if array_checking=4
{
    if (attack_bank=wind_up)
    {
        y-=240;
        obj_overlay_test.range_array[current_range_array]=0;
        current_range_array-=1;
        obj_overlay_test.range_array[current_range_array]=range;
        wait_wait_gate=1;
        upping=1;
    }
}
global.enemy_acting=0;