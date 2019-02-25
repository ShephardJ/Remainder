//draw player hp bar
draw_stuff=instance_create(-5,-5,obj_player_health_box)
with draw_stuff
{
    TLX=254;
    TLY=1733;
    BRX=830;
    BRY=1815;
    ATLY=1824;
    ABRY=1910;
    PTLX=85;
    PTLY=1799;
    PBRX=163;
    PBRY=1864;
}
//variable dump
global.repositioned=0;
global.getting_input=0;
global.gone_back=1;

//visuals
player_choice_1=instance_create(253,1507,obj_player_choice_main);
player_choice_2=instance_create(253+192,1507,obj_player_choice_main);
player_choice_3=instance_create(253+385,1507,obj_player_choice_main);

//set power level based on world
if global.difficult=0
{
    if (global.fight_difficulty=0) wave_role=irandom_range(0,5);
    if (global.fight_difficulty=1) wave_role=irandom_range(6,10);
    if (global.fight_difficulty=2) wave_role=irandom_range(11,15);
    if (global.fight_difficulty=3) wave_role=irandom_range(15,20);
    global.power_level=1+wave_role
}
if global.difficult=1
{
    if (global.fight_difficulty=0) wave_role=irandom_range(0,8);
    if (global.fight_difficulty=1) wave_role=irandom_range(9,13);
    if (global.fight_difficulty=2) wave_role=irandom_range(14,19);
    if (global.fight_difficulty=3) wave_role=irandom_range(20,25);
    global.power_level=1+wave_role
}
if global.difficult=2
{
    if (global.fight_difficulty=0) wave_role=irandom_range(0,10);
    if (global.fight_difficulty=1) wave_role=irandom_range(11,16);
    if (global.fight_difficulty=2) wave_role=irandom_range(17,22);
    if (global.fight_difficulty=3) wave_role=irandom_range(23,28);
    global.power_level=1+wave_role
}
global.wait_for_reposition=1;

//enemy_generation
current_combat_state=combat_state.setting_up


