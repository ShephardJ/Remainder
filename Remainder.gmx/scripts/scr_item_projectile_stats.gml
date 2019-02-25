#define scr_item_projectile_stats
//set position
    if (vertical_attack=1)var position=170;
    if (vertical_attack=2)var position=490;
    if (vertical_attack=3)var position=810;
    //set stats for item
    
    //bow classic
    if (global.item_id=1)
    {
        var damage_type_1=0;
        var damage_1=5;
        var damage_type_2=0;
        var damage_2=0;
        var range=5;
        AP_use=1
    }
    //bow classic fire
    if (global.item_id=2)
    {
        var damage_type_1=0;
        var damage_1=3;
        var damage_type_2=2;
        var damage_2=2;
        var range=5;
        AP_use=1
    }
    //bow classic ice
    if (global.item_id=3)
    {
        var damage_type_1=0;
        var damage_1=3;
        var damage_type_2=3;
        var damage_2=2;
        var range=5;
        AP_use=1
    }
    //bow classic poison
    if (global.item_id=4)
    {
        var damage_type_1=0;
        var damage_1=3;
        var damage_type_2=4;
        var damage_2=2;
        var range=5;
        AP_use=1
    }
    
    //bow pierce
    if (global.item_id=5)
    {
        var damage_type_1=0;
        var damage_1=5;
        var damage_type_2=0;
        var damage_2=0;
        var range=4;
        AP_use=1
    }
    //bow pierce fire
    if (global.item_id=6)
    {
        var damage_type_1=0;
        var damage_1=3;
        var damage_type_2=2;
        var damage_2=2;
        var range=4;
        AP_use=1
    }
    //bow pierce ice
    if (global.item_id=7)
    {
        var damage_type_1=0;
        var damage_1=3;
        var damage_type_2=3;
        var damage_2=2;
        var range=4;
        AP_use=1
    }
    //bow pierce poison
    if (global.item_id=8)
    {
        var damage_type_1=0;
        var damage_1=3;
        var damage_type_2=4;
        var damage_2=2;
        var range=4;
        AP_use=1
    }
    
    //bow gold classic
    if (global.item_id=9)
    {
        var damage_type_1=0;
        var damage_1=10;
        var damage_type_2=0;
        var damage_2=0;
        var range=5;
        AP_use=1
    }
    //bow gold classic fire
    if (global.item_id=10)
    {
        var damage_type_1=0;
        var damage_1=6;
        var damage_type_2=2;
        var damage_2=4;
        var range=4;
        AP_use=1
    }
    //bow gold classic ice
    if (global.item_id=11)
    {
        var damage_type_1=0;
        var damage_1=6;
        var damage_type_2=3;
        var damage_2=4;
        var range=4;
        AP_use=1
    }
    //bow gold classic poison
    if (global.item_id=12)
    {
        var damage_type_1=0;
        var damage_1=6;
        var damage_type_2=4;
        var damage_2=4;
        var range=4;
        AP_use=1
    }
    
    //bow gold pierce
    if (global.item_id=13)
    {
        var damage_type_1=0;
        var damage_1=10;
        var damage_type_2=0;
        var damage_2=0;
        var range=4;
        AP_use=1
    }
    //bow gold pierce fire
    if (global.item_id=14)
    {
        var damage_type_1=0;
        var damage_1=6;
        var damage_type_2=2;
        var damage_2=4;
        var range=4;
        AP_use=1
    }
    //bow gold pierce ice
    if (global.item_id=15)
    {
        var damage_type_1=0;
        var damage_1=6;
        var damage_type_2=3;
        var damage_2=4;
        var range=4;
        AP_use=1
    }
    //bow gold pierce poison
    if (global.item_id=16)
    {
        var damage_type_1=0;
        var damage_1=6;
        var damage_type_2=4;
        var damage_2=4;
        var range=4;
        AP_use=1
    }
    
    //apply mult
    damage_1*=global.item_damage_mult;
    damage_2*=global.item_damage_mult;
    
    //launch script
    scr_item_projectile(position,damage_type_1,damage_1,damage_type_2,damage_2,range)
    vertical_attack=0;
    if(AP_use>global.player_AP_current)AP_use=global.player_AP_current;
    obj_overlay_test.AP_lost=AP_use;
    obj_overlay_test.temp_player_state=obj_overlay_test.current_player_combat_state
    obj_overlay_test.current_player_combat_state=player_combat_state.loosing_AP;

#define scr_item_aoe_stats
if (global.item_id<24)&&(global.item_id>20)||(global.item_id<30)&&(global.item_id>26)
{
//set attack_direction
    attack_direction=horizontal_attack-1;
    
    //set stats from item
    
    // fire wand
    if (global.item_id=21)
    {
        var damage_type_1=2;
        var damage_1=5;
        var damage_type_2=0;
        var damage_2=0;
        var yrange=2;
        AP_use=2;
    }
    
    //ice wand
    if (global.item_id=22)
    {
        var damage_type_1=3;
        var damage_1=5;
        var damage_type_2=0;
        var damage_2=0;
        var yrange=2;
        AP_use=2;
    }
    //poison wand
    if (global.item_id=23)
    {
        var damage_type_1=4;
        var damage_1=5;
        var damage_type_2=0;
        var damage_2=0;
        var yrange=2;
        AP_use=2;
    }
    
    // gold fire wand
    if (global.item_id=27)
    {
        var damage_type_1=2;
        var damage_1=10;
        var damage_type_2=0;
        var damage_2=0;
        var yrange=2;
        AP_use=2;
    }
    
    //gold ice wand
    if (global.item_id=28)
    {
        var damage_type_1=3;
        var damage_1=10;
        var damage_type_2=0;
        var damage_2=0;
        var yrange=2;
        AP_use=2;
    }
    //gold poison wand
    if (global.item_id=29)
    {
        var damage_type_1=4;
        var damage_1=10;
        var damage_type_2=0;
        var damage_2=0;
        var yrange=2;
        AP_use=2;
    }
    
    
    //apply mult
    damage_1=damage_1*global.item_damage_mult;
    damage_2=damage_2*global.item_damage_mult;
    //launch script

    scr_item_aoe(damage_type_1,damage_1,damage_type_2,damage_2,yrange,attack_direction)
    horizontal_attack=0;
    if(AP_use>global.player_AP_current)AP_use=global.player_AP_current;
    obj_overlay_test.AP_lost=AP_use;
    obj_overlay_test.temp_player_state=obj_overlay_test.current_player_combat_state
    obj_overlay_test.current_player_combat_state=player_combat_state.loosing_AP;
}

#define scr_item_aoe_stats_2
if (global.item_id<27)&&(global.item_id>23)||(global.item_id<33)&&(global.item_id>29)
{
// fire v wand
if (global.item_id=24)
{
    var damage_type_1=2;
    var damage_1=5;
    var damage_type_2=0;
    var damage_2=0;
    var yrange=3;
    AP_use=2;
}
    
//ice v wand
if (global.item_id=25)
{
    var damage_type_1=3;
    var damage_1=5;
    var damage_type_2=0;
    var damage_2=0;
    var yrange=3;
    AP_use=2;
}
//poison v wand
if (global.item_id=26)
{
    var damage_type_1=4;
    var damage_1=5;
    var damage_type_2=0;
    var damage_2=0;
    var yrange=3;
    AP_use=2;
}

// gold fire v wand
if (global.item_id=30)
{
    var damage_type_1=2;
    var damage_1=10;
    var damage_type_2=0;
    var damage_2=0;
    var yrange=3;
    AP_use=2;
}
    
//gold ice v wand
if (global.item_id=31)
{
    var damage_type_1=3;
    var damage_1=10;
    var damage_type_2=0;
    var damage_2=0;
    var yrange=3;
    AP_use=2;
}
//gold poison v wand
if (global.item_id=32)
{
    var damage_type_1=4;
    var damage_1=10;
    var damage_type_2=0;
    var damage_2=0;
    var yrange=3;
    AP_use=2;
}


//apply mult
damage_1=damage_1*global.item_damage_mult;
damage_2=damage_2*global.item_damage_mult;
//launch script

scr_item_aoe(damage_type_1,damage_1,damage_type_2,damage_2,yrange,vertical_attack)
vertical_attack=0;
if(AP_use>global.player_AP_current)AP_use=global.player_AP_current;
obj_overlay_test.AP_lost=AP_use;
obj_overlay_test.temp_player_state=obj_overlay_test.current_player_combat_state
obj_overlay_test.current_player_combat_state=player_combat_state.loosing_AP;
}

#define scr_item_movement_stats
//set position
    if (vertical_attack=1)var position=170;
    if (vertical_attack=2)var position=490;
    if (vertical_attack=3)var position=810;
    //set stats for item
    
    //gale stone
    if (global.item_id=41)
    {
        var damage_type_1=5;
        var damage_type_2=0;
        var push=1;
        var range=5;
        AP_use=1;
    }
    
    //pot of glue
    if (global.item_id=42)
    {
        var damage_type_1=1;
        var damage_type_2=1;
        var damage_1=4;
        var range=4;
        AP_use=1
    }
    
    //apply mult
    /*damage_1=damage_1*global.item_damage_mult;
    damage_2=damage_2*global.item_damage_mult;*/

    //launch script
    scr_item_movement(position,damage_type_1,damage_type_2,push,range)
    vertical_attack=0;
    if(AP_use>global.player_AP_current)AP_use=global.player_AP_current;
    obj_overlay_test.AP_lost=AP_use;
    obj_overlay_test.temp_player_state=obj_overlay_test.current_player_combat_state
    obj_overlay_test.current_player_combat_state=player_combat_state.loosing_AP;

#define scr_item_bomb_stats
//set position
    if (vertical_attack=1)var position=175;
    if (vertical_attack=2)var position=495;
    if (vertical_attack=3)var position=815;
    

// fire bomb
if (global.item_id=61)
{
    var damage_type_1=2;
    var damage_1=15;
    var damage_type_2=0;
    var damage_2=0;
    var yrange=3;
    AP_use=2;
}
    
//ice bomb
if (global.item_id=62)
{
    var damage_type_1=3;
    var damage_1=15;
    var damage_type_2=0;
    var damage_2=0;
    var yrange=3;
    AP_use=2;
}
//poison bomb
if (global.item_id=63)
{
    var damage_type_1=4;
    var damage_1=15;
    var damage_type_2=0;
    var damage_2=0;
    var yrange=3;
    AP_use=2;
}


//apply mult
damage_1=damage_1*global.item_damage_mult;
damage_2=damage_2*global.item_damage_mult;
//launch script

scr_item_bomb(position,damage_type_1,damage_1,damage_type_2,damage_2,yrange)
vertical_attack=0;
if(AP_use>global.player_AP_current)AP_use=global.player_AP_current;
obj_overlay_test.AP_lost=AP_use;
obj_overlay_test.temp_player_state=obj_overlay_test.current_player_combat_state
obj_overlay_test.current_player_combat_state=player_combat_state.loosing_AP;