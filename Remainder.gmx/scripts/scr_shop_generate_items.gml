do
{
//set cheap items
if argument0=0
{
    var pick_item_type=irandom(4)
    //bows
    
    if pick_item_type<4
    {
        pick_item_type=0;
        pick_item_type+=irandom_range(2,5);
    }
    //stone
    if pick_item_type=4
    {
        pick_item_type*=10;
        pick_item_type+=1;
    }
}
//set mid item
if argument0=1
{
    var pick_item_type=irandom(2)*2;
    //bows
    if pick_item_type=0
    {
        pick_item_type+=irandom_range(5,9);
    }
    //wand
    if pick_item_type=2
    {
        pick_item_type*=10;
        pick_item_type+=irandom_range(1,6);
    }
    //stone
    if pick_item_type=4
    {
        pick_item_type*=10;
        pick_item_type+=1;
    }
    
}
//set expensive item
if argument0=2
{
    var pick_item_type=irandom(3)*2;
    //bows
    if pick_item_type=0
    {
        pick_item_type+=irandom_range(9,16);
    }
    //wand
    if pick_item_type=2
    {
        pick_item_type*=10;
        pick_item_type+=irandom_range(7,12);
    }
    //stone
    if pick_item_type=4
    {
        pick_item_type*=10;
        pick_item_type+=1;
    }
    //bomb
    if pick_item_type=6
    {
        pick_item_type*=10;
        pick_item_type+=irandom_range(1,3);
    }
}
}
until !(pick_item_type=global.item_id)
return pick_item_type;

