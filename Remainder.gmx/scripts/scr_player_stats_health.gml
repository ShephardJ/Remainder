#define scr_player_stats_health
if global.health_upgrade_stat=0
{
    global.player_health_bonus=0;
    global.poison_resist_bonus=0;
}

if global.health_upgrade_stat=1
{
    global.player_health_bonus=5;
    global.poison_resist_bonus=-0.1;
}

if global.health_upgrade_stat=2
{
    global.player_health_bonus=10;
    global.poison_resist_bonus=-0.2;
}

if global.health_upgrade_stat=3
{
    global.player_health_bonus=15;
    global.poison_resist_bonus=-0.3;
}

if global.health_upgrade_stat=4
{
    global.player_health_bonus=20;
    global.poison_resist_bonus=-0.4;
}

if global.health_upgrade_stat=5
{
    global.player_health_bonus=30;
    global.poison_resist_bonus=-0.5;
}

global.player_health=20+global.player_health_bonus;
if !(room=fight_room) global.player_health_current=global.player_health;

#define scr_player_stats_weapons
if global.weapon_damage_stat=0
{
    global.weapon_damage_mult=1;
    global.item_damage_mult=1;
    global.AP_level_bonus=0;
}

if global.weapon_damage_stat=1
{
    global.weapon_damage_mult=1.05;
    global.item_damage_mult=1.05;
    global.AP_level_bonus=0;
}

if global.weapon_damage_stat=2
{
    global.weapon_damage_mult=1.1;
    global.item_damage_mult=1.1;
    global.AP_level_bonus=0;
}

if global.weapon_damage_stat=3
{
    global.weapon_damage_mult=1.20;
    global.item_damage_mult=1.20;
    global.AP_level_bonus=0;
}

if global.weapon_damage_stat=4
{
    global.weapon_damage_mult=1.3;
    global.item_damage_mult=1.3;
    global.AP_level_bonus=0;
}

if global.weapon_damage_stat=5
{
    global.weapon_damage_mult=1.5;
    global.item_damage_mult=1.5;
    global.AP_level_bonus=1;
}

global.player_AP=2+global.AP_level_bonus+global.AP_shield_bonus=0;
global.player_AP_current=global.player_AP;

#define scr_player_stats_potions
if global.potion_stat=0
{
    global.potion_bonus=0;
    global.potion_heal_bonus=0;
}

if global.potion_stat=1
{
    global.potion_bonus=0;
    global.potion_heal_bonus=5;
}

if global.potion_stat=2
{
    global.potion_bonus=1;
    global.potion_heal_bonus=10;
}

if global.potion_stat=3
{
    global.potion_bonus=1;
    global.potion_heal_bonus=15;
}

if global.potion_stat=4
{
    global.potion_bonus=2;
    global.potion_heal_bonus=20;
}

if global.potion_stat=5
{
    global.potion_bonus=3;
    global.potion_heal_bonus=25;
}
global.player_potion=3+global.potion_bonus;