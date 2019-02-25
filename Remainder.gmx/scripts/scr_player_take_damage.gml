//initial setup
if (slow_health_tick=0)
{
    slow_health_tick=5;
    temp_player_health=global.player_health_current;
    //play hit sfx
    player_hit_sound=audio_play_sound(audio_player_hit,5,false);
    audio_sound_gain(player_hit_sound,global.vol_fx*0.6,0);
}

//apply resistances


//use of slow_health_tick to slowly reduce health bar
if((temp_player_health-global.player_health_current)<damage_taken)
{
    global.player_health_current-=(sqr(0.1-(slow_health_tick/damage_taken)));
    slow_health_tick +=0.8;
} 
//end of slow damage going down
if((temp_player_health-global.player_health_current)>damage_taken)
{
    global.player_health_current=(temp_player_health-damage_taken);
    damage_taken=0;
    damage_taken_1=0;
    damage_taken_2=0;
    slow_health_tick=0;
    temp_player_health=0;
    current_player_combat_state=player_combat_state.waiting;
}




