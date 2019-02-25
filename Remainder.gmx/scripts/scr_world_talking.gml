if(master.exit_var=1)
{
    next_player_state=player_world_state.turn;
    current_player_state=player_world_state.transition;
    transition_count=0;
    transition_delay=0;
}
