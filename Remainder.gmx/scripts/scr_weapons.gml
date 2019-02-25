#define scr_weapons
//choose script
if (argument0<10)scr_weapons_sword(argument0,argument1);
if (argument0>10)&&(argument0<20)scr_weapons_half_elem(argument0,argument1);
if (argument0>20)&&(argument0<30)scr_weapons_big_sword(argument0,argument1);
if (argument0>30)&&(argument0<40)scr_weapons_hammer(argument0,argument1);
if (argument0>40)&&(argument0<50)scr_weapons_knife(argument0,argument1);
if (argument0>50)&&(argument0<60)scr_weapons_spear(argument0,argument1);
if (argument0>60)&&(argument0<70)scr_weapons_axe(argument0,argument1);

#define scr_weapons_sword
//sword

//set turn vars
hlock=0;
hturnlock=0;
hattcount=1;
vlock=0;
vturnlock=0;
vattcount=1;

//bronze
if (argument0=1)
{
damage_weapon_slash_1=5;
damage_weapon_thrust_1=5;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=0;
damage_weapon_thrust_2=0;
damage_weapon_type_slash_2=0;
damage_weapon_type_thrust_2=0;
weapon_description=""
//set draw vars
if argument1=1
{
    image_index=1;
    weapon.color_var=2;
}
}
//silver
if (argument0=2)
{
damage_weapon_slash_1=10;
damage_weapon_thrust_1=10;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=0;
damage_weapon_thrust_2=0;
damage_weapon_type_slash_2=0;
damage_weapon_type_thrust_2=0;
weapon_description=""
if argument1=1
{
    image_index=1;
    weapon.color_var=8;
}
}
//gold
if (argument0=3)
{
damage_weapon_slash_1=15;
damage_weapon_thrust_1=15;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=0;
damage_weapon_thrust_2=0;
damage_weapon_type_slash_2=0;
damage_weapon_type_thrust_2=0;
weapon_description=""
if argument1=1
{
    image_index=1;
    weapon.color_var=4;
}
}
//red
if (argument0=4)
{
damage_weapon_slash_1=9;
damage_weapon_thrust_1=9;
damage_weapon_type_slash_1=2;
damage_weapon_type_thrust_1=2;
damage_weapon_slash_2=1;
damage_weapon_thrust_2=1;
damage_weapon_type_slash_2=1;
damage_weapon_type_thrust_2=0;
weapon_description="elemeNtal"
if argument1=1
{
    image_index=1;
    weapon.color_var=5;
}
}
//blue
if (argument0=5)
{
damage_weapon_slash_1=9;
damage_weapon_thrust_1=9;
damage_weapon_type_slash_1=3;
damage_weapon_type_thrust_1=3;
damage_weapon_slash_2=1;
damage_weapon_thrust_2=1;
damage_weapon_type_slash_2=1;
damage_weapon_type_thrust_2=0;
weapon_description="elemeNtal"
if argument1=1
{
    image_index=1;
    weapon.color_var=6;
}
}
//green
if (argument0=6)
{
damage_weapon_slash_1=14;
damage_weapon_thrust_1=14;
damage_weapon_type_slash_1=4;
damage_weapon_type_thrust_1=4;
damage_weapon_slash_2=2;
damage_weapon_thrust_2=2;
damage_weapon_type_slash_2=1;
damage_weapon_type_thrust_2=0;
weapon_description="elemeNtal"
if argument1=1
{
    image_index=1;
    weapon.color_var=7;
}
}
//apply d mult
damage_weapon_slash_1=damage_weapon_slash_1*global.weapon_damage_mult;
damage_weapon_thrust_1=damage_weapon_thrust_1*global.weapon_damage_mult;
damage_weapon_slash_2=damage_weapon_slash_2*global.weapon_damage_mult;
damage_weapon_thrust_2=damage_weapon_thrust_2*global.weapon_damage_mult;
weapon_current=global.weapon_id;

#define scr_weapons_half_elem
//half elemental sword

//set turn vars
hlock=0;
hturnlock=0;
hattcount=1;
vlock=0;
vturnlock=0;
vattcount=1;

//half red
if (argument0=11)
{
damage_weapon_slash_1=6;
damage_weapon_thrust_1=6;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=4;
damage_weapon_thrust_2=4;
damage_weapon_type_slash_2=2;
damage_weapon_type_thrust_2=2;
description="half elemeNtal"
//set draw vars
if argument1=1
{
    image_index=2;
    weapon.color_var=8;
}
}
//half blue
if (argument0=12)
{
damage_weapon_slash_1=6;
damage_weapon_thrust_1=6;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=4;
damage_weapon_thrust_2=4;
damage_weapon_type_slash_2=3;
damage_weapon_type_thrust_2=3;
if argument1=1
{
    image_index=2;
    weapon.color_var=8;
}
}
//half green
if (argument0=13)
{
damage_weapon_slash_1=6;
damage_weapon_thrust_1=6;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=6;
damage_weapon_thrust_2=6;
damage_weapon_type_slash_2=4;
damage_weapon_type_thrust_2=4;
if argument1=1
{
    image_index=2;
    weapon.color_var=8;
}
}

//half red gold
if (argument0=14)
{
damage_weapon_slash_1=9;
damage_weapon_thrust_1=9;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=6;
damage_weapon_thrust_2=6;
damage_weapon_type_slash_2=2;
damage_weapon_type_thrust_2=2;
if argument1=1
{
    image_index=2;
    weapon.color_var=4;
}
}
//half blue gold
if (argument0=15)
{
damage_weapon_slash_1=9;
damage_weapon_thrust_1=9;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=6;
damage_weapon_thrust_2=6;
damage_weapon_type_slash_2=3;
damage_weapon_type_thrust_2=3;
if argument1=1
{
    image_index=2;
    weapon.color_var=4;
}
}
//half green gold
if (argument0=16)
{
damage_weapon_slash_1=9;
damage_weapon_thrust_1=9;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=7;
damage_weapon_thrust_2=7;
damage_weapon_type_slash_2=4;
damage_weapon_type_thrust_2=4;
if argument1=1
{
    image_index=2;
    weapon.color_var=4;
}
}
weapon_description="half elemeNtal"
//apply d mult
damage_weapon_slash_1=damage_weapon_slash_1*global.weapon_damage_mult;
damage_weapon_thrust_1=damage_weapon_thrust_1*global.weapon_damage_mult;
damage_weapon_slash_2=damage_weapon_slash_2*global.weapon_damage_mult;
damage_weapon_thrust_2=damage_weapon_thrust_2*global.weapon_damage_mult;
weapon_current=global.weapon_id;

#define scr_weapons_big_sword
//big sword

//set turn vars
hlock=0;
hturnlock=0;
hattcount=1;
vlock=0;
vturnlock=0;
vattcount=1;

//bronze
if (argument0=21)
{
damage_weapon_slash_1=8;
damage_weapon_thrust_1=2;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=0;
damage_weapon_thrust_2=0;
damage_weapon_type_slash_2=0;
damage_weapon_type_thrust_2=0;
description=""
//set draw vars
if argument1=1
{
    image_index=1;
    weapon.color_var=2;
}
}
//silver
if (argument0=22)
{
damage_weapon_slash_1=16;
damage_weapon_thrust_1=4;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=0;
damage_weapon_thrust_2=0;
damage_weapon_type_slash_2=0;
damage_weapon_type_thrust_2=0;
if argument1=1
{
    image_index=1;
    weapon.color_var=8;
}
}
//gold
if (argument0=23)
{
damage_weapon_slash_1=24;
damage_weapon_thrust_1=6;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=0;
damage_weapon_thrust_2=0;
damage_weapon_type_slash_2=0;
damage_weapon_type_thrust_2=0;
if argument1=1
{
    image_index=1;
    weapon.color_var=4;
}
}
weapon_description=""
//apply d mult
damage_weapon_slash_1=damage_weapon_slash_1*global.weapon_damage_mult;
damage_weapon_thrust_1=damage_weapon_thrust_1*global.weapon_damage_mult;
damage_weapon_slash_2=damage_weapon_slash_2*global.weapon_damage_mult;
damage_weapon_thrust_2=damage_weapon_thrust_2*global.weapon_damage_mult;
weapon_current=global.weapon_id;

#define scr_weapons_hammer
//hammers
//set turn vars
hlock=0;
hturnlock=0;
hattcount=1;
vlock=0;
vturnlock=0;
vattcount=1;
//bronze hammer
if (argument0=31)
{
damage_weapon_slash_1=4;
damage_weapon_thrust_1=4;
damage_weapon_type_slash_1=5;
damage_weapon_type_thrust_1=5;
damage_weapon_slash_2=0;
damage_weapon_thrust_2=0;
damage_weapon_type_slash_2=0;
damage_weapon_type_thrust_2=0;
//set draw vars
if argument1=1
{
    image_index=0;
    weapon.color_var=2;
}
}
//silver hammer
if (argument0=32)
{
damage_weapon_slash_1=7;
damage_weapon_thrust_1=7;
damage_weapon_type_slash_1=5;
damage_weapon_type_thrust_1=5;
damage_weapon_slash_2=0;
damage_weapon_thrust_2=0;
damage_weapon_type_slash_2=0;
damage_weapon_type_thrust_2=0;
if argument1=1
{
    image_index=0;
    weapon.color_var=8;
}
}
//gold hammer
if (argument0=33)
{
damage_weapon_slash_1=10;
damage_weapon_thrust_1=10;
damage_weapon_type_slash_1=5;
damage_weapon_type_thrust_1=5;
damage_weapon_slash_2=0;
damage_weapon_thrust_2=0;
damage_weapon_type_slash_2=0;
damage_weapon_type_thrust_2=0;
if argument1=1
{
    image_index=0;
    weapon.color_var=4;
}
}
weapon_description="PUSH"
//apply d mult
damage_weapon_slash_1=damage_weapon_slash_1*global.weapon_damage_mult;
damage_weapon_thrust_1=damage_weapon_thrust_1*global.weapon_damage_mult;
damage_weapon_slash_2=damage_weapon_slash_2*global.weapon_damage_mult;
damage_weapon_thrust_2=damage_weapon_thrust_2*global.weapon_damage_mult;
weapon_current=global.weapon_id;

#define scr_weapons_knife
//knifes

//dagger bronze
if (argument0=41)
{
damage_weapon_slash_1=3;
damage_weapon_thrust_1=3;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=0;
damage_weapon_thrust_2=0;
damage_weapon_type_slash_2=0;
damage_weapon_type_thrust_2=0;
weapon_description="X2 SLASH-X2 THRUST"
//set turn vars
hlock=0;
hturnlock=0;
hattcount=1/2;
vlock=0;
vturnlock=0;
vattcount=1/2;
//set draw vars
if argument1=1
{
    weapon.color_var=2;
    image_index=1;
}
}
//saex bronze
if (argument0=42)
{
damage_weapon_slash_1=4;
damage_weapon_thrust_1=1;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=0;
damage_weapon_thrust_2=0;
damage_weapon_type_slash_2=0;
damage_weapon_type_thrust_2=0;
weapon_description="X3 SLASH"
//set turn vars
hlock=0;
hturnlock=0;
hattcount=1/3;
vlock=0;
vturnlock=0;
vattcount=1;
if argument1=1
{
    weapon.color_var=2;
    image_index=1;
}
}
//roundel bronze
if (argument0=43)
{
damage_weapon_slash_1=1;
damage_weapon_thrust_1=4;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=0;
damage_weapon_thrust_2=0;
damage_weapon_type_slash_2=0;
damage_weapon_type_thrust_2=0;
weapon_description="X3 THRUST"
//set turn vars
hlock=0;
hturnlock=0;
hattcount=1;
vlock=0;
vturnlock=0;
vattcount=1/3;
if argument1=1
{
    weapon.color_var=2;
    image_index=1;
}
}

//dagger silver
if (argument0=44)
{
damage_weapon_slash_1=4;
damage_weapon_thrust_1=4;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=0;
damage_weapon_thrust_2=0;
damage_weapon_type_slash_2=0;
damage_weapon_type_thrust_2=0;
weapon_description="X2 SLASH-X2 THRUST"
//set turn vars
hlock=0;
hturnlock=0;
hattcount=1/2;
vlock=0;
vturnlock=0;
vattcount=1/2;
//set draw vars
if argument1=1
{
    image_index=1;
    weapon.color_var=8;
}
}
//saex silver
if (argument0=45)
{
damage_weapon_slash_1=6;
damage_weapon_thrust_1=1;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=0;
damage_weapon_thrust_2=0;
damage_weapon_type_slash_2=0;
damage_weapon_type_thrust_2=0;
weapon_description="X3 SLASH"
//set turn vars
hlock=0;
hturnlock=0;
hattcount=1/3;
vlock=0;
vturnlock=0;
vattcount=1;
if argument1=1
{
    image_index=1;
    weapon.color_var=8;
}
}
//roundel silver
if (argument0=46)
{
damage_weapon_slash_1=1;
damage_weapon_thrust_1=6;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=0;
damage_weapon_thrust_2=0;
damage_weapon_type_slash_2=0;
damage_weapon_type_thrust_2=0;
weapon_description="X3 THRUST"
//set turn vars
hlock=0;
hturnlock=0;
hattcount=1;
vlock=0;
vturnlock=0;
vattcount=1/3;
if argument1=1
{
   image_index=1;
   weapon.color_var=8;
}
}

//dagger gold
if (argument0=47)
{
damage_weapon_slash_1=7;
damage_weapon_thrust_1=7;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=0;
damage_weapon_thrust_2=0;
damage_weapon_type_slash_2=0;
damage_weapon_type_thrust_2=0;
weapon_description="X2 SLASH-X2 THRUST"
//set turn vars
hlock=0;
hturnlock=0;
hattcount=1/2;
vlock=0;
vturnlock=0;
vattcount=1/2;
//set draw vars
if argument1=1
{
    image_index=1;
    weapon.color_var=4;
}
}
//saex gold
if (argument0=48)
{
damage_weapon_slash_1=9;
damage_weapon_thrust_1=1;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=0;
damage_weapon_thrust_2=0;
damage_weapon_type_slash_2=0;
damage_weapon_type_thrust_2=0;
weapon_description="X3 SLASH"
//set turn vars
hlock=0;
hturnlock=0;
hattcount=1/3;
vlock=0;
vturnlock=0;
vattcount=1;
if argument1=1
{
    image_index=1;
    weapon.color_var=4;
}
}
//roundel gold
if (argument0=49)
{
damage_weapon_slash_1=1;
damage_weapon_thrust_1=9;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=0;
damage_weapon_thrust_2=0;
damage_weapon_type_slash_2=0;
damage_weapon_type_thrust_2=0;
weapon_description="X3 THRUST"
//set turn vars
hlock=0;
hturnlock=0;
hattcount=1;
vlock=0;
vturnlock=0;
vattcount=1/3;
if argument1=1
{
   image_index=1;
   weapon.color_var=4;
}
}
//apply d mult
damage_weapon_slash_1=damage_weapon_slash_1*global.weapon_damage_mult;
damage_weapon_thrust_1=damage_weapon_thrust_1*global.weapon_damage_mult;
damage_weapon_slash_2=damage_weapon_slash_2*global.weapon_damage_mult;
damage_weapon_thrust_2=damage_weapon_thrust_2*global.weapon_damage_mult;
weapon_current=global.weapon_id;

#define scr_weapons_spear
//spears

//short spear bronze
if (argument0=51)
{
damage_weapon_slash_1=1;
damage_weapon_thrust_1=5;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=0;
damage_weapon_thrust_2=0;
damage_weapon_type_slash_2=0;
damage_weapon_type_thrust_2=0;
weapon_description="X2 THRUST"
//set turn vars
hlock=0;
hturnlock=0;
hattcount=1;
vlock=1;
vturnlock=0;
vattcount=0.5;
//set draw vars
if argument1=1
{
    image_index=3;
    weapon.color_var=2;
}
}
//short spear silver
if (argument0=52)
{
damage_weapon_slash_1=2;
damage_weapon_thrust_1=9;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=0;
damage_weapon_thrust_2=0;
damage_weapon_type_slash_2=0;
damage_weapon_type_thrust_2=0;
weapon_description="X2 THRUST"
//set turn vars
hlock=0;
hturnlock=0;
hattcount=1;
vlock=1;
vturnlock=0;
vattcount=0.5;
if argument1=1
{
    image_index=3;
    weapon.color_var=8;
}
}
//short spear gold
if (argument0=53)
{
damage_weapon_slash_1=3;
damage_weapon_thrust_1=13;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=0;
damage_weapon_thrust_2=0;
damage_weapon_type_slash_2=0;
damage_weapon_type_thrust_2=0;
weapon_description="X2 THRUST"
//set turn vars
hlock=0;
hturnlock=0;
hattcount=1;
vlock=1;
vturnlock=0;
vattcount=0.5;
if argument1=1
{
    image_index=3;
    weapon.color_var=4;
}
}

//spear bronze
if (argument0=54)
{
damage_weapon_slash_1=1;
damage_weapon_thrust_1=5;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=0;
damage_weapon_thrust_2=0;
damage_weapon_type_slash_2=0;
damage_weapon_type_thrust_2=0;
weapon_description="X2 THRUST-REACH-RAGE"
//set turn vars
hlock=0;
hturnlock=0;
hattcount=1;
vlock=1;
vturnlock=2;
vattcount=0.5;
//set draw vars
if argument1=1
{
    image_index=4;
    weapon.color_var=2;
}
}
//spear silver
if (argument0=55)
{
damage_weapon_slash_1=1;
damage_weapon_thrust_1=9;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=0;
damage_weapon_thrust_2=0;
damage_weapon_type_slash_2=0;
damage_weapon_type_thrust_2=0;
weapon_description="X2 THRUST-REACH-RAGE"
//set turn vars
hlock=0;
hturnlock=0;
hattcount=1;
vlock=1;
vturnlock=2;
vattcount=0.5;
if argument1=1
{
    image_index=4;
    weapon.color_var=8;
}
}
//spear gold
if (argument0=56)
{
damage_weapon_slash_1=1;
damage_weapon_thrust_1=14;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=0;
damage_weapon_slash_2=0;
damage_weapon_thrust_2=0;
damage_weapon_type_slash_2=0;
damage_weapon_type_thrust_2=0;
weapon_description="X2 THRUST-REACH-RAGE"
//set turn vars
hlock=0;
hturnlock=0;
hattcount=1;
vlock=1;
vturnlock=2;
vattcount=0.5;
if argument1=1
{
    image_index=4;
    weapon.color_var=4;
}
}


//apply d mult
damage_weapon_slash_1=damage_weapon_slash_1*global.weapon_damage_mult;
damage_weapon_thrust_1=damage_weapon_thrust_1*global.weapon_damage_mult;
damage_weapon_slash_2=damage_weapon_slash_2*global.weapon_damage_mult;
damage_weapon_thrust_2=damage_weapon_thrust_2*global.weapon_damage_mult;
weapon_current=global.weapon_id;

#define scr_weapons_axe
//axes

//axe bronze
if (argument0=61)
{
damage_weapon_slash_1=5;
damage_weapon_thrust_1=5;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=1;
damage_weapon_slash_2=3;
damage_weapon_thrust_2=3;
damage_weapon_type_slash_2=5;
damage_weapon_type_thrust_2=5;
weapon_description="RAGE"
//set turn vars
hlock=0;
hturnlock=3;
hattcount=1;
vlock=0;
vturnlock=3;
vattcount=1;
//set draw vars
if argument1=1
{
    image_index=5;
    weapon.color_var=2;
}
}
//axe silver
if (argument0=62)
{
damage_weapon_slash_1=10;
damage_weapon_thrust_1=10;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=1;
damage_weapon_slash_2=6;
damage_weapon_thrust_2=6;
damage_weapon_type_slash_2=5;
damage_weapon_type_thrust_2=5;
weapon_description="RAGE"
//set turn vars
hlock=0;
hturnlock=3;
hattcount=1;
vlock=0;
vturnlock=3;
vattcount=1;
if argument1=1
{
    image_index=5;
    weapon.color_var=8;
}
}
//axe gold
if (argument0=63)
{
damage_weapon_slash_1=15;
damage_weapon_thrust_1=15;
damage_weapon_type_slash_1=1;
damage_weapon_type_thrust_1=1;
damage_weapon_slash_2=9;
damage_weapon_thrust_2=9;
damage_weapon_type_slash_2=5;
damage_weapon_type_thrust_2=5;
weapon_description="RAGE"
//set turn vars
hlock=0;
hturnlock=3;
hattcount=1;
vlock=0;
vturnlock=3;
vattcount=1;
if argument1=1
{
    image_index=5;
    weapon.color_var=4;
}
}
//apply d mult
damage_weapon_slash_1=damage_weapon_slash_1*global.weapon_damage_mult;
damage_weapon_thrust_1=damage_weapon_thrust_1*global.weapon_damage_mult;
damage_weapon_slash_2=damage_weapon_slash_2*global.weapon_damage_mult;
damage_weapon_thrust_2=damage_weapon_thrust_2*global.weapon_damage_mult;
weapon_current=global.weapon_id;