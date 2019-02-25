if(global.enemie_total=0){current_player_combat_state=player_combat_state.transition;transition_start=1}

scr_player_choice(8/60,0,0,0,0,1,0);
scr_player_choice_change_color(8)
//get player input
touch_type=scr_get_input()
//tapping the sword back to scr_master
if(touch_type=1)
{
    instance_create(mouse_x-6*13,mouse_y-6.5*13,obj_tap);
    if(mouse_x>66)&&(mouse_x<241)&&(mouse_y>1521)&&(mouse_y<1695) 
    {
        current_player_combat_state=player_combat_state.turn;
        player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,0.9); 
    }
    
    //go to attack
    if(mouse_x>844)&&(mouse_x<1019)&&(mouse_y>1520)&&(mouse_y<1694) 
    {
        current_player_combat_state=player_combat_state.choose_attack;
        player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,0.925);
    }
    
    //go to item
    if(mouse_x>903)&&(mouse_x<1019)&&(mouse_y>1760)&&(mouse_y<1878)
    { 
        current_player_combat_state=player_combat_state.choose_item;
        player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,0.95)
    }
    
     //use health potion
    if(mouse_x>66)&&(mouse_x<182)&&(mouse_y>1760)&&(mouse_y<1878)&&(global.player_potion_current>0)&&(global.player_health_current<global.player_health) 
    {
        instance_create(66,1760,obj_combat_selected);
        temp_player_state=current_player_combat_state;
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

if(touch_type=3) 
{
instance_create(0,1495,obj_shield_fx);
global.enemy_countdown=0;
AP_lost=global.player_AP_current;
temp_player_state=current_player_combat_state;
current_player_combat_state=player_combat_state.loosing_AP;
}

if(global.player_AP_current=0)current_player_combat_state=player_combat_state.turn;

global.gone_back=0;


