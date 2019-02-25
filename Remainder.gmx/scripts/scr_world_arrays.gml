#define scr_world_arrays
var point_n=0;

var role=0

var pa1=40;
var check_pa1=40;
var pa2=9;
var check_pa2=9;
//init point && tile array
do
{
    global.point_array[pa1,pa2]=-1;
    pa2-=1;
    if pa2=-1 
    {
        pa2=check_pa2;
        pa1-=1;
    }
}
until pa1=-1

pa1=30;
pa2=4;
do
{
    global.tile_array[pa1,pa2]=-1;
    pa2-=1;
    if pa2=-1 
    {
        pa2=4;
        pa1-=1;
    }
}
until pa1=-1;
//////////////////////////////////////////////
//init tile vars
var tiles=0;
var geos=0;
var geo1=-1;
var geo2=-1;
var geo3=-1;
var geo4=-1;
var geo=0
point_n=global.world_array[global.current_world,4]-1;
//get geos
if !(global.info_array[global.current_world,2]=-1) geos+=1;
if !(global.info_array[global.current_world,3]=-1) geos+=1;
if !(global.info_array[global.current_world,4]=-1) geos+=1;
if !(global.info_array[global.current_world,5]=-1) geos+=1;
var tiles_total=geos

if !(global.info_array[global.current_world,2]=-1) {geo1=scr_geo_size(global.info_array[global.current_world,2]);geo+=geo1;}
if !(global.info_array[global.current_world,3]=-1) {geo2=scr_geo_size(global.info_array[global.current_world,3]);geo+=geo2;}
if !(global.info_array[global.current_world,4]=-1) {geo3=scr_geo_size(global.info_array[global.current_world,4]);geo+=geo3;}
if !(global.info_array[global.current_world,5]=-1) {geo4=scr_geo_size(global.info_array[global.current_world,5]);geo+=geo4;}

var tp=point_n-geo;
var non_geo=point_n-tp;


//non geo tiles
var tile_temp=20
do
{
    tile_temp_array[tile_temp]=-1;
    tile_temp-=1;
}
until tile_temp=-1;

pa1=tp;
tile_temp=20
do
{
    if pa1<5
    {
        if pa1=4
        {
            tile_temp_array[tile_temp]=3;
            pa1-=3
            tile_temp-=1;
            tiles_total+=1;
            tile_temp_array[tile_temp]=2;
            pa1-=2
            tile_temp-=1;
            tiles_total+=1;
        }
        
        if pa1=3
        {
            role=irandom(1);
            if role=1
            {
                tile_temp_array[tile_temp]=2;
                pa1-=2
                tile_temp-=1;
                tiles_total+=1;
                tile_temp_array[tile_temp]=2;
                pa1-=2
                tile_temp-=1;
                tiles_total+=1;
            }
            else
            {
                tile_temp_array[tile_temp]=4;
                pa1-=4
                tile_temp-=1;
                tiles_total+=1;
            }
            
        }
        if pa1=2
        {
            tile_temp_array[tile_temp]=3;
            pa1-=3
            tile_temp-=1;
            tiles_total+=1;
        }
        if pa1=1
        {
            tile_temp_array[tile_temp]=2;
            pa1-=2
            tile_temp-=1;
            tiles_total+=1;
        }
    }
    else 
    {
        role=irandom_range(2,4);
        tile_temp_array[tile_temp]=role;
        pa1-=role
        tile_temp-=1;
        tiles_total+=1;
    }
    
}
until pa1=-1;

tile_temp+=1;
//fill tile array
var tile_temp_temp=tile_temp;
pa1=0;
var temp_somthing=0;
do
{
    if geos>0
    {
        temp_something=irandom(3)
        if temp_something=0
        {
            if geo1>0
            {
                 global.tile_array[pa1,0]=geo1;
                 global.tile_array[pa1,1]=global.info_array[global.current_world,2];
                 global.tile_array[pa1,2]=scr_tile_background_geo(pa1,tiles_total,geo1);
                 global.tile_array[pa1,3]=0;
                 global.tile_array[pa1,4]=0;
                 geo1=-1;
                 geos-=1;
                 pa1+=1;
                 
            }
        }
        if temp_something=1
        {
            if geo2>0
            {
                 global.tile_array[pa1,0]=geo2;
                 global.tile_array[pa1,1]=global.info_array[global.current_world,3];
                 global.tile_array[pa1,2]=scr_tile_background_geo(pa1,tiles_total,geo2);
                 global.tile_array[pa1,3]=0;
                 global.tile_array[pa1,4]=0;
                 geo2=-1;
                 geos-=1;
                 pa1+=1;
            }
        }
        if temp_something=2
        {
            if geo3>0
            {
                 global.tile_array[pa1,0]=geo3;
                 global.tile_array[pa1,1]=global.info_array[global.current_world,4];
                 global.tile_array[pa1,2]=scr_tile_background_geo(pa1,tiles_total,geo3);
                 global.tile_array[pa1,3]=0;
                 global.tile_array[pa1,4]=0;
                 geo3=-1;
                 geos-=1;
                 pa1+=1;
            }
        }
        if temp_something=3
        {
            if geo4>0
            {
                 global.tile_array[pa1,0]=geo4;
                 global.tile_array[pa1,1]=global.info_array[global.current_world,5];
                 global.tile_array[pa1,2]=scr_tile_background_geo(pa1,tiles_total,geo4);
                 global.tile_array[pa1,3]=0;
                 global.tile_array[pa1,4]=0;
                 geo4=-1;
                 geos-=1;
                 pa1+=1;
            }
        }
    }
    if tile_temp<21
    {
        temp_something=irandom_range(tile_temp_temp,20)
        if tile_temp_array[temp_something]>-1
        {
            global.tile_array[pa1,0]=tile_temp_array[temp_something];
            global.tile_array[pa1,2]=scr_tile_background(pa1,tiles_total);
            global.tile_array[pa1,3]=0;
            global.tile_array[pa1,4]=scr_tile_esthetic();
            tile_temp_array[temp_something]=-1;
            tile_temp+=1;
            pa1+=1;
        }
    }
}
until geos=0&&tile_temp=21

//fill point array
pa1=0;
pa2=9;
pa2_track=pa2;
var point_total=point_n;

if global.info_array[global.current_world,10]="CIVILISED"||global.info_array[global.current_world,11]="CIVILISED" 
{
    //set number of fights
    var fight_n=2*point_n/9;
    point_total-=fight_n;
    //set number of encounters
    var encounter_n=6*point_n/9;
    point_total-=encounter_n;
}
else
{
    if global.info_array[global.current_world,10]="SAVAGELANDS"||global.info_array[global.current_world,11]="SAVAGELANDS" 
    {
        //set number of fights
        var fight_n=6*point_n/9;
        point_total-=fight_n;
        //set number of encounters
        var encounter_n=2*point_n/9;
        point_total-=encounter_n;
    }
    else
    {
        //set number of fights
        var fight_n=4*point_n/9;
        point_total-=fight_n;
        //set number of encounters
        var encounter_n=4*point_n/9;
        point_total-=encounter_n;
    }
}
//set number of shops
var shop_n=point_total+1;
var tile_track_n=0;
var tile_current=-1;
var tile_track_geo=-1;
var init_tile_track_n=-1;
var tile_geo_first=1;
do
{
    // track tiles
    if tile_track_n=0
    {
        tile_current+=1;
        tile_track_n=global.tile_array[tile_current,0];
        init_tile_track_n=tile_track_n;
        tile_track_geo=global.tile_array[tile_current,1];
        var tile_geo_first=1;
    }
    //point
    do
    {
        //set tile
        global.point_array[pa1,pa2]=tile_current
        pa2-=1;
        //set y
        if pa1<point_n
        {
            if !(tile_track_geo=-1) global.point_array[pa1,pa2]=scr_geo_y(tile_track_geo,tile_track_n-1);
            else global.point_array[pa1,pa2]=(50/(tile_track_n)+irandom_range(-4,4));
        }
        else
        {
            if !(tile_track_geo=-1) global.point_array[pa1,pa2]=scr_geo_y(tile_track_geo,tile_track_n-1)
            else global.point_array[pa1,pa2]=42;
        }
        
        pa2-=1;
        //set x
        if !(tile_track_geo=-1) global.point_array[pa1,pa2]=scr_geo_x(tile_track_geo,tile_track_n-1);
        else global.point_array[pa1,pa2]=(140/(init_tile_track_n+1)*tile_track_n+irandom_range(-10,10));
        pa2-=1;
        //set links
        
        var links_n=irandom_range(2,4)
        var init_links_n=links_n;
        pa2+=1
        if tile_track_geo=-1
        {
            //non geo link
            repeat(init_links_n)
            {
                do pa2-=1;
                until global.point_array[pa1,pa2]=-1||pa2=2;
                if pa2>2
                {
                    if links_n+pa1<point_n+1
                    {
                        global.point_array[pa1,pa2]=links_n+pa1;
                        role=7;
                        do role-=1;
                        until global.point_array[pa1+links_n,role]=-1;
                        /*global.point_array[pa1+(init_links_n-links_n+1),role]=pa1;*/
                        global.point_array[pa1+links_n,role]=pa1;
                    }
                }
                pa2=7
                links_n-=1
            }
        }
        else
        {
            // geo links
            scr_geo_link(tile_track_geo,tile_track_n-1,init_tile_track_n-1,pa1,tile_current);
        }
        //set state
        pa2=2
        if pa1=0 global.point_array[pa1,pa2]=1;
        else global.point_array[pa1,pa2]=0;
        pa2-=1
        
        //set reference and type
        do
        {
            role=irandom(6);
            if (role=0||role=1||role=4) && encounter_n>0
            {
                global.point_array[pa1,pa2-1]=0;
                global.point_array[pa1,pa2]=scr_pick_encounter(role,tile_track_geo);
                encounter_n-=1;
            }
            if (role=2||role=3||role=5) && fight_n>0
            {
                global.point_array[pa1,pa2-1]=1;
                global.point_array[pa1,pa2]=scr_pick_fight(role,tile_track_geo);
                fight_n-=1;
            }
            if role=6 && shop_n>0
            {
                global.point_array[pa1,pa2-1]=2;
                global.point_array[pa1,pa2]=scr_pick_shop(role,tile_track_geo);
                shop_n-=1;
            }
            //set end
            if tile_track_n=1&&tile_current=tiles_total-1
            {
                global.point_array[pa1,pa2-1]=3;
                global.point_array[pa1,pa2]=3;
            }
        }
        until global.point_array[pa1,pa2-1]>-1
        
        //reset
        pa2=pa2_track
        pa1+=1
        tile_track_n-=1
    }
    until tile_track_n=0
      
}
until tile_current=tiles_total-1;

//check links
var pa1=0;//current
var pa2=0;//count tile point
var pa3=0;//count tile
var pa4=6;//count link
var link_gate=0;
var link_gate2=0;
do
{
    
    if !(global.point_array[pa1,6]=pa1+1)&&!(global.point_array[pa1,5]=pa1+1)&&!(global.point_array[pa1,4]=pa1+1)&&!(global.point_array[pa1,3]=pa1+1)&&pa1<point_n&&global.tile_array[pa3,1]=-1&&pa3>0
    {
        //clear old
        var pa4=6
        do
        {
            link_gate=0
            if (global.point_array[pa1,pa4]>pa1)
            {
                if global.point_array[global.point_array[pa1,pa4],6]=pa1 {global.point_array[global.point_array[pa1,pa4],6]=-1;link_gate=1;}
                if global.point_array[global.point_array[pa1,pa4],5]=pa1 {global.point_array[global.point_array[pa1,pa4],6]=-1;link_gate=1;}
                if global.point_array[global.point_array[pa1,pa4],4]=pa1 {global.point_array[global.point_array[pa1,pa4],6]=-1;link_gate=1;}
                if global.point_array[global.point_array[pa1,pa4],3]=pa1 {global.point_array[global.point_array[pa1,pa4],6]=-1;link_gate=1;}
            }
        pa4-=1;
        }
        until pa4=2||link_gate=1;
        //set new
        if link_gate=1 global.point_array[pa1,pa4+1]=pa1+1
        else
        {
            if global.point_array[pa1,6]=-1 global.point_array[pa1,6]=pa1+1;
            if global.point_array[pa1,5]=-1 global.point_array[pa1,5]=pa1+1;
            if global.point_array[pa1,4]=-1 global.point_array[pa1,4]=pa1+1;
            if global.point_array[pa1,3]=-1 global.point_array[pa1,3]=pa1+1;
        }
        //set pa1+1 new
        pa4=6
        do
        {
            if global.point_array[pa1+1,pa4]<pa1||global.point_array[pa1+1,pa4]=-1 
            {
                if global.point_array[pa1+1,pa4]<pa1+1&&!(global.point_array[pa1+1,pa4]=-1 )
                {
                    if global.point_array[global.point_array[pa1+1,pa4],6]=pa1+1 global.point_array[global.point_array[pa1+1,pa4],6]=-1;
                    if global.point_array[global.point_array[pa1+1,pa4],5]=pa1+1 global.point_array[global.point_array[pa1+1,pa4],6]=-1;
                    if global.point_array[global.point_array[pa1+1,pa4],4]=pa1+1 global.point_array[global.point_array[pa1+1,pa4],6]=-1;
                    if global.point_array[global.point_array[pa1+1,pa4],3]=pa1+1 global.point_array[global.point_array[pa1+1,pa4],6]=-1;
                }
                global.point_array[pa1+1,pa4]=pa1;
                link_gate=1;
            }
            else link_gate=0;
            pa4-=1;
        }
        until pa4=2||link_gate=1;
    }
    pa1+=1
    pa2+=1
    if pa2=global.tile_array[pa3,0]{pa3+=1;pa2=0;}
}
until  pa1=point_n


if global.world_array[global.current_world,6]=1||global.world_array[global.current_world,5]=1{global.special_burn_ajust=1;}
if global.world_array[global.current_world,6]=2||global.world_array[global.current_world,5]=2{global.special_burn_ajust=-1;}

scr_general_save("save.sav");
            scr_point_save("point.sav");
            scr_world_save("world.sav");
            scr_info_save("info.sav");
            scr_tile_save("tile.sav");
             scr_save_pro("pro.sav");

instance_create(0,0,obj_world);

#define scr_geo_size
if argument0="SWAMP1" var role=4;
if argument0="SWAMP2" var role=4;
if argument0="SWAMP3" var role=4;
if argument0="SWAMP4" var role=4;
if argument0="FOREST1" var role=3;
if argument0="FOREST2" var role=4;
if argument0="MOUNTAIN1" var role=3;
if argument0="MOUNTAIN2" var role=3;
if argument0="MOUNTAIN3" var role=4;
if argument0="MOUNTAIN4" var role=4;
if argument0="BRIDGE1" var role=2;
if argument0="BRIDGE2" var role=3;
if argument0="GATE1" var role=2;
if argument0="GATE2" var role=3;
if argument0="GATE3" var role=4;
if argument0="GATE4" var role=4;
return role;

#define scr_geo_x
var role=0
if argument0="SWAMP1"
{
    if argument1=3 var role=20;
    if argument1=2 var role=120;
    if argument1=1 var role=20;
    if argument1=0 var role=120;
    
}
if argument0="SWAMP2" 
{
    if argument1=3 var role=140/3;
    if argument1=2 var role=2*140/3;
    if argument1=1 var role=140/3;
    if argument1=0 var role=2*140/3;
    
}
if argument0="SWAMP3" 
{
    if argument1=3 var role=140/2;
    if argument1=2 var role=50;
    if argument1=1 var role=90;
    if argument1=0 var role=140/2;
    
}
if argument0="SWAMP4" 
{
    if argument1=3 var role=60;
    if argument1=2 var role=80;
    if argument1=1 var role=40;
    if argument1=0 var role=100;
    
}
if argument0="FOREST1" 
{
    if argument1=2 var role=irandom_range(40,100);
    if argument1=1 var role=irandom_range(40,100);
    if argument1=0 var role=irandom_range(40,100);
    
}
if argument0="FOREST2" 
{
    if argument1=3 var role=irandom_range(40,100);
    if argument1=2 var role=irandom_range(40,100);
    if argument1=1 var role=irandom_range(40,100);
    if argument1=0 var role=irandom_range(40,100);
    
}
if argument0="MOUNTAIN1" 
{
    if argument1=2 var role=25;
    if argument1=1 var role=70;
    if argument1=0 var role=115;
    
}
if argument0="MOUNTAIN2" 
{
    if argument1=2 var role=115;
    if argument1=1 var role=70;
    if argument1=0 var role=25;
    
}
if argument0="MOUNTAIN3" 
{
    if argument1=3 var role=15;
    if argument1=2 var role=50;
    if argument1=1 var role=90;
    if argument1=0 var role=125;
    
}
if argument0="MOUNTAIN4" 
{
    if argument1=3 var role=125;
    if argument1=2 var role=90;
    if argument1=1 var role=50;
    if argument1=0 var role=15;
    
}
if argument0="BRIDGE1" 
{
    if argument1=1 var role=70;
    if argument1=0 var role=70;
    
}
if argument0="BRIDGE2" 
{
    if argument1=2 var role=70;
    if argument1=1 var role=70;
    if argument1=0 var role=70;
    
}
if argument0="GATE1" 
{
    if argument1=1 var role=50;
    if argument1=0 var role=90;
    
}
if argument0="GATE2" 
{
    if argument1=2 var role=40;
    if argument1=1 var role=100;
    if argument1=0 var role=70;
    
}
if argument0="GATE3" 
{
    if argument1=3 var role=70;
    if argument1=2 var role=40;
    if argument1=1 var role=100;
    if argument1=0 var role=70;
    
}
if argument0="GATE4" 
{
    if argument1=3 var role=70;
    if argument1=2 var role=30;
    if argument1=1 var role=110;
    if argument1=0 var role=70;
    
}
return role;

#define scr_geo_y
var role=0
if argument0="SWAMP1"
{
    if argument1=3 var role=10;
    if argument1=2 var role=10;
    if argument1=1 var role=40;
    if argument1=0 var role=40;
    
}
if argument0="SWAMP2" 
{
    if argument1=3 var role=5;
    if argument1=2 var role=5;
    if argument1=1 var role=45;
    if argument1=0 var role=45;
    
}
if argument0="SWAMP3" 
{
    if argument1=3 var role=5;
    if argument1=2 var role=25;
    if argument1=1 var role=25;
    if argument1=0 var role=45;
    
}
if argument0="SWAMP4" 
{
    if argument1=3 var role=10;
    if argument1=2 var role=20;
    if argument1=1 var role=30;
    if argument1=0 var role=40;
    
}
if argument0="FOREST1" 
{
    if argument1=2 var role=10;
    if argument1=1 var role=35;
    if argument1=0 var role=25;
    
}
if argument0="FOREST2" 
{
    if argument1=3 var role=10;
    if argument1=2 var role=20;
    if argument1=1 var role=30;
    if argument1=0 var role=40;
    
}
if argument0="MOUNTAIN1" 
{
    if argument1=2 var role=10;
    if argument1=1 var role=25;
    if argument1=0 var role=40;
    
}
if argument0="MOUNTAIN2" 
{
    if argument1=2 var role=10;
    if argument1=1 var role=25;
    if argument1=0 var role=40;
    
}
if argument0="MOUNTAIN3" 
{
    if argument1=3 var role=5;
    if argument1=2 var role=35;
    if argument1=1 var role=15;
    if argument1=0 var role=45;
    
}
if argument0="MOUNTAIN4" 
{
    if argument1=3 var role=5;
    if argument1=2 var role=35;
    if argument1=1 var role=15;
    if argument1=0 var role=45;
    
}
if argument0="BRIDGE1" 
{
    if argument1=1 var role=15;
    if argument1=0 var role=35;
    
}
if argument0="BRIDGE2" 
{
    if argument1=2 var role=10;
    if argument1=1 var role=25;
    if argument1=0 var role=40;
    
}
if argument0="GATE1" 
{
    if argument1=1 var role=15;
    if argument1=0 var role=35;
    
}
if argument0="GATE2" 
{
    if argument1=2 var role=30;
    if argument1=1 var role=30;
    if argument1=0 var role=20;
    
}
if argument0="GATE3" 
{
    if argument1=3 var role=10;
    if argument1=2 var role=25;
    if argument1=1 var role=25;
    if argument1=0 var role=25;
    
}
if argument0="GATE4" 
{
    if argument1=3 var role=5;
    if argument1=2 var role=20;
    if argument1=1 var role=20;
    if argument1=0 var role=35;
    
}
return role;

#define scr_geo_link
var link_total=-1;
if argument1=argument2
{
    if argument4>0
    {
        
        //clear links above to below the tile
        if global.tile_array[argument4-1,1] = -1
        {
            var clear=global.tile_array[argument4-1,0]/*-1*/
            do 
            {
                var rolers=global.point_array[argument3-clear,6];
                if rolers>=argument3
                {
                    if global.point_array[rolers,6]=(argument3-clear) global.point_array[rolers,6]=-1;
                    if global.point_array[rolers,5]=(argument3-clear) global.point_array[rolers,5]=-1;
                    if global.point_array[rolers,4]=(argument3-clear) global.point_array[rolers,4]=-1;
                    if global.point_array[rolers,3]=(argument3-clear) global.point_array[rolers,3]=-1;
                    global.point_array[argument3-clear,6]=-1;
                }
                
                
                var rolers=global.point_array[argument3-clear,5];
                if rolers>=argument3
                {
                    if global.point_array[rolers,6]=(argument3-clear) global.point_array[rolers,6]=-1;
                    if global.point_array[rolers,5]=(argument3-clear) global.point_array[rolers,5]=-1;
                    if global.point_array[rolers,4]=(argument3-clear) global.point_array[rolers,4]=-1;
                    if global.point_array[rolers,3]=(argument3-clear) global.point_array[rolers,3]=-1;
                    global.point_array[argument3-clear,5]=-1;
                }
                
                
                var rolers=global.point_array[argument3-clear,4];
                if rolers>=argument3
                {
                    if global.point_array[rolers,6]=(argument3-clear) global.point_array[rolers,6]=-1;
                    if global.point_array[rolers,5]=(argument3-clear) global.point_array[rolers,5]=-1;
                    if global.point_array[rolers,4]=(argument3-clear) global.point_array[rolers,4]=-1;
                    if global.point_array[rolers,3]=(argument3-clear) global.point_array[rolers,3]=-1;
                    global.point_array[argument3-clear,4]=-1;
                }
                
                
                var rolers=global.point_array[argument3-clear,3];
                if rolers>=argument3
                {
                    if global.point_array[rolers,6]=(argument3-clear) global.point_array[rolers,6]=-1;
                    if global.point_array[rolers,5]=(argument3-clear) global.point_array[rolers,5]=-1;
                    if global.point_array[rolers,4]=(argument3-clear) global.point_array[rolers,4]=-1;
                    if global.point_array[rolers,3]=(argument3-clear) global.point_array[rolers,3]=-1;
                    global.point_array[argument3-clear,3]=-1;
                }
                
                clear-=1
            }
            until clear=0;
        }
        if global.point_array[argument3-1,6]=-1  {global.point_array[argument3-1,6]=argument3; global.point_array[argument3,6]=argument3-1;}
        else
        {
            if global.point_array[argument3-1,5]=-1  {global.point_array[argument3-1,5]=argument3; global.point_array[argument3,6]=argument3-1;}
            else
            {
                if global.point_array[argument3-1,4]=-1  {global.point_array[argument3-1,4]=argument3; global.point_array[argument3,6]=argument3-1;}
                else
                {
                    if global.point_array[argument3-1,3]=-1  {global.point_array[argument3-1,3]=argument3; global.point_array[argument3,6]=argument3-1;}
                    else {global.point_array[argument3-1,6]=argument3; global.point_array[argument3,6]=argument3-1;}
                }
            }
        }
        
        /*var link_total=-1;
        //get total of links
        var rolers=global.point_array[argument3,6];
        if rolers=0 && link_total=-1 link_total=0;
        if rolers>0 link_total+=rolers;
        var rolers=global.point_array[argument3,5];
        if rolers=0 && link_total=-1 link_total=0;
        if rolers>0 link_total+=rolers;
        var rolers=global.point_array[argument3,4];
        if rolers=0 && link_total=-1 link_total=0;
        if rolers>0 link_total+=rolers;
        var rolers=global.point_array[argument3,3];
        if rolers=0 && link_total=-1 link_total=0;
        if rolers>0 link_total+=rolers;
        
        if link_total>=argument1
        {
            //clear links to get back to 1 link
            do
            {
                var link_total=-1;
                //reduce to 1 link
                var role=irandom_range(3,6);
                var roled=global.point_array[argument3,role]
                if roled>-1
                {
                    if global.point_array[roled,6]=argument3 global.point_array[roled,6]=-1;
                    if global.point_array[roled,5]=argument3 global.point_array[roled,5]=-1;
                    if global.point_array[roled,4]=argument3 global.point_array[roled,4]=-1;
                    if global.point_array[roled,3]=argument3 global.point_array[roled,3]=-1;
                }
                global.point_array[argument3,role]=-1;
                //recalculate total
                var rolers=global.point_array[argument3,6];
                if rolers=0 && link_total=-1 link_total=0;
                if rolers>0 link_total+=rolers;
                var rolers=global.point_array[argument3,5];
                if rolers=0 && link_total=-1 link_total=0;
                if rolers>0 link_total+=rolers;
                var rolers=global.point_array[argument3,4];
                if rolers=0 && link_total=-1 link_total=0;
                if rolers>0 link_total+=rolers;
                var rolers=global.point_array[argument3,3];
                if rolers=0 && link_total=-1 link_total=0;
                if rolers>0 link_total+=rolers;
            }
            until link_total<argument3
            // reorder first link
            var roled=0;
            var rolers=global.point_array[argument3,6];
            if rolers=-1
            {
                var rolers=global.point_array[argument3,5];
                if rolers=-1
                {
                    rolers=global.point_array[argument3,4];
                    if rolers=-1
                    {
                        rolers=global.point_array[argument3,3];
                        roled=3;
                        
                    }
                     else roled=2;
                }
                 else roled=1;
            }
            else roled=0;
            if roled>0
            {
                global.point_array[argument3,6]=global.point_array[argument3,6-roled];
                global.point_array[argument3,6-roled]=-1;
            }
        }*/
        
    }
    
    //clear rest of points
    var clear=argument1;
    do 
    {
        var rolers=global.point_array[argument3+clear,6];
        if rolers>-1
        {
            if global.point_array[rolers,6]=argument3+clear global.point_array[rolers,6]=-1;
            if global.point_array[rolers,5]=argument3+clear global.point_array[rolers,5]=-1;
            if global.point_array[rolers,4]=argument3+clear global.point_array[rolers,4]=-1;
            if global.point_array[rolers,3]=argument3+clear global.point_array[rolers,3]=-1;
        }
        global.point_array[argument3+clear,6]=-1;
        var rolers=global.point_array[argument3+clear,5];
        if rolers>-1
        {
            if global.point_array[rolers,6]=argument3+clear global.point_array[rolers,6]=-1;
            if global.point_array[rolers,5]=argument3+clear global.point_array[rolers,5]=-1;
            if global.point_array[rolers,4]=argument3+clear global.point_array[rolers,4]=-1;
            if global.point_array[rolers,3]=argument3+clear global.point_array[rolers,3]=-1;
        }
        global.point_array[argument3+clear,5]=-1;
        var rolers=global.point_array[argument3+clear,4];
        if rolers>-1
        {
            if global.point_array[rolers,6]=argument3+clear global.point_array[rolers,6]=-1;
            if global.point_array[rolers,5]=argument3+clear global.point_array[rolers,5]=-1;
            if global.point_array[rolers,4]=argument3+clear global.point_array[rolers,4]=-1;
            if global.point_array[rolers,3]=argument3+clear global.point_array[rolers,3]=-1;
        }
        global.point_array[argument3+clear,4]=-1;
        var rolers=global.point_array[argument3+clear,3];
        if rolers>-1
        {
            if global.point_array[rolers,6]=argument3+clear global.point_array[rolers,6]=-1;
            if global.point_array[rolers,5]=argument3+clear global.point_array[rolers,5]=-1;
            if global.point_array[rolers,4]=argument3+clear global.point_array[rolers,4]=-1;
            if global.point_array[rolers,3]=argument3+clear global.point_array[rolers,3]=-1;
        }
        global.point_array[argument3+clear,3]=-1;
        clear-=1
    }
    until clear=0; 
    //ALL LINK 4
    if argument0="SWAMP1"||argument0="SWAMP2"||argument0="SWAMP3"||argument0="SWAMP4"||argument0="FOREST2"
    {
        //1
        global.point_array[argument3,5]=argument3+1
        global.point_array[argument3,4]=argument3+2
        global.point_array[argument3,3]=argument3+3
        //2
        global.point_array[argument3+1,6]=argument3
        global.point_array[argument3+1,5]=argument3+2
        global.point_array[argument3+1,4]=argument3+3
        //3
        global.point_array[argument3+2,6]=argument3
        global.point_array[argument3+2,5]=argument3+1
        global.point_array[argument3+2,4]=argument3+3
        global.point_array[argument3+2,3]=argument3+4
        //4
        global.point_array[argument3+3,6]=argument3
        global.point_array[argument3+3,5]=argument3+1
        global.point_array[argument3+3,4]=argument3+2
        global.point_array[argument3+3,3]=argument3+4
        //back
        global.point_array[argument3+4,6]=argument3+3
        global.point_array[argument3+4,5]=argument3+2
        global.point_array[argument3+4,4]=argument3+5
        global.point_array[argument3+5,6]=argument3+4
    }
    //ALL LINK 3
    if argument0="FOREST1"
    {
        //1
        global.point_array[argument3,5]=argument3+1
        global.point_array[argument3,4]=argument3+2

        //2
        global.point_array[argument3+1,6]=argument3
        global.point_array[argument3+1,5]=argument3+2
        global.point_array[argument3+1,4]=argument3+3
        
        //3
        global.point_array[argument3+2,6]=argument3
        global.point_array[argument3+2,5]=argument3+1
        global.point_array[argument3+2,4]=argument3+3
        //back
        global.point_array[argument3+3,6]=argument3+2
        global.point_array[argument3+3,5]=argument3+3
        global.point_array[argument3+3,4]=argument3+4
        global.point_array[argument3+4,6]=argument3+3
    }
    //LINE 2
    if argument0="GATE1" || argument0="BRIDGE1" 
    {
        //1
        global.point_array[argument3,5]=argument3+1
        //2
        global.point_array[argument3+1,6]=argument3
        global.point_array[argument3+1,5]=argument3+2
        //back
        global.point_array[argument3+2,6]=argument3+1
        global.point_array[argument3+2,5]=argument3+3
        global.point_array[argument3+3,6]=argument3+2

    }
    //LINE 3
    if argument0="MOUNTAIN1"||argument0="MOUNTAIN2"||argument0="BRIDGE2"
    {
        //1
        global.point_array[argument3,5]=argument3+1

        //2
        global.point_array[argument3+1,6]=argument3
        global.point_array[argument3+1,5]=argument3+2
        
        //3
        global.point_array[argument3+2,5]=argument3+1
        global.point_array[argument3+2,4]=argument3+3
        //back
        global.point_array[argument3+3,6]=argument3+2
        global.point_array[argument3+3,5]=argument3+4
        global.point_array[argument3+4,6]=argument3+3

    }
    //LINE 4
    if argument0="MOUNTAIN3"||argument0="MOUNTAIN4"
    {
        //1
        global.point_array[argument3,5]=argument3+1
        //2
        global.point_array[argument3+1,6]=argument3
        global.point_array[argument3+1,5]=argument3+2
        //3
        global.point_array[argument3+2,5]=argument3+1
        global.point_array[argument3+2,4]=argument3+3
        //4
        global.point_array[argument3+3,4]=argument3+2
        global.point_array[argument3+3,3]=argument3+4
        //back
        global.point_array[argument3+4,6]=argument3+3
        global.point_array[argument3+3,5]=argument3+4
        global.point_array[argument3+4,6]=argument3+3
    }
    //GATES
    if argument0="GATE2"
    {
        //1
        global.point_array[argument3,4]=argument3+2

        //2
        global.point_array[argument3+1,5]=argument3+2
        
        //3
        global.point_array[argument3+2,6]=argument3
        global.point_array[argument3+2,5]=argument3+1
        global.point_array[argument3+2,4]=argument3+3
        //back
        /*global.point_array[argument3+3,6]=argument3+2*/
        global.point_array[argument3+3,5]=argument3+4
        global.point_array[argument3+4,6]=argument3+3

    }
    if argument0="GATE3"||argument0="GATE4"
    {
        //1
        global.point_array[argument3,5]=argument3+3
        //2
        global.point_array[argument3+1,4]=argument3+3
        //3
        global.point_array[argument3+2,4]=argument3+3
        //4
        global.point_array[argument3+3,6]=argument3
        global.point_array[argument3+3,5]=argument3+1
        global.point_array[argument3+3,4]=argument3+2
        global.point_array[argument3+3,3]=argument3+4
        //back
        /*global.point_array[argument3+4,6]=argument3+3*/
        global.point_array[argument3+4,5]=argument3+5
        global.point_array[argument3+5,6]=argument3+4

    }
}


#define scr_pick_encounter
var oish=argument0;
var tish=argument1;
return irandom_range(1,3);

#define scr_pick_fight
return irandom(3);

#define scr_pick_shop
return irandom_range(2,4);
#define scr_tile_background
if argument0=0
{
    //end
    var roll=irandom(2);
}
else
{
    //start
    if argument0=argument1-1 var roll = 7+irandom(2)
    //mid
    else 
    {
        //adapt to end
        if (argument0-1)=0
        {
            var roll=0
            
            var tp= irandom(2)
            if tp=0 roll=0+3;
            else var roll=2+3;
        }
        
        else
        {
            //set mid
            if global.tile_array[argument0-1,2]-3=1||global.tile_array[argument0-1,2]-3=2
            {
                var tp= irandom(2)
                if tp=0 roll=3+3;
                else var roll=1+3;
            }
            
            if global.tile_array[argument0-1,2]-3=0||global.tile_array[argument0-1,2]-3=3
            {
                var tp= irandom(2)
                if tp=0 roll=2+3;
                else var roll=0+3;
            }
            //adapt to start
            if argument0=argument1-2
            {
                if global.tile_array[argument0-1,2]-3=1||global.tile_array[argument0-1,2]-3=2 roll=3+3;
                else var roll =0+3;
            }
        }
        
        
    }
    
}
return roll;

#define scr_tile_background_geo
var tempish= argument2;
if argument0=0
{
    //end
    var roll=irandom(2);
}
else
{
    //start
    if argument0=argument1-1 var roll = 7+irandom(2)
    //mid
    else 
    {
        //adapt to end
        if (argument0-1)=0
        {
            var roll=0
            
            var tp= irandom(2)
            if tp=0 roll=0+3;
            else var roll=2+3;
        }
        
        else
        {
            //set mid
            if global.tile_array[argument0-1,2]-3=1||global.tile_array[argument0-1,2]-3=2
            {
                var tp= irandom(2)
                if tp=0 roll=3+3;
                else var roll=1+3;
            }
            
            if global.tile_array[argument0-1,2]-3=0||global.tile_array[argument0-1,2]-3=3
            {
                var tp= irandom(2)
                if tp=0 roll=2+3;
                else var roll=0+3;
            }
            //adapt to start
            if argument0=argument1-2
            {
                if global.tile_array[argument0-1,2]-3=1||global.tile_array[argument0-1,2]-3=2 roll=3+3;
                else var roll =0+3;
            }
        }
        
        
    }
    
}
return roll;
#define scr_tile_esthetic
//set type
if global.world_array[global.current_world,5]=-1&& global.world_array[global.current_world,6]=-1
{
    var role=irandom(1);
}
else
{
    var role=irandom(2);
    
}
//set based on special
if role=2
{
    if !(global.world_array[global.current_world,5]=-1)&& global.world_array[global.current_world,6]=-1 var set=5;
    if (global.world_array[global.current_world,5]=-1)&&!(global.world_array[global.current_world,6]=-1) var set=6;
    if !(global.world_array[global.current_world,5]=-1)&&!(global.world_array[global.current_world,6]=-1) 
    {
        var set = irandom_range(5,6)
    }
    
        //set sprite
        if global.world_array[global.current_world,set]=1
        {
            var rndm=irandom(1)
            if rndm=0 var sprite=spr_tile_dry_1;
            if rndm=1 var sprite=spr_tile_dry_2;
            return sprite;
        }
        if global.world_array[global.current_world,set]=2
        {
            var rndm=irandom(1)
            if rndm=0 var sprite=spr_tile_wet_season_1;
            if rndm=1 var sprite=spr_tile_wet_season_2;
            return sprite;
        }
        if global.world_array[global.current_world,set]=3
        {
            var rndm=irandom(1)
            if rndm=0 var sprite=spr_tile_equality_1;
            if rndm=1 var sprite=spr_tile_equality_2;
            return sprite;
        }
        if global.world_array[global.current_world,set]=4
        {
            var rndm=irandom(1)
            if rndm=0 var sprite=spr_tile_torture_1;
            if rndm=1 var sprite=spr_tile_torture_2;
            return sprite;
        }
        if global.world_array[global.current_world,set]=5
        {
            var rndm=irandom(1)
            if rndm=0 var sprite=spr_tile_houses_1;
            if rndm=1 var sprite=spr_tile_houses_2;
            return sprite;
        }
        if global.world_array[global.current_world,set]=6
        {
            var rndm=irandom(1)
            if rndm=0 var sprite=spr_tile_savagelands_1;
            if rndm=1 var sprite=spr_tile_savagelands_2;
            return sprite;
        }
        if global.world_array[global.current_world,set]=7
        {
            var sprite=spr_tile_church_destroyed;
            return sprite;
        }
        if global.world_array[global.current_world,set]=8
        {
            var sprite=spr_tile_church;
            return sprite;
        }
        if global.world_array[global.current_world,set]=9
        {
            var rndm=irandom(1)
            if rndm=0 var sprite=spr_tile_warmonger_1;
            if rndm=1 var sprite=spr_tile_warmonger_2;
            return sprite;
        }
        if global.world_array[global.current_world,set]=10
        {
            var sprite=spr_tile_church;
            return sprite;
        }
}
//set based on enemies
if role=0
{
    if global.world_array[global.current_world,0]<10
    {
        //monsters
        if global.world_array[global.current_world,0]=0||global.world_array[global.current_world,0]=1{
            var rndm=irandom(3)
            if rndm=0 var sprite=spr_tile_golems_1;
            if rndm=1 var sprite=spr_tile_golems_2;
            if rndm=2 var sprite=spr_tile_undead_1;
            if rndm=3 var sprite=spr_tile_undead_2;
            return sprite;
        }
        if global.world_array[global.current_world,0]=4
            {
                var rndm=irandom(1)
                if rndm=0 var sprite=spr_tile_spider_1;
                if rndm=1 var sprite=spr_tile_spider_2;
                return sprite;
            }
        if global.world_array[global.current_world,0]=3
            {
                var rndm=irandom(1)
                if rndm=0 var sprite=spr_tile_golems_1;
                if rndm=1 var sprite=spr_tile_golems_2;
                return sprite;
            }
        //undead
        if global.world_array[global.current_world,0]=2
        {
            var rndm=irandom(1)
            if rndm=0 var sprite=spr_tile_golems_1;
            if rndm=1 var sprite=spr_tile_golems_2;
            return sprite;
        }
        //human
        if global.world_array[global.current_world,0]=5
        {
            var rndm=irandom(1)
            if rndm=0 var sprite=spr_tile_humans_1;
            if rndm=1 var sprite=spr_tile_humans_2;
            return sprite;
        }
    }
    else
    {
        //undead
        if (global.world_array[global.current_world,0]>=111&&global.world_array[global.current_world,0]<=112)||(global.world_array[global.current_world,0]>=11&&global.world_array[global.current_world,0]<=13)
        {
            var rndm=irandom(1)
            if rndm=0 var sprite=spr_tile_undead_1;
            if rndm=1 var sprite=spr_tile_undead_2;
            return sprite;
        }
        //humans
        if (global.world_array[global.current_world,0]>=121&&global.world_array[global.current_world,0]<=123)||(global.world_array[global.current_world,0]>=21&&global.world_array[global.current_world,0]<=24)
        {
            var rndm=irandom(1)
            if rndm=0 var sprite=spr_tile_humans_1;
            if rndm=1 var sprite=spr_tile_humans_2;
            return sprite;
        }
        //fire and ice
        if global.world_array[global.current_world,0]=141
        {
            var rndm=irandom(1)
            if rndm=0 var sprite=spr_tile_fire_1;
            if rndm=1 var sprite=spr_tile_fire_2;
            return sprite;
        }
        if global.world_array[global.current_world,0]=142
        {
            var rndm=irandom(1)
            if rndm=0 var sprite=spr_tile_ice_1;
            if rndm=1 var sprite=spr_tile_ice_2;
            return sprite;
        }
    }
    //monsters
        if (global.world_array[global.current_world,0]>=161&&global.world_array[global.current_world,0]<=163)||(global.world_array[global.current_world,0]>=61&&global.world_array[global.current_world,0]<=63)
        {
            if global.world_array[global.current_world,0]=161||global.world_array[global.current_world,0]=61
            {
                var rndm=irandom(1)
                if rndm=0 var sprite=spr_tile_golems_1;
                if rndm=1 var sprite=spr_tile_golems_2;
                return sprite;
            }
            
            if global.world_array[global.current_world,0]=162||global.world_array[global.current_world,0]=62
            {
                var rndm=irandom(1)
                if rndm=0 var sprite=spr_tile_mole_1;
                if rndm=1 var sprite=spr_tile_mole_2;
                return sprite;
            }
            
            if global.world_array[global.current_world,0]=163||global.world_array[global.current_world,0]=63
            {
                var rndm=irandom(1)
                if rndm=0 var sprite=spr_tile_spider_1;
                if rndm=1 var sprite=spr_tile_spider_2;
                return sprite;
            }
        }
    /*return 0;*/
}
//geo
if role=1
{
    var set=-1
    var setted=-1
    do
    {
        set=irandom_range(2,5);
        if !(global.info_array[global.current_world,set]=-1) setted=global.info_array[global.current_world,set]
    }
    until !(setted=-1)
    
    if setted="FOREST2"
    {
        var rndm=irandom(3)
        if rndm=0 var sprite=spr_tile_forest_1_1;
        if rndm=1 var sprite=spr_tile_forest_1_2;
        if rndm=2 var sprite=spr_tile_forest_1_3;
        if rndm=3 var sprite=spr_tile_forest_1_4;
        return sprite;
    }
    
    if setted="FOREST1"
    {
        var rndm=irandom(3)
        if rndm=0 var sprite=spr_tile_forest_2_1;
        if rndm=1 var sprite=spr_tile_forest_2_2;
        if rndm=2 var sprite=spr_tile_forest_2_3;
        if rndm=3 var sprite=spr_tile_forest_2_4;
        return sprite;
    }
    
    if setted="SWAMP1"||setted="SWAMP2"||setted="SWAMP3"||setted="SWAMP4"
    {
        var rndm=irandom(1)
        if rndm=0 var sprite=spr_tile_swamp_1;
        if rndm=1 var sprite=spr_tile_swamp_2;
        return sprite;
    }
    
    if setted="MOUNTAIN1"||setted="MOUNTAIN2"||setted="MOUNTAIN3"||setted="MOUNTAIN4"
    {
        var rndm=irandom(1)
        if rndm=0 var sprite=spr_tile_mountain_1;
        if rndm=1 var sprite=spr_tile_mountain_2;
        return sprite;
    }
    
    if setted="GATE1"||setted="GATE2"||setted="GATE3"||setted="GATE4"
    {
        var rndm=irandom(1)
        if rndm=0 var sprite=spr_tile_gate_1;
        if rndm=1 var sprite=spr_tile_gate_2;
        return sprite;
    }
    
    if setted="BRIDGE1"||setted="BRIDGE2"
    {
        var rndm=irandom(1)
        if rndm=0 var sprite=spr_tile_bridge_1;
        if rndm=1 var sprite=spr_tile_bridge_2;
        return sprite;
    }
    
    return 0;
}

if role=3
{
    return 0;
}
return 0;