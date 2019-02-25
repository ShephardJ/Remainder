#define scr_horseman_head_action
if attack_start_up=1
{
    if instance_exists(obj_horseman_body){}
    else
    {
        body_spawn_count+=1;
        if body_spawn_cap=body_spawn_count
        {
            body_spawn_count=0
            if body_spawn_cap>3 body_spawn_cap-=1
            instance_create(155+320*irandom(2),-300,obj_horseman_body);
        }
        galop_sound=audio_play_sound(snd_horseman_horse_galop,5,false)
        audio_sound_gain(galop_sound,global.vol_fx*0.6*((body_spawn_count/body_spawn_cap)),0);
        audio_sound_pitch(galop_sound,0.8+((0.2*body_spawn_count/body_spawn_cap)));
        
    }
       
    //Charge attack
    if(attack_bank<wind_up)
    {
        anim_state=1;
        attack_bank+=1;
        state_visual.winding_up=1;
        state_visual.anim_speed=(attack_bank/wind_up);
        state_visual.start_up=1;
        state_visual.mouvement=0;
    }
    //attack
    if(attack_bank=wind_up)&&(winding_down=0)
    {
        anim_state=0;
        attack_start_up=1;
        var att=instance_create(x,y,obj_enemie_attack);
        att.attack_type=attack_type; 
        att.color_var_get=damage_type_1; 
        att.damage_1=damage_1;
        att.damage_type_1=damage_type_1;
        att.damage_2=damage_2;
        att.damage_type_2=damage_type_2;
        att.audio_hit_player=audio_hit_player;
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
    
    
    /////chech for combos
    if (damage_array[0]=-2||damage_array[1]=-2)/*||(damage_array[0]=-2&&damage_array[1]=-2)*/
    {
        
        //bounce off player
        if y>1180&&(going_down=1)
        {
            var att=instance_create(x,y,obj_enemie_attack);
            att.attack_type=2; 
            att.color_var_get=1; 
            att.damage_1=2;
            att.damage_type_1=5;
            att.damage_2=1.1;
            att.damage_type_2=2;
            att.audio_hit_player=audio_hit_player;
        }
        
        //set move to point
        if y<463 going_down=1;//coordinates in case of bouce
        else
        {
                if y>1180 going_down=-1;
        }

        if x<380 going_right=1;
        else
        {
            if x>710 going_right=-1;
        }
        move_to_x=x+320*going_right;
        move_to_y=y+240*going_down;
    }
    else
    {
        //two left slashes
        if(damage_array[0]=-1&&damage_array[1]=-1)
        {
            if x>380
            {
                move_to_y=y;
                move_to_x=x-320;
                move_count=1;
                move_count_track=1;
            }
            else
            {
                move_to_y=y-240;
                move_to_x=x+320;
                move_to_y1=y-2*240;
                move_to_x1=x+2*320;
                going_down=-1;
                move_count=1;
                move_count_track=1;
            }
            going_down=-1;
        }
        //two thrusts
        if(damage_array[0]=0&&damage_array[1]=0)
        {
            move_to_x=x;
            move_to_y=y-240;
            move_to_x1=move_to_x;
            move_to_y1=y-2*240;
            move_count=1;
            move_count_track=1;
        }
        //two right slashes
        if(damage_array[0]=1&&damage_array[1]=1)
        {
            if x<710
            {
                move_to_y=y;
                move_to_x=x+320;
                move_count=1;
                move_count_track=1;
            }
            else
            {
                move_to_y=y-240;
                move_to_x=x-320;
                move_to_y1=y-2*240;
                move_to_x1=x-2*320;
                going_down=-1;
                move_count=1;
                move_count_track=1;
            }
            going_down=-1;
        }
        //other
        if(damage_array[0]=1&&damage_array[1]=-1)||(damage_array[0]=-1&&damage_array[1]=1)||(damage_array[0]=0&&damage_array[1]=-1)||(damage_array[0]=-1&&damage_array[1]=0)||(damage_array[0]=0&&damage_array[1]=1)||(damage_array[0]=1&&damage_array[1]=0)
        {
            //bounce off player
            if y>1180&&(going_down=1)
            {
                var att=instance_create(x,y,obj_enemie_attack);
                att.attack_type=0; 
                att.color_var_get=1; 
                att.damage_1=2;
                att.damage_type_1=5;
                att.damage_2=1.1;
                att.damage_type_2=2;
                att.audio_hit_player=audio_hit_player;
            }
            
            if y<463 going_down=1;//coordinates in case of bouce
            else
            {
                    if y>1180 going_down=-1;
            }
            if x<380 going_right=1;
            else
            {
                if x>710 going_right=-1;
            }
            move_to_x=x+320*going_right;
            move_to_y=y+240*going_down;
        }
    }
    
    obj_overlay_test.range_array[current_range_array]=0;
    attack_start_up=0;;
    
     
}

if !(move_count=move_count_track)
{
    //if specified coordinates
    if move_to_x1>0||move_to_y1>0
    {
        move_to_x=move_to_x1;
        move_to_y=move_to_y1;
        move_to_x1=0;
        move_to_y1=0;
    }
    else
    {
        if y<463 going_down=1;//coordinates in case of bouce
        else
        {
                if y>1180 going_down=-1;
        }

        if x<380 going_right=1;
        else
        {
            if x>710 going_right=-1;
        }
        
        move_to_x=x+320*going_right;
        move_to_y=y+240*going_down;
    }
    
    
    move_count_track=move_count;
}

if y=move_to_y&&x=move_to_x 
{
    if move_count=0
    {
        global.enemy_acting=0;
        moved_back=1;
        damage_array[1]=-2;
        damage_array[0]=-2;
    }
    else
    {
        move_count-=1;
    }
}


#define scr_horseman_body_action
if attack_start_up=1
{
    body_spawn_count+=1;
    if body_spawn_count=body_spawn_cap
    {
        move_to_x=x;
        move_to_y=1500;
        attacking=1;
        anim_state=1;
        moved_back=1;
        moved_back=1;
    }
    if y<10 
    {
        move_to_x=x
        move_to_y=10;
        anim_state=1;
        moved_back=1;
    }
    scr_show_damage_2(body_spawn_cap-body_spawn_count,4);
}
if y=move_to_y&&x=move_to_x 
{
    global.enemy_acting=0;
    moved_back=1;
}