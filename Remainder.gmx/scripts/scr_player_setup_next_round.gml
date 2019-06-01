//start up
if (transition_start=1)
{
    global.player_AP_current=global.player_AP;
    global.fight_round+=1;
    scr_range_reset();
    
    if global.difficult=0
    {
        //set spawn cap
        if (global.fight_round>0) global.spawn_cap=2;
        if (global.fight_round>5) global.spawn_cap=3;
        if (global.fight_round>10) global.spawn_cap=4;
        //set 
        if (global.fight_round>1) global.fight_difficulty=1;
        if (global.fight_round>5) global.fight_difficulty=2;
        if (global.fight_round>7) global.fight_difficulty=3;
        if (global.fight_round>9) global.fight_difficulty=4;
    }
    
    if global.difficult>0
    {
        //set spawn cap
        if (global.fight_round>0) global.spawn_cap=2;
        if (global.fight_round>3) global.spawn_cap=3;
        if (global.fight_round>8) global.spawn_cap=4;
        //set 
        if (global.fight_round>1) global.fight_difficulty=1;
        if (global.fight_round>3) global.fight_difficulty=2;
        if (global.fight_round>5) global.fight_difficulty=3;
        if (global.fight_round>7) global.fight_difficulty=4;
    }
    //set world
    if global.fight_round<13global.world=fight_round_array[global.fight_round];
    else
    {
        current_player_combat_state=player_combat_state.off;
    
        
        
        room_goto(win_room);
    }
    
    transition_start=0;
}
//action based on upcoming round
if(global.fight_round=2)||(global.fight_round=6)||(global.fight_round=10){scr_player_shop_transition();}
if(global.fight_round=1)||(global.fight_round=3)||(global.fight_round=7)||(global.fight_round=11)scr_player_transition();
if(global.fight_round=4)||(global.fight_round=8)||(global.fight_round=12){scr_player_transition();global.boss=fight_round_array[global.fight_round]; if instance_exists(obj_play_dynamic_music)obj_play_dynamic_music.destroy=1; global.change_music=1;}
if(global.fight_round=5)||(global.fight_round=9){scr_player_transition();global.boss=0;if instance_exists(obj_play_dynamic_music)obj_play_dynamic_music.destroy=1;global.change_music=1;}
//switch out
if (transition_start=0)&&(transition_end=1)
{
    scr_stats_calculation();
    current_combat_state = combat_state.starting;
    current_player_combat_state=player_combat_state.off;
    transition_end=0;
}
