
//initial setup
if (slow_potion_tick=0)
{
    slow_potion_tick=1;
    temp_player_potion=global.player_potion_current;
    player_heal_sound=audio_play_sound(snd_player_heal,5,false);
    audio_sound_gain(player_heal_sound,global.vol_fx*0.6,0);
    
}
//use of slow_potion_tick to slowly reduce potion bar
if((temp_player_potion-global.player_potion_current)<1)
{
    global.player_potion_current-=(sqr(0.1-(slow_potion_tick/1)));
    slow_potion_tick -=1.2;
} 
//end of slow potion going down
if((temp_player_potion-global.player_potion_current)>1)
{
    global.player_potion_current=(temp_player_potion-1);
    
}


//initial setup
if (slow_health_tick=0)
{
    //setup tick
    var health_check=global.player_health-global.player_health_current;
    if (health_check<global.potion_heal_amount)slow_health_tick=health_check;
    else slow_health_tick=global.potion_heal_amount;
    //potion switch out
    temp_potion_heal_amount=global.potion_heal_amount;
    if (global.potion_heal_amount>health_check)global.potion_heal_amount=health_check;
    temp_player_health=global.player_health_current;
}
//use of slow_health_tick to slowly increase health bar
if((global.player_health_current-temp_player_health)<global.potion_heal_amount)
{
    global.player_health_current+=(sqr(0.1-(slow_health_tick/global.potion_heal_amount)));
    slow_health_tick +=0.8;
} 
//end of slow damage going down
if((global.player_health_current-temp_player_health)>global.potion_heal_amount)
{
    global.player_health_current=(temp_player_health+global.potion_heal_amount);
    if(global.player_health_current>global.player_health)global.player_health_current=global.player_health;
    
}


//go to AP
if(global.player_health_current=(temp_player_health+global.potion_heal_amount))&&(global.player_potion_current=(temp_player_potion-1))
{
    global.potion_heal_amount=temp_potion_heal_amount;
    slow_potion_tick=0
    slow_health_tick=0;
    temp_player_health=0;
    temp_potion_tick=0;
    AP_lost=1;
    current_player_combat_state=player_combat_state.loosing_AP;
}




