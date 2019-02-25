argument0=argument0;
argument2=argument2;
var hp_track=hp
//stop bullshit
m=argument4;
m=argument5;
m=argument6;
m=argument7;
m=argument8;
m=argument9;


//calculate damage
var resistance=argument[argument[0]+4];
hp-= round (argument1*resistance);

if(argument3>0)
{
     resistance=argument[argument[2]+4];
     hp-= round (argument3*resistance);
}
hp_track-=hp;
return hp_track;
