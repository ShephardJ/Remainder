#define scr_shop_item_get_info
if (item_id>=1)&&(item_id<=20)
{
    scr_shop_item_bow()
}
if (item_id>=21)&&(item_id<=40)
{
    scr_shop_item_wand()
}
if (item_id>=41)&&(item_id<=60)
{
    scr_shop_item_movement()
}
if (item_id>=61)&&(item_id<=80)
{
    scr_shop_item_bomb()
}

#define scr_shop_item_bow
//bow classic
    if (item_id=1)
    {
         damage_type_1=0;
         damage_1=5;
         damage_type_2=0;
         damage_2=0;
         range=5;
        AP_use=1
    }
    //bow classic fire
    if (item_id=2)
    {
         damage_type_1=0;
         damage_1=3;
         damage_type_2=2;
         damage_2=2;
         range=5;
        AP_use=1
    }
    //bow classic ice
    if (item_id=3)
    {
         damage_type_1=0;
         damage_1=3;
         damage_type_2=3;
         damage_2=2;
         range=5;
        AP_use=1
    }
    //bow classic poison
    if (item_id=4)
    {
         damage_type_1=0;
         damage_1=3;
         damage_type_2=4;
         damage_2=2;
         range=5;
        AP_use=1
    }
    
    //bow pierce
    if (item_id=5)
    {
         damage_type_1=0;
         damage_1=5;
         damage_type_2=0;
         damage_2=0;
         range=4;
        AP_use=1
    }
    //bow pierce fire
    if (item_id=6)
    {
         damage_type_1=0;
         damage_1=3;
         damage_type_2=2;
         damage_2=2;
         range=4;
        AP_use=1
    }
    //bow pierce ice
    if (item_id=7)
    {
         damage_type_1=0;
         damage_1=3;
         damage_type_2=3;
         damage_2=2;
         range=4;
        AP_use=1
    }
    //bow pierce poison
    if (item_id=8)
    {
         damage_type_1=0;
         damage_1=3;
         damage_type_2=4;
         damage_2=2;
         range=4;
        AP_use=1
    }
    
    //bow gold classic
    if (item_id=9)
    {
         damage_type_1=0;
         damage_1=10;
         damage_type_2=0;
         damage_2=0;
         range=5;
        AP_use=1
    }
    //bow gold classic fire
    if (item_id=10)
    {
         damage_type_1=0;
         damage_1=6;
         damage_type_2=2;
         damage_2=4;
         range=4;
        AP_use=1
    }
    //bow gold classic ice
    if (item_id=11)
    {
         damage_type_1=0;
         damage_1=6;
         damage_type_2=3;
         damage_2=4;
         range=4;
        AP_use=1
    }
    //bow gold classic poison
    if (item_id=12)
    {
         damage_type_1=0;
         damage_1=6;
         damage_type_2=4;
         damage_2=4;
         range=4;
        AP_use=1
    }
    
    //bow gold pierce
    if (item_id=13)
    {
         damage_type_1=0;
         damage_1=10;
         damage_type_2=0;
         damage_2=0;
         range=4;
        AP_use=1
    }
    //bow gold pierce fire
    if (item_id=14)
    {
         damage_type_1=0;
         damage_1=6;
         damage_type_2=2;
         damage_2=4;
         range=4;
        AP_use=1
    }
    //bow gold pierce ice
    if (item_id=15)
    {
         damage_type_1=0;
         damage_1=6;
         damage_type_2=3;
         damage_2=4;
         range=4;
        AP_use=1
    }
    //bow gold pierce poison
    if (item_id=16)
    {
         damage_type_1=0;
         damage_1=6;
         damage_type_2=4;
         damage_2=4;
         range=4;
        AP_use=1
    }
    
    //apply mult
    damage_1*=global.item_damage_mult;
    damage_2*=global.item_damage_mult;
    
    if (item_id>=1&&item_id<5)||(item_id>=9&&item_id<13)
    {
        description='single hit boW';
    }
    
    if (item_id>=5&&item_id<10)||(item_id>=13&&item_id<17)
    {
        description='multiple hit boW';
    }

#define scr_shop_item_wand
// fire wand
    if (item_id=21)
    {
         damage_type_1=2;
         damage_1=5;
         damage_type_2=0;
         damage_2=0;
         range=2;
        AP_use=2;
    }
    
    //ice wand
    if (item_id=22)
    {
         damage_type_1=3;
         damage_1=5;
         damage_type_2=0;
         damage_2=0;
         range=2;
        AP_use=2;
    }
    //poison wand
    if (item_id=23)
    {
         damage_type_1=4;
         damage_1=5;
         damage_type_2=0;
         damage_2=0;
         range=2;
        AP_use=2;
    }
    
    // gold fire wand
    if (item_id=27)
    {
         damage_type_1=2;
         damage_1=10;
         damage_type_2=0;
         damage_2=0;
         range=2;
        AP_use=2;
    }
    
    // fire v wand
if (item_id=24)
{
     damage_type_1=2;
     damage_1=5;
     damage_type_2=0;
     damage_2=0;
     yrange=3;
    AP_use=2;
}
    
//ice v wand
if (item_id=25)
{
     damage_type_1=3;
     damage_1=5;
     damage_type_2=0;
     damage_2=0;
     yrange=3;
    AP_use=2;
}
//poison v wand
if (item_id=26)
{
     damage_type_1=4;
     damage_1=5;
     damage_type_2=0;
     damage_2=0;
     yrange=3;
    AP_use=2;
}
    
    //gold ice wand
    if (item_id=28)
    {
         damage_type_1=3;
         damage_1=10;
         damage_type_2=0;
         damage_2=0;
         range=2;
        AP_use=2;
    }
    //gold poison wand
    if (item_id=29)
    {
         damage_type_1=4;
         damage_1=10;
         damage_type_2=0;
         damage_2=0;
         range=2;
        AP_use=2;
    }
    
    // gold fire v wand
if (item_id=30)
{
     damage_type_1=2;
     damage_1=10;
     damage_type_2=0;
     damage_2=0;
     yrange=3;
    AP_use=2;
}
    
//gold ice v wand
if (item_id=31)
{
     damage_type_1=3;
     damage_1=10;
     damage_type_2=0;
     damage_2=0;
     yrange=3;
    AP_use=2;
}
//gold poison v wand
if (item_id=32)
{
     damage_type_1=4;
     damage_1=10;
     damage_type_2=0;
     damage_2=0;
     yrange=3;
    AP_use=2;
}
    
    //apply mult
    damage_1=damage_1*global.item_damage_mult;
    damage_2=damage_2*global.item_damage_mult;
    //launch script
    
    if (item_id>=21&&item_id<24)||(item_id>=27&&item_id<30)
    {
        description='3 by 2 Wand';
    }
    
    if (item_id>=24&&item_id<27)||(item_id>=30&&item_id<33)
    {
        description='2 by 3 Wand';
    }

#define scr_shop_item_movement
//gale stone
    if (item_id=41)
    {
         damage_type_1=5;
         damage_type_2=0;
         push=1;
         range=5;
        AP_use=1;
        
        description='gust of Wind.';
    }
    
    
    
    //apply mult
    damage_1=damage_1*global.item_damage_mult;
    damage_2=damage_2*global.item_damage_mult;

#define scr_shop_item_bomb
// fire bomb
if (item_id=61)
{
     damage_type_1=2;
     damage_1=15;
     damage_type_2=0;
     damage_2=0;
     range=3;
    AP_use=2;
}
    
//ice bomb
if (item_id=62)
{
     damage_type_1=3;
     damage_1=15;
     damage_type_2=0;
     damage_2=0;
     range=3;
    AP_use=2;
}
//poison bomb
if (item_id=63)
{
     damage_type_1=4;
     damage_1=15;
     damage_type_2=0;
     damage_2=0;
     range=3;
    AP_use=2;
}

description='throW bomb With 1 by 2 blast'

//apply mult
damage_1=damage_1*global.item_damage_mult;
damage_2=damage_2*global.item_damage_mult;