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