touch_type=0;
if !(instance_exists(obj_turn_halo)) instance_create(0,1300,obj_turn_halo);
//start music 
if !(instance_exists(obj_play_dynamic_music))&&room=arcade_mode&&audio_group_is_loaded(odfm1)&&audio_group_is_loaded(odfm2)&&audio_group_is_loaded(odfm3)&&audio_group_is_loaded(odfm4)&&audio_group_is_loaded(odfm5)&&audio_group_is_loaded(odfm6)&&audio_group_is_loaded(odfm7)&&audio_group_is_loaded(boss_music_1)&audio_group_is_loaded(title_and_menu)  instance_create(x,y,obj_play_dynamic_music);
//show you can move forward
if(global.enemie_total=0){current_player_combat_state=player_combat_state.transition;transition_start=1}
if(range_array[4]=0)&&(range_array[9]=0)&&(range_array[14]=0)
{ 
    if (global.boss=0)||(global.boss=2)||(global.boss=3)||(global.boss=5)||(global.boss=6)||(global.boss=7)scr_player_choice(8/60,0,0,0,0,1,0);
    if (global.boss=1)&&(instance_exists(obj_red_dragon_body))
    {if(obj_red_dragon_body.moved_forward=0)scr_player_choice(8/60,0,0,0,0,1,0);else scr_player_choice(8/60,0,0,0,0,0,0);   }
    if (global.boss=8)&&(instance_exists(obj_blue_dragon_body))
    {if(obj_blue_dragon_body.moved_forward=0)scr_player_choice(8/60,0,0,0,0,1,0);else scr_player_choice(8/60,0,0,0,0,0,0);   }
    if (global.boss=4){if instance_exists(obj_airship_crew)scr_player_choice(8/60,0,0,0,0,1,0);else scr_airship_player_choice();}
    
}
else scr_player_choice(8/60,0,0,0,0,0,0);
scr_player_choice_change_color(8)

//get player input
touch_type=scr_get_input();


//go to attack mode

if(touch_type=1)
{   
    instance_create(mouse_x-6*13,mouse_y-6.5*13,obj_tap);
    //go to attack
    if(mouse_x>844)&&(mouse_x<1019)&&(mouse_y>1520)&&(mouse_y<1694) 
    {
        instance_create(844,1520,obj_combat_selected);
        current_player_combat_state=player_combat_state.choose_attack;
        player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,0.925);
    }
    // go to block
    if(mouse_x>66)&&(mouse_x<241)&&(mouse_y>1521)&&(mouse_y<1695) 
    {
        instance_create(66,1521,obj_combat_selected);
        current_player_combat_state=player_combat_state.choose_block;
        player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,0.975);
    }
    //go to item
    if(mouse_x>903)&&(mouse_x<1019)&&(mouse_y>1760)&&(mouse_y<1878) 
    {
        instance_create(903,1760,obj_combat_selected);
        current_player_combat_state=player_combat_state.choose_item;
        obj_item.check_item_type=1;
        player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,0.95);
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

if (touch_type=3)
{
    if (global.boss=0)scr_player_choose_move_forward();
    if (global.boss=1)boss.player_move_forward=1;
    if (global.boss=2)scr_player_choose_move_forward();
    if (global.boss=3)scr_player_choose_move_forward();
    if (global.boss=5)scr_player_choose_move_forward();
    if (global.boss=6)scr_player_choose_move_forward();
    if (global.boss=7)scr_player_choose_move_forward();
    if (global.boss=8)boss.player_move_forward=1;
    if (global.boss=4)
    {
        if(instance_exists(obj_airship_cannon_ball))
        {
            if instance_exists(obj_airship)
            {
            
            if obj_airship.cannon_balls_acting=0&&obj_airship.fight_phase=1
            {
            if !((place_meeting(180,1278,obj_airship_cannon_ball))||(place_meeting(500,1278,obj_airship_cannon_ball))||(place_meeting(820,1278,obj_airship_cannon_ball)))
            {
                obj_airship_cannon_ball.move=1;
                obj_airship_cannon_ball.player_move=1;
                AP_lost=1;
                temp_player_state=current_player_combat_state;
                current_player_combat_state=player_combat_state.loosing_AP;
                player_move_sound=audio_play_sound(snd_player_move,5,false);
                audio_sound_gain(player_move_sound,global.vol_fx*0.6,0);
            }
            }
            }
        }
        if instance_exists(obj_airship_crew)scr_player_choose_move_forward();
    }
}
if(global.player_AP_current=0)
{
    global.enemy_turn=1;
    global.enemy_countdown=17;
    global.enemy_acting=0;
    damage_taken_1=0;
    damage_taken_2=0;
    damage_taken_type_1=0;
    damage_taken_type_2=0;
    current_player_combat_state=player_combat_state.waiting;
}
global.gone_back=1;


