#define scr_show_damage
//determin color_var
if (argument1<2)||(argument1=5)var colvar=1;
if (argument1=2)var colvar=2;
if (argument1=3)var colvar=3;
if (argument1=4)var colvar=4;
//create obj and set vars
show_d=instance_create(x+(sprite_width/2),y-5,obj_damage);
show_d.color_var=colvar;
show_d.damage_taken=argument0;

#define scr_show_damage_2
//determin color_var
if (argument1<2)||(argument1=5)var colvar=1;
if (argument1=2)var colvar=2;
if (argument1=3)var colvar=3;
if (argument1=4)var colvar=4;
//create obj and set vars
show_d=instance_create(x+(sprite_width/2),y+45,obj_damage);
show_d.color_var=colvar;
show_d.damage_taken=argument0;