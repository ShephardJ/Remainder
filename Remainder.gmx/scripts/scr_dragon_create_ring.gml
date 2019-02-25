#define scr_dragon_create_ring
var rings_current=argument0;
var ring_depth=depth+1;
do
{
    ring_array[rings_current]=(instance_create((abs(x-initial_x)*(rings_current/(argument0+1)+initial_x)),(abs(y-initial_y)*(rings_current/(argument0+1))+initial_y),obj_red_dragon_ring));
    ring_array[rings_current].depth=ring_depth;
    ring_array[rings_current].attack_type=attack_type; 
    ring_array[rings_current].color_var_get=damage_type_1; 
    ring_array[rings_current].damage_1=damage_1;
    ring_array[rings_current].damage_type_1=damage_type_1;
    ring_array[rings_current].damage_2=damage_2;
    ring_array[rings_current].damage_type_2=damage_type_2;
    ring_array[rings_current].audio_hit_player=audio_hit_player;
    ring_depth+=1;
    rings_current-=1;
}
until rings_current=0

ring_array[0]=0;

#define scr_dragon_create_ring_blue
var rings_current=argument0;
var ring_depth=depth+1;
do
{
    ring_array[rings_current]=(instance_create((abs(x-initial_x)*(rings_current/(argument0+1)+initial_x)),(abs(y-initial_y)*(rings_current/(argument0+1))+initial_y),obj_blue_dragon_ring));
    ring_array[rings_current].depth=ring_depth;
    ring_array[rings_current].attack_type=attack_type; 
    ring_array[rings_current].color_var_get=damage_type_1; 
    ring_array[rings_current].damage_1=damage_1;
    ring_array[rings_current].damage_type_1=damage_type_1;
    ring_array[rings_current].damage_2=damage_2;
    ring_array[rings_current].damage_type_2=damage_type_2;
    ring_array[rings_current].audio_hit_player=audio_hit_player;
    ring_depth+=1;
    rings_current-=1;
}
until rings_current=0

ring_array[0]=0;