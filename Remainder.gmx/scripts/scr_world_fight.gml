global.world=global.world_array[global.current_world,0];

if global.current_world=0
{
    if global.point_array[global.world_player_point,1]<2
    {
        global.spawn_cap=1;
        global.fight_difficulty=0;
    }
    if global.point_array[global.world_player_point,1]=2
    {
        global.spawn_cap=irandom_range(1,2)
        global.fight_difficulty=irandom(1);
    }
    if global.point_array[global.world_player_point,1]=3
    {
        global.spawn_cap=irandom_range(1,2);
        global.fight_difficulty=1;
    }
}

if global.current_world=1||global.current_world=2
{
    if global.point_array[global.world_player_point,1]<2
    {
        global.spawn_cap=irandom_range(1,2)
        global.fight_difficulty=1;
    }
    if global.point_array[global.world_player_point,1]=2
    {
        global.spawn_cap=2
        global.fight_difficulty=irandom_range(1,2)
    }
    if global.point_array[global.world_player_point,1]=3
    {
        global.spawn_cap=irandom_range(2,3)
        global.fight_difficulty=2
    }
}

if global.current_world>2
{
    if global.point_array[global.world_player_point,1]<2
    {
        global.spawn_cap=3
        global.fight_difficulty=2;
    }
    if global.point_array[global.world_player_point,1]=2
    {
        global.spawn_cap=irandom_range(3,4)
        global.fight_difficulty=irandom_range(2,3)
    }
    if global.point_array[global.world_player_point,1]=3
    {
        global.spawn_cap=4
        global.fight_difficulty=3
    }
}
