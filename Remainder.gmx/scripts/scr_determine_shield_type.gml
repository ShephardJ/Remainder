//determine shape
shield_id=argument0;
var shape_count=0;
do
{
    shield_id-=108;
    shape_count+=1;
}
until(shield_id<=0)
shape=shape_count;
    
    //draw_sprite
    if argument1=1
    {
    image_index=shape_count;
    obj_body.image_index=shape;
    obj_jewel.image_index=shape;
    }
    
shield_id+=108;

//determine frame
var frame_count=0;
do
{
    shield_id-=36;
    frame_count+=1;
}
until(shield_id<=0)
frame=frame_count;
if argument1=1
{
    color_var=frame;
}
shield_id+=36;

//determine body
var body_count=0;
do
{
    shield_id-=6;
    body_count+=1;
}
until(shield_id<=0)
body=body_count;
if argument1=1
{
    obj_body.color_var=body;
}
shield_id+=6;
//determine jewel
jewel=shield_id;
if argument1=1
{
obj_jewel.color_var=jewel;
}

scr_shield_stat_calculation(shape,frame,body,jewel);
