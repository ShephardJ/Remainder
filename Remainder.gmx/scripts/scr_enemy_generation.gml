// enemies
global.enemiesl1=0;
global.enemiesl2=0;
global.enemiesl3=0;

if (global.power_level>0)&&(global.boss=0)
{
    do
    {
        //l1
        if(global.enemiesl1<global.spawn_cap)&&(global.power_level>0)
        {
            role=irandom_range(0,8);
            if(0<=role)&&(role<=2){/*do nothing*/}
            if(role>=3)&&(role<=5){scr_enemy_spawn(1,1); global.enemiesl1=global.enemiesl1+1;}
            if(6=role)||(role=7){scr_enemy_spawn(1,2); global.enemiesl1=global.enemiesl1+1;}
            if(role=8){scr_enemy_spawn(1,3); global.enemiesl1=global.enemiesl1+1;}
        }
        
        //l2
        if(global.enemiesl2<global.spawn_cap)&&(global.power_level>0)
        {
            role=irandom_range(0,8);
            if(0<=role)&&(role<=2){/*do nothing*/}
            if(role>=3)&&(role<=5){scr_enemy_spawn(2,1); global.enemiesl2=global.enemiesl2+1;}
            if(role=6)||(role=7){scr_enemy_spawn(2,2); global.enemiesl2=global.enemiesl2+1;}
            if(role=8){scr_enemy_spawn(2,3); global.enemiesl2=global.enemiesl2+1;}
        }
        
        //l3
        if(global.enemiesl3<global.spawn_cap)&&(global.power_level>0)
        {
            role=irandom_range(0,8);
            if(0<=role)&&(role<=2){/*do nothing*/}
            if(role>=3)&&(role<=5){scr_enemy_spawn(3,1); global.enemiesl3=global.enemiesl3+1;}
            if(role=6)||(role=7){scr_enemy_spawn(3,2); global.enemiesl3=global.enemiesl3+1;}
            if(role=8){scr_enemy_spawn(3,3); global.enemiesl3=global.enemiesl3+1;}
        }
    
    }

    until ((global.power_level<=0)||((global.enemiesl1=global.spawn_cap)&&(global.enemiesl2=global.spawn_cap)&&(global.enemiesl3=global.spawn_cap)));
}
if(global.boss=1) {boss=instance_create(94,244,obj_red_dragon_body);current_player_combat_state=player_combat_state.turn;current_combat_state=combat_state.player_turn ;global.enemie_total=1;return 1;}
if(global.boss=2) {boss=instance_create(476,271,obj_litch);current_player_combat_state=player_combat_state.init;current_combat_state=combat_state.player_turn ;global.enemie_total=1;global.player_AP_current=0;return 1;}
if(global.boss=4) {boss=instance_create(0,-600,obj_airship);current_player_combat_state=player_combat_state.init;current_combat_state=combat_state.player_turn ;global.enemie_total=1;global.player_AP_current=0;boss.extra_money=1;return 1;}
if(global.boss=3) {boss=instance_create(0,-600,obj_airship);current_player_combat_state=player_combat_state.init;current_combat_state=combat_state.player_turn ;global.enemie_total=1;global.player_AP_current=0;boss.fight_phase=2;boss.fight_state=1;boss.extra_money=0;return 1;}
if(global.boss=5) {boss=instance_create(155+irandom(2)*320,271+irandom(2)*240,obj_horseman_head);current_player_combat_state=player_combat_state.init;current_combat_state=combat_state.player_turn ;global.enemie_total=1;global.player_AP_current=0;return 1;}
if(global.boss=6) 
{
    if room=arcade_mode {scr_pesant_spawn_3_by_5(global.fight_round);global.wait_for_reposition=1;;current_player_combat_state=player_combat_state.turn;current_combat_state=combat_state.player_turn ;global.enemie_total=1;return 1;}
    else {if global.current_world=0 var rs=0;if global.current_world=1||global.current_world=2 var rs=1;if global.current_world>2 var rs=2; scr_pesant_spawn_3_by_5(rs*4+4);global.wait_for_reposition=1;;current_player_combat_state=player_combat_state.turn;current_combat_state=combat_state.player_turn ;global.enemie_total=1;return 1;}
}
if(global.boss=7) {player_wait_wait_array[14]=1;boss=instance_create(476,271,obj_general);current_player_combat_state=player_combat_state.turn;current_combat_state=combat_state.player_turn ;global.enemie_total=1;return 1;}
if(global.boss=8) {boss=instance_create(94,244,obj_blue_dragon_body);current_player_combat_state=player_combat_state.turn;current_combat_state=combat_state.player_turn ;global.enemie_total=1;return 1;}


//set up next step
global.wait_for_reposition=(global.enemiesl1+global.enemiesl2+global.enemiesl3);
global.enemie_total=(global.enemiesl1+global.enemiesl2+global.enemiesl3);
current_player_combat_state=player_combat_state.init;
current_combat_state=combat_state.player_turn;

