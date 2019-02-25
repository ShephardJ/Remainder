if  global.point_array[global.world_player_point,0]=3
{
    if (global.point_array[global.world_player_point,2]=1)
    {
        if global.current_world<3
        {
        //goto next
        next_player_state=player_world_state.travel;
        current_player_state=player_world_state.transition;
        return 0;
        }
        else
        {
            global.progress+=global.gold_accumulated;
            global.gold_accumulated=0;
            room_goto(room1);
        }
    }
    else
    {
        global.next_player_room=fight_room;
        global.boss=global.world_array[global.current_world,1];
        next_player_state=player_world_state.turn;
        current_player_state=player_world_state.transition;
        return 0;
    }
}
else 
{
    //shop
    if global.point_array[global.world_player_point,0]=0 && !(global.point_array[global.world_player_point,2]=1)
    {
        global.next_player_room=-1;
        next_player_state=player_world_state.talking;
        current_player_state=player_world_state.transition;
        return 0;
    }
    //fight
    if global.point_array[global.world_player_point,0]=1 && !(global.point_array[global.world_player_point,2]=1)
    {
        scr_world_fight();
        global.next_player_room=fight_room;
        global.boss=0;
        next_player_state=player_world_state.turn;
        current_player_state=player_world_state.transition;
        return 0;
    }
    //shop
    if global.point_array[global.world_player_point,0]=2 && !(global.point_array[global.world_player_point,2]=1)
    {
        global.next_player_room=-1;
        next_player_state=player_world_state.shoping;
        current_player_state=player_world_state.transition;
        return 0;
    }
    //nothing
    else
    {
        global.world_player_point=0;
        current_player_state=player_world_state.turn;
    }
}
