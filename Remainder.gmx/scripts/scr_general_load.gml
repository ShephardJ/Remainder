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
#define scr_load_kills
ini_open(argument0);

global.skeleton0=ini_read_real("skeleton","0",0);
global.skeleton1=ini_read_real("skeleton","1",0);
global.skeleton2=ini_read_real("skeleton","2",0);

global.blob0=ini_read_real("blob","0",0);
global.blob1=ini_read_real("blob","1",0);
global.blob2=ini_read_real("blob","2",0);
global.blob3=ini_read_real("blob","3",0);
global.blob4=ini_read_real("blob","4",0);

global.zombie0=ini_read_real("zombie","0",0);
global.zombie1=ini_read_real("zombie","1",0);
global.zombie2=ini_read_real("zombie","2",0);
global.zombie3=ini_read_real("zombie","3",0);

global.lizard0=ini_read_real("lizard","0",0);
global.lizard1=ini_read_real("lizard","1",0);
global.lizard2=ini_read_real("lizard","2",0);
global.lizard3=ini_read_real("lizard","3",0);
global.lizard4=ini_read_real("lizard","4",0);

global.golem0=ini_read_real("golem","0",0);
global.golem1=ini_read_real("golem","1",0);
global.golem2=ini_read_real("golem","2",0);
global.golem3=ini_read_real("golem","3",0);
global.golem4=ini_read_real("golem","4",0);

global.wizard0=ini_read_real("wizard","0",0);
global.wizard1=ini_read_real("wizard","1",0);
global.wizard2=ini_read_real("wizard","2",0);
global.wizard3=ini_read_real("wizard","3",0);
global.wizard4=ini_read_real("wizard","4",0);
global.wizard5=ini_read_real("wizard","5",0);

global.soldier0=ini_read_real("soldier","0",0);
global.soldier1=ini_read_real("soldier","1",0);
global.soldier2=ini_read_real("soldier","2",0);
global.soldier3=ini_read_real("soldier","3",0);
global.soldier4=ini_read_real("soldier","4",0);
global.soldier5=ini_read_real("soldier","5",0);
global.soldier6=ini_read_real("soldier","6",0);
global.soldier7=ini_read_real("soldier","7",0);

global.heads0=ini_read_real("heads","0",0);
global.heads1=ini_read_real("heads","1",0);

global.spiders0=ini_read_real("spiders","0",0);
global.spiders1=ini_read_real("spiders","1",0);
global.spiders2=ini_read_real("spiders","2",0);
global.spiders3=ini_read_real("spiders","3",0);

global.cleric0=ini_read_real("cleric","0",0);

global.pesant0=ini_read_real("pesant","0",0);
global.pesant1=ini_read_real("pesant","1",0);
global.pesant2=ini_read_real("pesant","2",0);
global.pesant3=ini_read_real("pesant","3",0);
global.pesant4=ini_read_real("pesant","4",0);

global.syphon0=ini_read_real("syphon","0",0);

global.mole0=ini_read_real("mole","0",0);
global.mole1=ini_read_real("mole","1",0);

global.crab0=ini_read_real("crab","0",0);
global.crab1=ini_read_real("crab","1",0);
ini_close();