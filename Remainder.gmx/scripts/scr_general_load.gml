#define scr_general_load
ini_open(argument0);

//player
global.player_health_current=ini_read_real("Player","HP",20);
global.player_health=ini_read_real("Player","MaxHP",20);
global.player_AP=ini_read_real("Player","AP",2);
global.player_AP_current=ini_read_real("Player","MaxAP",2);
global.weapon_id=ini_read_real("Player","WeaponID",1);
global.shield_id=ini_read_real("Player","ShieldID",1);
global.item_id=ini_read_real("Player","ItemID",1);
global.health_upgrade_stat=ini_read_real("Player","HealthUP",0);
global.weapon_damage_stat=ini_read_real("Player","WeaponUP",0);
global.potion_stat=ini_read_real("Player","PotionUP",0);
global.gold=ini_read_real("Player","Gold",50);

ini_close();

#define scr_point_load
ini_open(argument0);

//Game
global.current_world=ini_read_real("Game","World",0);
global.world_player_point=ini_read_real("Game","Point",0);
global.burn_tile=ini_read_real("Game","burn",0);

var a1=0;
var a2=0;

do
{
    global.point_array[a1,a2]=ini_read_real(string(a1),string(a2),-1);
    a2+=1
    if a2>9
    {
        a1+=1;
        a2=0;
    }
}
until a1=41;


ini_close();

#define scr_info_load
ini_open(argument0);

var a1=0;
var a2=0;

do
{
    
    if a2=0||(a2>=2&&a2<=5)||(a2>=10&&a2<=11)||(a2>=14&&a2<=17)||(a2>=22&&a2<=25)
    {
        var check=ini_read_string(string(a1),string(a2),-1);
        if check="-1.000000" global.info_array[a1,a2]=ini_read_real(string(a1),string(a2),-1);  
        else global.info_array[a1,a2]=ini_read_string(string(a1),string(a2),-1);
    }
    
    else global.info_array[a1,a2]=ini_read_real(string(a1),string(a2),-1);  

    a2+=1
    if a2>29
    {
        a1+=1;
        a2=0;
    }
}
until a1=7;
ini_close();

#define scr_world_load
ini_open(argument0);

var a1=0;
var a2=0;

do
{
    global.world_array[a1,a2]=ini_read_real(string(a1),string(a2),-1);
    a2+=1
    if a2>6
    {
        a1+=1;
        a2=0;
    }
}
until a1=7;
ini_close();

#define scr_tile_load
ini_open(argument0);

var a1=0;
var a2=0;

do
{
    if !(a2=1)global.tile_array[a1,a2]=ini_read_real(string(a1),string(a2),-1);
    else 
    {
         var check=ini_read_string(string(a1),string(a2),-1);
        if check="-1.000000" global.tile_array[a1,a2]=ini_read_real(string(a1),string(a2),-1);
        else global.tile_array[a1,a2]=ini_read_string(string(a1),string(a2),-1);
    }
    
    a2+=1
    if a2>4
    {
        a1+=1;
        a2=0;
    }
}
until a1=31;
ini_close();
#define scr_load_pro
ini_open(argument0);

//player
global.progress=ini_read_real("Pro","total",0);
global.gold_accumulated=ini_read_real("pro","accumulated",0);
global.character=ini_read_real("Pro","character",0);
ini_close();