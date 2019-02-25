//set vars
var r_percent=(100-((argument4/1.25)*100));
var returned_current=argument5;
var draw_delta=r_percent-returned_current;
//do math to move bar progresivly
if (draw_delta>5) returned_current+=(abs (draw_delta)/10)
if (draw_delta<-5) returned_current-=(abs (draw_delta)/10)
if (draw_delta<5)&&(draw_delta>-5)returned_current=r_percent;

draw_healthbar(argument0-2,argument1,argument2,argument3+8,returned_current,c_black,argument6,argument7,3,false,false);
return returned_current;
