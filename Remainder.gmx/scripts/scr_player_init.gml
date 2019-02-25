touch_type=0;
//wait for first replacement then launch range reposition
if(global.wait_for_reposition=0)
{
    scr_reposition();
}
if (global.repositioned=1) 
{

    current_player_combat_state=player_combat_state.turn;
}
attcount=0
turnlock=0
vlock=0
hlock=0
