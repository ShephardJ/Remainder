#define scr_general_save
if file_exists(argument0) file_delete(argument0);
ini_open(argument0);

//player
ini_write_real("Player","HP",global.player_health_current);
ini_write_real("Player","MaxHP",global.player_health);
ini_write_real("Player","AP",global.player_AP);
ini_write_real("Player","MaxAP",global.player_AP_current);
ini_write_real("Player","WeaponID",global.weapon_id);
ini_write_real("Player","ShieldID",global.shield_id);
ini_write_real("Player","ItemID",global.item_id);
ini_write_real("Player","HealthUP",global.health_upgrade_stat);
ini_write_real("Player","WeaponUP",global.weapon_damage_stat);
ini_write_real("Player","PotionUP",global.potion_stat);
ini_write_real("Player","Gold",global.gold);

ini_close();

#define scr_point_save
if file_exists(argument0) file_delete(argument0);
ini_open(argument0);

//Game
ini_write_real("Game","World",global.current_world);
ini_write_real("Game","Point",global.world_player_point);
ini_write_real("Game","burn",global.burn_tile);

var a1=0;
var a2=0;

do
{
    ini_write_real(string(a1),string(a2),global.point_array[a1,a2]);
    a2+=1
    if a2>9
    {
        a1+=1;
        a2=0;
    }
}
until a1=41;


ini_close();


#define scr_world_save
if file_exists(argument0) file_delete(argument0);
ini_open(argument0);

//0
ini_write_real("0","0",global.world_array[0,0]);
ini_write_real("0","1",global.world_array[0,1]);
ini_write_real("0","2",global.world_array[0,2]);
ini_write_real("0","3",global.world_array[0,3]);
ini_write_real("0","4",global.world_array[0,4]);
ini_write_real("0","5",global.world_array[0,5]);
ini_write_real("0","6",global.world_array[0,6]);
//1
ini_write_real("1","0",global.world_array[1,0]);
ini_write_real("1","1",global.world_array[1,1]);
ini_write_real("1","2",global.world_array[1,2]);
ini_write_real("1","3",global.world_array[1,3]);
ini_write_real("1","4",global.world_array[1,4]);
ini_write_real("1","5",global.world_array[1,5]);
ini_write_real("1","6",global.world_array[1,6]);
//2
ini_write_real("2","0",global.world_array[2,0]);
ini_write_real("2","1",global.world_array[2,1]);
ini_write_real("2","2",global.world_array[2,2]);
ini_write_real("2","3",global.world_array[2,3]);
ini_write_real("2","4",global.world_array[2,4]);
ini_write_real("2","5",global.world_array[2,5]);
ini_write_real("2","6",global.world_array[2,6]);
//3
ini_write_real("3","1",global.world_array[3,0]);
ini_write_real("3","1",global.world_array[3,1]);
ini_write_real("3","2",global.world_array[3,2]);
ini_write_real("3","3",global.world_array[3,3]);
ini_write_real("3","4",global.world_array[3,4]);
ini_write_real("3","5",global.world_array[3,5]);
ini_write_real("3","6",global.world_array[3,6]);
//4
ini_write_real("4","0",global.world_array[4,0]);
ini_write_real("4","1",global.world_array[4,1]);
ini_write_real("4","2",global.world_array[4,2]);
ini_write_real("4","3",global.world_array[4,3]);
ini_write_real("4","4",global.world_array[4,4]);
ini_write_real("4","5",global.world_array[4,5]);
ini_write_real("4","6",global.world_array[4,6]);
//5
ini_write_real("5","0",global.world_array[5,0]);
ini_write_real("5","1",global.world_array[5,1]);
ini_write_real("5","2",global.world_array[5,2]);
ini_write_real("5","3",global.world_array[5,3]);
ini_write_real("5","4",global.world_array[5,4]);
ini_write_real("5","5",global.world_array[5,5]);
ini_write_real("5","6",global.world_array[5,6]);
//6
ini_write_real("6","0",global.world_array[6,0]);
ini_write_real("6","1",global.world_array[6,1]);
ini_write_real("6","2",global.world_array[6,2]);
ini_write_real("6","3",global.world_array[6,3]);
ini_write_real("6","4",global.world_array[6,4]);
ini_write_real("6","5",global.world_array[6,5]);
ini_write_real("6","6",global.world_array[6,6]);

ini_close();

#define scr_info_save
if file_exists(argument0) file_delete(argument0);
ini_open(argument0);

var a1=0;
var a2=0;

do
{
    if is_string(global.info_array[a1,a2])ini_write_string(string(a1),string(a2),global.info_array[a1,a2]);
    else ini_write_real(string(a1),string(a2),global.info_array[a1,a2]);
    a2+=1
    if a2>29
    {
        a1+=1;
        a2=0;
    }
}
until a1=7;
ini_close();

#define scr_tile_save
if file_exists(argument0) file_delete(argument0);
ini_open(argument0);

var a1=0;
var a2=0;

do
{
    
    if a2=1 
    {
        if global.tile_array[a1,a2]=-1 ini_write_real(string(a1),string(a2),global.tile_array[a1,a2]);
        else ini_write_string(string(a1),string(a2),global.tile_array[a1,a2]);
    }
    else ini_write_real(string(a1),string(a2),global.tile_array[a1,a2]);
    a2+=1
    if a2>4
    {
        a1+=1;
        a2=0;
    }
}
until a1=31;
ini_close();

#define scr_options_save
if file_exists(argument0) file_delete(argument0);
ini_open(argument0);

//options
ini_write_real("Options","Difficult",global.difficult);
ini_write_real("Options","vol_fx",global.vol_fx);
ini_write_real("Options","vol_music",global.vol_music);

ini_close();
#define scr_save_pro
if file_exists(argument0) file_delete(argument0);
ini_open(argument0);

//player
ini_write_real("Pro","total",global.progress);
ini_write_real("pro","accumulated",global.gold_accumulated);
ini_write_real("Pro","character",global.character);
ini_close();
#define scr_save_kills
if file_exists(argument0) file_delete(argument0);
ini_open(argument0);

//skeleton
ini_write_real("skeleton","0",global.skeleton0);
ini_write_real("skeleton","1",global.skeleton1);
ini_write_real("skeleton","2",global.skeleton2);

//blob
ini_write_real("blob","0",global.blob0);
ini_write_real("blob","1",global.blob1);
ini_write_real("blob","2",global.blob2);
ini_write_real("blob","3",global.blob3);
ini_write_real("blob","4",global.blob4);

//zombie
ini_write_real("zombie","0",global.zombie0);
ini_write_real("zombie","1",global.zombie1);
ini_write_real("zombie","2",global.zombie2);
ini_write_real("zombie","3",global.zombie3);

//lizard
ini_write_real("lizard","0",global.lizard0);
ini_write_real("lizard","1",global.lizard1);
ini_write_real("lizard","2",global.lizard2);
ini_write_real("lizard","3",global.lizard3);
ini_write_real("lizard","4",global.lizard4);

//golem
ini_write_real("golem","0",global.golem0);
ini_write_real("golem","1",global.golem1);
ini_write_real("golem","2",global.golem2);
ini_write_real("golem","3",global.golem3);
ini_write_real("golem","4",global.golem4);

//wizard
ini_write_real("wizard","0",global.wizard0);
ini_write_real("wizard","1",global.wizard1);
ini_write_real("wizard","2",global.wizard2);
ini_write_real("wizard","3",global.wizard3);
ini_write_real("wizard","4",global.wizard4);
ini_write_real("wizard","5",global.wizard5);

//soldier
ini_write_real("soldier","0",global.soldier0);
ini_write_real("soldier","1",global.soldier1);
ini_write_real("soldier","2",global.soldier2);
ini_write_real("soldier","3",global.soldier3);
ini_write_real("soldier","4",global.soldier4);
ini_write_real("soldier","5",global.soldier5);
ini_write_real("soldier","6",global.soldier6);
ini_write_real("soldier","7",global.soldier7);

//heads
ini_write_real("heads","0",global.heads0);
ini_write_real("heads","1",global.heads1);

//spiders
ini_write_real("spiders","0",global.spiders0);
ini_write_real("spiders","1",global.spiders1);
ini_write_real("spiders","2",global.spiders2);
ini_write_real("spiders","3",global.spiders3);

//cleric
ini_write_real("cleric","0",global.cleric0);

//pesant
ini_write_real("pesant","0",global.pesant0);
ini_write_real("pesant","1",global.pesant1);
ini_write_real("pesant","2",global.pesant2);
ini_write_real("pesant","3",global.pesant3);
ini_write_real("pesant","4",global.pesant4);

//syphon
ini_write_real("syphon","0",global.syphon0);

//mole
ini_write_real("mole","0",global.mole0);
ini_write_real("mole","1",global.mole1);

//crab
ini_write_real("crab","0",global.crab0);
ini_write_real("crab","1",global.crab1);
ini_close();