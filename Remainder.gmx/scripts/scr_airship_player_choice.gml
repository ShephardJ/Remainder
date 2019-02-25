if instance_exists(obj_airship_cannon_ball)
{
    if (place_meeting(240,1240,all))||(place_meeting(580,1240,all))||(place_meeting(860,1240,all))scr_player_choice(8/60,0,0,0,0,0,0)
    else scr_player_choice(8/60,0,0,0,0,1,0)
}
else scr_player_choice(8/60,0,0,0,0,1,0)
