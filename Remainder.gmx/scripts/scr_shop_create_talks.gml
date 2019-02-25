#define scr_shop_create_talks
//make talk 1
shop_talk_1=instance_create(117+10,1920/2+362,obj_shop_talk);
shop_talk_1.talk_id=shop_talk_1_id;
//make talk 2
shop_talk_2=instance_create(452+10,1920/2+362,obj_shop_talk);
shop_talk_2.talk_id=shop_talk_2_id;
//make talk 2
shop_talk_3=instance_create(780+10,1920/2+362,obj_shop_talk);
shop_talk_3.talk_id=shop_talk_3_id;

//determin arrays
if global.fight_round<4 
{
    shop_tip_array[2]=scr_tips_3
    shop_tip_array[1]=scr_tips_2
    shop_tip_array[0]=scr_tips
    shop_talk_1.talk_id=1;
    shop_talk_2.talk_id=2;
    shop_talk_3.talk_id=2;
}
else
{
    if global.fight_round<=8 
    {
        shop_tip_array[2]=scr_tips
        shop_tip_array[1]=scr_tips_2
        shop_tip_array[0]=scr_tips_4
        shop_talk_1.talk_id=1;
        shop_talk_2.talk_id=2;
        shop_talk_3.talk_id=1;
    }
    else
    {
        shop_tip_array[2]=scr_tips
        shop_tip_array[1]=scr_tips
        shop_tip_array[0]=scr_tips
        shop_talk_1.talk_id=1;
        shop_talk_2.talk_id=3;
        shop_talk_3.talk_id=3;
    }
}
//init shop_talk_array
var shop_talk_array_1=2;
var shop_talk_array_2=2;
do
{
    //first check
    if shop_talk_array_2=2
    {
        /*if shop_talk_array_1=2*/  shop_talk_array[shop_talk_array_1,shop_talk_array_2]=script_execute(shop_tip_array[shop_talk_array_1],(irandom(3)));
        /*if shop_talk_array_1=1  shop_talk_array[shop_talk_array_1,shop_talk_array_2]=scr_tips_2(irandom(3));
        if shop_talk_array_1=0  shop_talk_array[shop_talk_array_1,shop_talk_array_2]=scr_tips(irandom(3));  */
    }
    //second check
    if shop_talk_array_2=1
    {
        do
        {
            shop_talk_array[shop_talk_array_1,shop_talk_array_2]=script_execute(shop_tip_array[shop_talk_array_1],(irandom(3)));
            /*if shop_talk_array_1=2  shop_talk_array[shop_talk_array_1,shop_talk_array_2]=scr_tips_2(irandom(3));
            if shop_talk_array_1=1  shop_talk_array[shop_talk_array_1,shop_talk_array_2]=scr_tips_2(irandom(3));
            if shop_talk_array_1=0  shop_talk_array[shop_talk_array_1,shop_talk_array_2]=scr_tips(irandom(3));  */
        }
        until !(shop_talk_array[shop_talk_array_1,shop_talk_array_2]=shop_talk_array[shop_talk_array_1,shop_talk_array_2+1])
    }
    //third check
    if shop_talk_array_2=0
    {
        do
        {
            shop_talk_array[shop_talk_array_1,shop_talk_array_2]=script_execute(shop_tip_array[shop_talk_array_1],(irandom(3)));
            /*if shop_talk_array_1=2  shop_talk_array[shop_talk_array_1,shop_talk_array_2]=scr_tips_2(irandom(3));
            if shop_talk_array_1=1  shop_talk_array[shop_talk_array_1,shop_talk_array_2]=scr_tips_2(irandom(3));
            if shop_talk_array_1=0  shop_talk_array[shop_talk_array_1,shop_talk_array_2]=scr_tips(irandom(3));  */
        }
        until (!(shop_talk_array[shop_talk_array_1,shop_talk_array_2]=shop_talk_array[shop_talk_array_1,shop_talk_array_2+1]))&&(!(shop_talk_array[shop_talk_array_1,shop_talk_array_2]=shop_talk_array[shop_talk_array_1,shop_talk_array_2+2]))
    }
    //prepare next pass
    shop_talk_array_2-=1;
    if shop_talk_array_2=-1 {shop_talk_array_1-=1;shop_talk_array_2=2;}
}
until shop_talk_array_1=-1

shop_talk_1_track=2;
shop_talk_2_track=2;
shop_talk_3_track=2;

#define scr_shop_create_talks_2
//make talk 1
shop_talk_1=instance_create(117+10,1920/2+362,obj_shop_talk);
shop_talk_1.talk_id=shop_talk_1_id;
//make talk 2
shop_talk_2=instance_create(452+10,1920/2+362,obj_shop_talk);
shop_talk_2.talk_id=shop_talk_2_id;
//make talk 2
shop_talk_3=instance_create(780+10,1920/2+362,obj_shop_talk);
shop_talk_3.talk_id=shop_talk_3_id;

//determin arrays
if global.current_world=0
{
    shop_tip_array[2]=0
    shop_tip_array[1]=(irandom_range(1,2));
    shop_tip_array[0]=(irandom_range(1,2));
    shop_talk_1.talk_id=1;
    shop_talk_2.talk_id=2;
    shop_talk_3.talk_id=2;
}
else
{
    if global.current_world=1
    {
        shop_tip_array[2]=0;
        shop_tip_array[1]=irandom_range(2,5);
        shop_tip_array[0]=(irandom_range(3,5));
        shop_talk_1.talk_id=1;
        shop_talk_2.talk_id=2;
        shop_talk_3.talk_id=2;
    }
    if global.current_world=2
    {
        shop_tip_array[2]=0
        shop_tip_array[1]=(irandom_range(1,4));
        shop_tip_array[0]=(irandom_range(1,4));
        shop_talk_1.talk_id=1;
        shop_talk_2.talk_id=2;
        shop_talk_3.talk_id=2;
    }
    if global.current_world>2
    {
        shop_tip_array[2]=0
        shop_tip_array[1]=0
        shop_tip_array[0]=0
        shop_talk_1.talk_id=1;
        shop_talk_2.talk_id=2;
        shop_talk_3.talk_id=2;
    }
}
//init shop_talk_array
var shop_talk_array_1=2;
var shop_talk_array_2=2;
do
{
    //first check
    if shop_talk_array_2=2
    {
        /*if shop_talk_array_1=2*/  shop_talk_array[shop_talk_array_1,shop_talk_array_2]=scr_world_tips(shop_tip_array[shop_talk_array_1],(irandom(14)));
        /*if shop_talk_array_1=1  shop_talk_array[shop_talk_array_1,shop_talk_array_2]=scr_tips_2(irandom(3));
        if shop_talk_array_1=0  shop_talk_array[shop_talk_array_1,shop_talk_array_2]=scr_tips(irandom(3));  */
    }
    //second check
    if shop_talk_array_2=1
    {
        /*do
        {*/
            shop_talk_array[shop_talk_array_1,shop_talk_array_2]=scr_world_tips(shop_tip_array[shop_talk_array_1],(irandom(14)));
            /*if shop_talk_array_1=2  shop_talk_array[shop_talk_array_1,shop_talk_array_2]=scr_tips_2(irandom(3));
            if shop_talk_array_1=1  shop_talk_array[shop_talk_array_1,shop_talk_array_2]=scr_tips_2(irandom(3));
            if shop_talk_array_1=0  shop_talk_array[shop_talk_array_1,shop_talk_array_2]=scr_tips(irandom(3));  */
        /*}
        until !(shop_talk_array[shop_talk_array_1,shop_talk_array_2]=shop_talk_array[shop_talk_array_1,shop_talk_array_2+1])*/
    }
    //third check
    if shop_talk_array_2=0
    {
        /*do
        {*/
            shop_talk_array[shop_talk_array_1,shop_talk_array_2]=scr_world_tips(shop_tip_array[shop_talk_array_1],(irandom(14)));
            /*if shop_talk_array_1=2  shop_talk_array[shop_talk_array_1,shop_talk_array_2]=scr_tips_2(irandom(3));
            if shop_talk_array_1=1  shop_talk_array[shop_talk_array_1,shop_talk_array_2]=scr_tips_2(irandom(3));
            if shop_talk_array_1=0  shop_talk_array[shop_talk_array_1,shop_talk_array_2]=scr_tips(irandom(3));  */
        /*}
        until (!(shop_talk_array[shop_talk_array_1,shop_talk_array_2]=shop_talk_array[shop_talk_array_1,shop_talk_array_2+1]))&&(!(shop_talk_array[shop_talk_array_1,shop_talk_array_2]=shop_talk_array[shop_talk_array_1,shop_talk_array_2+2]))*/
    }
    //prepare next pass
    shop_talk_array_2-=1;
    if shop_talk_array_2=-1 {shop_talk_array_1-=1;shop_talk_array_2=2;}
}
until shop_talk_array_1=-1

shop_talk_1_track=2;
shop_talk_2_track=2;
shop_talk_3_track=2;