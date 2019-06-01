touch_type=0;
if(global.enemie_total=0){current_player_combat_state=player_combat_state.transition;transition_start=1}

if (turnlock=0)||(turnlock=3)scr_player_choice(8/60,1-vlock,1-vlock,1-vlock,1-hlock,1-hlock,1-hlock);
if (turnlock=1)scr_player_choice(8/60,1,1,1,0,0,0);
if (turnlock=2)scr_player_choice(8/60,0,0,0,1,1,1);
//change player choice color
    //multi attack
if attcount>0
{
    scr_player_choice_change_color(6)
}
    //turnlocked
if attcount=0
{
    if turnlock>0  scr_player_choice_change_color(7)
    else scr_player_choice_change_color(8)
}


//check no attack fx on screen
if (global.attack_fx=0)
{
weapon_slash=0;
//get player input
touch_type=scr_get_input()
//tapping the sword back to scr_master
if(touch_type=1)&&(hlock=0)&&(vlock=0)&&(turnlock=0)&&(attcount=0)
{
    if(mouse_x>100)&&(mouse_x<980)&&(mouse_y>250)&&(mouse_y<1490){
        if position_meeting(mouse_x,mouse_y,all){
            temp_player_state=current_player_combat_state;
            current_player_combat_state=player_combat_state.off;
            var di=instance_position(mouse_x,mouse_y,all);
            stats=instance_create(1080/2,1920/2,obj_stats_sheet);
            stats.target_id=di;
        }
    }
    
    instance_create(mouse_x-6*13,mouse_y-6.5*13,obj_tap);
    if(mouse_x>844)&&(mouse_x<1019)&&(mouse_y>1520)&&(mouse_y<1694)  
    {
        current_player_combat_state=player_combat_state.turn;
        player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,0.9); 
    }
    
    //go to item
    if(mouse_x>903)&&(mouse_x<1019)&&(mouse_y>1760)&&(mouse_y<1878) 
    {
        current_player_combat_state=player_combat_state.choose_item;
        player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,0.95);
    }
    
    // go to block
    if(mouse_x>66)&&(mouse_x<241)&&(mouse_y>1521)&&(mouse_y<1695) 
    {
        current_player_combat_state=player_combat_state.choose_block;
        player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.58,0);
        audio_sound_pitch(player_tap_sound,0.975);
    }
    
     //use health potion
    if(mouse_x>66)&&(mouse_x<182)&&(mouse_y>1760)&&(mouse_y<1878)&&(global.player_potion_current>0)&&(global.player_health_current<global.player_health) 
    {
        temp_player_state=player_combat_state.choose_attack;
        instance_create(66,1760,obj_combat_selected);
        current_player_combat_state=player_combat_state.choose_health_potion;
        
    }
    //go to menu
    if((mouse_x>13)&&(mouse_x<73)&&(mouse_y>1423)&&(mouse_y<1486))||((mouse_x>1005)&&(mouse_x<1065)&&(mouse_y>1423)&&(mouse_y<1486))
    {
        temp_player_state=current_player_combat_state;
        instance_create(1080/2,1920/2+(125-84/2)*7.8,obj_menu);
        current_player_combat_state=player_combat_state.off;
        player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,0.925);
    }

}
//slash
if(touch_type=2)&&(vlock=0)&&(turnlock=0||turnlock=1||turnlock=3)
{
    if(touch_direction=0)
    {
        instance_create(80,1350,obj_weapon_slash);
        obj_weapon_slash.image_xscale=1
    }

    if(touch_direction=1)
    {
        instance_create(1000,1350,obj_weapon_slash);
        obj_weapon_slash.image_xscale=-1
    }
    
    //lock and mult attack
    hlock=obj_weapon.hlock;
    if (turnlock=0)turnlock=obj_weapon.hturnlock;
    attcount+=obj_weapon.hattcount;
}
//thrust
if(touch_type=3)&&(hlock=0)&&(turnlock=0||turnlock=2||turnlock=3)
{
    if(mouse_x<360) instance_create(155,1460,obj_weapon_thrust);
    if(mouse_x>=360)&&(mouse_x<720) instance_create(476,1460,obj_weapon_thrust);
    if(mouse_x>=720)&&(mouse_x<1080) instance_create(796,1460,obj_weapon_thrust);
    
    //lock and mult attack
    vlock=obj_weapon.vlock;
    if (turnlock=0)turnlock=obj_weapon.vturnlock;
    attcount+=obj_weapon.vattcount;
}

//change ap for lock type weapons
if attcount>=1
{
    if (turnlock=0)
    {
        hlock=0;
        vlock=0;
        attlock=0;
        AP_lost=1;
        temp_player_state=current_player_combat_state
        current_player_combat_state=player_combat_state.loosing_AP;
    }
    else
    {
        hlock=0;
        vlock=0;
        attlock=0;
        AP_lost=1;
        temp_player_state=current_player_combat_state
        current_player_combat_state=player_combat_state.loosing_AP;
    }
    attcount=0;
}


//end turn
if(global.player_AP_current=0){current_player_combat_state=player_combat_state.turn;turnlock=0;attcount=0;}
global.gone_back=0;
}
//end fight
if(global.enemie_total=0){current_player_combat_state=player_combat_state.transition;hlock=0;vlock=0;attlock=0;turnlock=0;attcount=0;}
