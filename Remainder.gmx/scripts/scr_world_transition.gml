if (transition_count=0)&&(transition_delay=0)&&(!instance_exists (obj_transitions))
{
    transition=instance_create(1080/2,1920/2,obj_transitions);
}
if instance_exists(obj_transitions)
{
    if (transition_count=0)&&(transition.image_speed=0)
    {
        if !(room=startup)&&!(room=arcade_mode)&&!(room=room1)
        {
            scr_general_save("save.sav");
            scr_point_save("point.sav");
            scr_world_save("world.sav");
            scr_info_save("info.sav");
            scr_tile_save("tile.sav");
            scr_save_pro("pro.sav");
        }
        transition.destroy=1;
        transition_delay=1;
        if instance_exists(master){ master.destroy=1;}
        if next_player_state=player_world_state.shoping master=instance_create(0,0,obj_shop_master);
        if next_player_state=player_world_state.talking master=instance_create(0,0,obj_world_talk);
        if next_player_state=player_world_state.travel  instance_create(0,0,obj_world_travel);
        if !(global.next_player_room=-1)
        {
            global.next_transition=transition.transitions;
            var nxt_rm=global.next_player_room;
            if nxt_rm=fight_room global.next_player_room=room5;
            else global.next_player_room=-1;
            room_goto(nxt_rm);
        }
    }
}

if (transition_count=0)&&(transition_delay=1)&&(!instance_exists (obj_transitions) )
{
    transition_count=0;
    transition_delay=0;
    current_player_state=next_player_state;
}

