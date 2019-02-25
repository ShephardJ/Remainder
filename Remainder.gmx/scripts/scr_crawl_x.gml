#define scr_crawl_x
var pos=argument0;
var pos_c=-1;

do
{
    pos-=100;
    pos_c+=1;
    
}
until pos<0;
pos+=100;

return pos_c;

#define scr_crawl_y
var pos=argument0;
var pos_c=-1;

do
{
    pos-=100;
    pos_c+=1;
    
}
until pos<0;
pos+=100;

return pos;