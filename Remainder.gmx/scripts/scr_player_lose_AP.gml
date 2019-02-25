//initial setup
if (slow_AP_tick=0)
{
    slow_AP_tick=1;
    temp_player_AP=global.player_AP_current;
}
//use ofslow_AP_tick to slowly reduce health bar
if((temp_player_AP-global.player_AP_current)<AP_lost)
{
    global.player_AP_current-=(sqr(0.1-(slow_AP_tick/AP_lost)));
    slow_AP_tick +=1.2;
} 
//end of slow AP going down
if((temp_player_AP-global.player_AP_current)>AP_lost)
{
    global.player_AP_current=(temp_player_AP-AP_lost);
    AP_lost=0;
    slow_AP_tick=0;
    temp_player_AP=0;
    if(global.player_AP_current<0)global.player_AP_current=0;
    if !(temp_player_state=player_combat_state.choose_health_potion)current_player_combat_state=temp_player_state;
    else current_player_combat_state=player_combat_state.turn;
}




