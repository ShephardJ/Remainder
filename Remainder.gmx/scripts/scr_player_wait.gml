scr_player_choice_change_color(8)
if(damage_taken_1>=1)
{
     //caclulate damage with multipliers
    var resist_1=scr_player_damage_taken_calc(player_damage_taken_type_1,global.pierce_resistence,global.player_slash_resistence,global.fire_resistance,global.ice_resistance,global.poison_resistance,global.push_resistance);
    var resist_2=scr_player_damage_taken_calc(player_damage_taken_type_2,global.pierce_resistence,global.player_slash_resistence,global.fire_resistance,global.ice_resistance,global.poison_resistance,global.push_resistance);
    damage_taken=floor(damage_taken_1*resist_1+damage_taken_2*resist_2);
    
    if (damage_taken>=1)
    {
        current_player_combat_state=player_combat_state.taking_damage;
    }
    else
    {
        player_blocked_sound=audio_play_sound(snd_player_blocked,5,false);
        audio_sound_gain(player_blocked_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_blocked_sound,0.925);
        damage_taken_1=0;
    }
}

//enemy turn
if (global.enemy_turn=1)&&(global.enemy_countdown>=0)&&(global.enemy_acting=0)&&(global.attack_fx=0)&&(global.player_wait_wait=0)&&(global.enemie_attack_count=0)
{
    global.enemy_countdown-=0.5;

}
if (global.enemy_countdown<0)&&(global.enemie_attack_count=0) &&(global.enemy_acting=0)&&(global.enemy_turn=1)&&(global.attack_fx=0)&&(global.player_wait_wait=0)
{
        /*if instance_exists(obj_shield_fx)*/ global.enemy_countdown=-5;
        global.enemy_turn=0;
        global.player_AP_current=global.player_AP;
        current_player_combat_state=player_combat_state.turn;
        instance_create(1080/2,1920/2,obj_sword_wipe);
        global.player_wait_wait=1;
}

//enemie wait wait turn
if (global.enemy_turn=1)&&(global.enemy_countdown>=0)&&(global.enemy_acting=0)&&(global.attack_fx=0)&&(global.player_wait_wait=1)&&(global.enemie_attack_count=0)
{
    global.enemy_countdown-=0.5;

}
if (global.enemy_countdown<0)&&(global.enemie_attack_count=0) &&(global.enemy_acting=0)&&(global.enemy_turn=1)&&(global.attack_fx=0)&&(global.player_wait_wait=1)
{
        global.enemy_countdown=16;
        global.player_wait_wait=0;
        /*global.enemy_acting=0;*/
}

if (instance_exists(obj_turn_halo)) obj_turn_halo.destroy=1;

/*//unload audio on start up
if(audio_unload=1){scr_sfx_unloader();audio_unload=0;}*/

//player_choice_reset
scr_player_choice(0,0,0,0,0,0,0);
