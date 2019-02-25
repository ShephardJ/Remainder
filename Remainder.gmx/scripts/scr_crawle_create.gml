#define scr_crawle_create
var square_limit=725;
//move array
var a1=15;
var a2=1;
do
{
    move_array[a1,a2]=-1;
    a2-=1
    if a2<0
    {
        a1-=1;
        a2=1;//0 is direction(0=up;1=right,...) and second n squares
    }
} until a1<0


//choose and set start point
start_point=irandom(8);
start_point=scr_crawl_set_start(start_point);

square_limit-=(5*5);

//set up rest of rooms
var square_limite_count=square_limit;
var room_count=1
var check =1;
do 
{
    //set room type
    global.crawl_room_array[room_count,1]=room_count;
    //set room type
    global.crawl_room_array[room_count,2]=0;
    //set room size
    global.crawl_room_array[room_count,3]=irandom_range(5,15);
    if frac(global.crawl_room_array[room_count,3]/2)=0 global.crawl_room_array[room_count,3]-=1;
    global.crawl_room_array[room_count,4]=irandom_range(5,15);
    if frac(global.crawl_room_array[room_count,4]/2)=0 global.crawl_room_array[room_count,4]-=1;
    var size=global.crawl_room_array[room_count,3]*global.crawl_room_array[room_count,4];
    square_limite_count-=size;
    
    //get center position of room
    do
    {
        check=1;
        //get last room info
        var reference_center= global.crawl_room_array[room_count-1,0];
        var reference_center_x=scr_crawl_x(reference_center);
        var reference_center_y=scr_crawl_y(reference_center);
        var reference_Dx=global.crawl_room_array[room_count-1,3];
        var reference_Dy=global.crawl_room_array[room_count-1,4];
        
        //set x and y delta direction
        if reference_center_x<30 reference_Dx_D=1
        else
        {
            if reference_center_x<70 {reference_Dx_D=irandom(1);if reference_Dx_D=0 reference_Dx_D=-1;}
            else reference_Dx_D=-1;
        }
        
        if reference_center_y<30 reference_Dy_D=1
        else
        {
            if reference_center_y<70 {reference_Dy_D=irandom(1);if reference_Dy_D=0 reference_Dy_D=-1;}
            else reference_Dy_D=-1;
        }
        //set x and y
        var find_x=reference_center_x+reference_Dx_D*(((reference_Dx-1)/2)+((global.crawl_room_array[room_count,3]-1)/2)+irandom_range(3,15));
        var find_y=reference_center_y+reference_Dy_D*(((reference_Dy-1)/2)+((global.crawl_room_array[room_count,4]-1)/2)+irandom_range(3,15));
        
        var new_center=find_x*100+find_y;
        //try x and y
        var a1_1=-(global.crawl_room_array[room_count,3]-1)/2;
        var a1=(global.crawl_room_array[room_count,3]-1)/2;
        var a2_1=-(global.crawl_room_array[room_count,4]-1)/2;
        var a2=(global.crawl_room_array[room_count,4]-1)/2;
        
        do 
        {
            if  new_center+a2+a1*100>-1&&new_center+a2+a1*100<10000{ if!( global.crawl_square_array[new_center+a2+a1*100,0]=-1) check=0} //////NEEDS FIX

            a2-=1;
            if a2<a2_1
            {   
                a2=-1*a2_1;
                a1-=1;
            }
        }
        until a1<a1_1
    }
    until check = 1;
    
    //set center
    global.crawl_room_array[room_count,0]=new_center;
    
    //set exit
    
    var ext1=-1;
    var ext2=-1;
    var ext3=-1;
    var ext4=-1;
    var ext_n=3;
    
    var ext=irandom(3);
    if ext=0 ext1=new_center+a2;
    if ext=1 ext1=new_center-a1*100;
    if ext=2 ext1=new_center-a2;
    if ext=3 ext1=new_center+a1*100;
    if ext_n>=1
    do
    {
        var ext=irandom(3);
        if ext=0 ext2=new_center+a2;
        if ext=1 ext2=new_center-a1*100;
        if ext=2 ext2=new_center-a2;
        if ext=3 ext2=new_center+a1*100;
    }
    until !(ext1=ext2)
    if ext_n>=2
    do
    {
        var ext=irandom(3);
        if ext=0 ext3=new_center+a2;
        if ext=1 ext3=new_center-a1*100;
        if ext=2 ext3=new_center-a2;
        if ext=3 ext3=new_center+a1*100;
    }
    until !(ext1=ext2)&&!(ext1=ext3)&&!(ext2=ext3)
    if ext_n=3
    do
    {
        var ext=irandom(3);
        if ext=0 ext4=new_center+a2;
        if ext=1 ext4=new_center-a1*100;
        if ext=2 ext4=new_center-a2;
        if ext=3 ext4=new_center+a1*100;
    }
    until  !(ext1=ext2)&&!(ext1=ext3)&&!(ext2=ext3)&&!(ext1=ext4)&&!(ext2=ext4)&&!(ext3=ext4)
    
    global.crawl_room_array[room_count,5]=ext1;
    global.crawl_room_array[room_count,6]=ext2;
    global.crawl_room_array[room_count,7]=ext3;
    global.crawl_room_array[room_count,8]=ext4;
    
    //set theme
    global.crawl_room_array[room_count,9]=0;
    //set seen
    global.crawl_room_array[room_count,10]=0;
    
    //set squares
    //set square vars
    var a1_1=-(global.crawl_room_array[room_count,3]-1)/2;
    var a1=(global.crawl_room_array[room_count,3]-1)/2;
    var a2_1=-(global.crawl_room_array[room_count,4]-1)/2;
    var a2=(global.crawl_room_array[room_count,4]-1)/2;
    
    do 
    {
        global.crawl_square_array[global.crawl_room_array[room_count,0]+a2+a1*100,0]=room_count;
        global.crawl_square_array[global.crawl_room_array[room_count,0]+a2+a1*100,2]=0;
        a2-=1;
        if a2<a2_1
        {   
            a2=-1*a2_1;
            a1-=1;
        }
    }
    until a1<a1_1
    //make a tunnel
    
    
    
    room_count+=1;
    check =0;
}
until square_limite_count<25

//set up tunnels

var check=0;
var start_point=0;
var start_point_c=0;
var start_point_dx=0;
var start_point_c_r_dx=0;
var start_point_dy=0;
var start_point_c_r_dy=0;
var start_point=0;
var end_point=0;
var end_point_c=0;
var end_point_dx=0;
var end_point_c_r_dx=0;
var end_point_dy=0;
var end_point_c_r_dy=0;
var point_dx=0;
var point_dy=0;

var a1=0;
var a2=0;

do
{
    if !(global.crawl_room_array[a1,0]=-1)
    {
        //check reletive position of exit to center
        start_point=global.crawl_room_array[a1,5];
        start_point_c=global.crawl_room_array[a1,0];
        
        start_point_c_r_dx=scr_crawl_x(start_point)-scr_crawl_x(start_point_c);
        start_point_c_r_dy=scr_crawl_y(start_point)-scr_crawl_y(start_point_c);
        
        
        
        
        //check arround for nearest room
        if !(global.crawl_room_array[a1+1,0]=-1) a2 = a1+1;
        else a2 =a1-1;
        //check nearest room exits relative to center
            var ext_chck=5
            var check_x=0;
            var check_y=0;
            do 
            {
                end_point=global.crawl_room_array[a2,ext_chck];
                end_point_c=global.crawl_room_array[a2,0];
                
                end_point_c_r_dx=scr_crawl_x(end_point)-scr_crawl_x(end_point_c);
                end_point_c_r_dy=scr_crawl_y(end_point)-scr_crawl_y(end_point_c);
                ext_chck+=1;
                //check_x
                if (sign(end_point_c_r_dx)+sign(start_point_c_r_dx))=0&&abs(scr_crawl_x(end_point)-scr_crawl_x(start_point))<=abs(scr_crawl_x(end_point_c)-scr_crawl_x(start_point_c))
                {
                    if end_point<start_point
                    {
                        if end_point_c<end_point&&end_point<start_point&&start_point<start_point_c check_x=1;
                        else check_x=0;
                    }
                    else
                    {
                        if end_point_c>end_point&&end_point>start_point&&start_point>start_point_c check_x=1;
                        else check_x=0;
                    }
                    check_x=1;
                }
                else check_x=0
                //check y
                if (sign(end_point_c_r_dy)+sign(start_point_c_r_dy))=0
                {
                    if scr_crawl_y(end_point)<scr_crawl_y(start_point)&&abs(scr_crawl_y(end_point)-scr_crawl_y(start_point))<=abs(scr_crawl_y(end_point_c)-scr_crawl_y(start_point_c))
                    {
                        if scr_crawl_y(end_point_c)<scr_crawl_y(end_point)&&scr_crawl_y(end_point)<scr_crawl_y(start_point)&&scr_crawl_y(start_point)<scr_crawl_y(start_point_c) check_y=1;
                        else check_y=0;
                    }
                    else
                    {
                        if scr_crawl_y(end_point_c)>scr_crawl_y(end_point)&&scr_crawl_y(end_point)>scr_crawl_y(start_point)&&scr_crawl_y(start_point)>scr_crawl_y(start_point_c) check_y=1;
                        else check_y=0;
                    }
                    check_y=1;
                }
                else check_y=0
                
                if check_x=1&&check_y=1 check=1
                else{check=0; check_x=0; check_y=0;ext_chck+=1; if ext_chck=9{a2+=1; ext_chck=5} }
            }
            until global.crawl_room_array[a2,ext_chck]=-1||check=1
           /* 
                //see if start and end are easy to link
            
                //if they arent, check other detination to see if they are easer
                
                //if not, revert to og
            */
            //look for link
            if check=1
            {   
                //setup
                
                if !(global.crawl_square_array[start_point-1,0]=-1) start_point-=1;
                else
                {
                    if !(global.crawl_square_array[start_point+100,0]=-1) start_point+=100;
                    else
                    {
                        if !(global.crawl_square_array[start_point+1,0]=-1) start_point+=1;
                        else
                        {
                            if !(global.crawl_square_array[start_point-100,0]=-1) start_point-=100;
                        }
                    }
                }
                point_dx=scr_crawl_x(end_point)-scr_crawl_x(start_point);
                point_dy=scr_crawl_y(end_point)-scr_crawl_y(start_point);
                
                //compare dx and dy, then see min distance in each direction and go for longest
                var switching=0;
                var checking_x=0;
                var checking_y=0;
                var check=0;
                //check x
                do
                {
                    if global.crawl_square_array[start_point+100*sign(point_dx)*checking_x,0]=-1 checking_x+=1
                    else check=1
                }
                until check=1||checking_x=point_dx
                
                //check y
                var check=0;
                do
                {
                    if global.crawl_square_array[start_point+sign(point_dy)*checking_y,0]=-1 checking_y+=1
                    else check=1
                }
                until check=1||checking_y=point_dy
                
                if (checking_x/point_dx)>(checking_y/point_dy) var switching="a1";
                else var switching="a2";
                
                
                //go in that direction until blocage, destination, cleared to go around to destination
                var checking_x=0;
                var checking_y=0;
                var checking_x_s = sign(point_dx);
                var checking_y_s = sign(point_dy);
                var check=0;
                var track_move=0;
                //find simple path
                do
                {
                    //x
                    if switching="a1"
                    {
                        if global.crawl_square_array[start_point+100*sign(point_dx)*checking_x,0]=-1/*||global.crawl_square_array[start_point+100*sign(pointdx)*checking_x]=50*/
                        {
                            checking_x+=1;
                        }
                        else 
                        {
                            move_array[track_move,1]=checking_x;
                            if sign(point_dx)=1 move_array[track_move,0]=1;
                            else move_array[track_move,0]=3;
                            track_move+=1;
                            switching="a2";
                        }
                    }
                    //y
                    if switching="a2"
                    {
                        if global.crawl_square_array[start_point+sign(point_dy)*checking_y,0]=-1
                        {
                            checking_y+=1;
                        }
                        else 
                        {
                            move_array[track_move,1]=checking_y;
                            if sign(point_dy)=1 move_array[track_move,0]=2;
                            else move_array[track_move,0]=0;
                            track_move+=1;
                            switching="a1";
                        }
                    }
                    if track_move>3
                    {
                        if move_array[track_move-1,1]=move_array[track_move-2,1] check=1;
                    }
                }
                until checking_x=point_dx&&checking_y=point_dy||check=1
                var check=0;
                //repeat if need be
                
                //determin if the link is good
            }
         //link em up with info gotten above
         var checking=0;
         var checking_x=0;
         var checking_y=0;
         var fill_a1=-1;
         var fill_a2=-1;
         do
         {
            if move_array[checking,0]=0||move_array[checking,0]=2
            {
                if abs(checking_y)<abs(move_array[checking,1]) checking_y+=sign(point_dy)*1;
                else checking+=1;
            }
            else
            {
                if abs(checking_x)<abs(move_array[checking,1]) checking_x+=sign(point_dx)*1;
                else checking+=1;
            }
            do
            {
                if start_point+(checking_x+fill_a1)*100+checking_y+fill_a2<10000&&start_point+(checking_x+fill_a1)*100+checking_y+fill_a2>-1
                {
                    if global.crawl_square_array[start_point+(checking_x+fill_a1)*100+checking_y+fill_a2,0]=-1 global.crawl_square_array[start_point+(checking_x+fill_a1)*100+checking_y+fill_a2,0]=50;
                }
                fill_a2+=1;
                if fill_a2>1
                {
                    fill_a2=-1;
                    fill_a1+=1;
                }
            }
            until fill_a1=2
            fill_a1=-1;
            fill_a2=-1;

         }
         until move_array[checking,0]=-1
         
         //reset
         var fill_a1=15;
         var fill_a2=1;
         do
         {
            move_array[fill_a1,fill_a2]=-1;
            fill_a2-=1
            if fill_a2<0
            {
                fill_a1-=1;
                fill_a2=1;//0 is direction(0=up;1=right,...) and second n squares
            }
         } until fill_a1<0
         check=0;
         a1+=1
    }
    else check=1;
}
until check=1

//check to see if all rooms are accessible && remove unusable exits

var a1=0;
var a2=0;
var count exits=0;
var errors=0;
var errors_track=0;
var check=0;

do
{
    if !(global.crawl_room_array[a1,0]=-1)
    {
        var exit_total=0;
        var error1=0;
        var error2=0;
        var error3=0;
        var error4=0;
        if !(global.crawl_room_array[a1,5]=-1)
        {
            //check for errors1
            errors_track=errors
            var exit_checking=global.crawl_room_array[a1,5];
            var exit_checking_a1=-1;
            var exit_checking_a2=-1;
            do
            {
                if global.crawl_square_array[exit_checking+exit_checking_a1*100+exit_checking_a2,0]=-1
                {
                    errors+=1;
                    error1=1;
                }
                else
                {
                    exit_checking_a1+=1;
                    if exit_checking_a1>1
                    {
                        exit_checking_a1=-1
                        exit_checking_a2+=1
                    }
                }
            }
            until exit_checking_a2>1||errors>errors_track
            exit_total+=1;
        }
        if !(global.crawl_room_array[a1,6]=-1)
        {
           //check for errors2
            errors_track=errors
            var exit_checking=global.crawl_room_array[a1,6];
            var exit_checking_a1=-1;
            var exit_checking_a2=-1;
            do
            {
                if global.crawl_square_array[exit_checking+exit_checking_a1*100+exit_checking_a2,0]=-1
                {
                    errors+=1;
                    error2=1;
                }
                else
                {
                    exit_checking_a1+=1;
                    if exit_checking_a1>1
                    {
                        exit_checking_a1=-1
                        exit_checking_a2+=1
                    }
                }
            }
            until exit_checking_a2>1||errors>errors_track
            exit_total+=1;
        }
        if !(global.crawl_room_array[a1,7]=-1)
        {
               //check for errors3
            errors_track=errors
            var exit_checking=global.crawl_room_array[a1,7];
            var exit_checking_a1=-1;
            var exit_checking_a2=-1;
            do
            {
                if global.crawl_square_array[exit_checking+exit_checking_a1*100+exit_checking_a2,0]=-1
                {
                    errors+=1;
                    error3=1;
                }
                else
                {
                    exit_checking_a1+=1;
                    if exit_checking_a1>1
                    {
                        exit_checking_a1=-1
                        exit_checking_a2+=1
                    }
                }
            }
            until exit_checking_a2>1||errors>errors_track
            exit_total+=1;
        }
        if !(global.crawl_room_array[a1,8]=-1)
        {
               //check for errors4
            errors_track=errors
            var exit_checking=global.crawl_room_array[a1,8];
            var exit_checking_a1=-1;
            var exit_checking_a2=-1;
            do
            {
                if global.crawl_square_array[exit_checking+exit_checking_a1*100+exit_checking_a2,0]=-1
                {
                    errors+=1;
                    error4=1;
                }
                else
                {
                    exit_checking_a1+=1;
                    if exit_checking_a1>1
                    {
                        exit_checking_a1=-1
                        exit_checking_a2+=1
                    }
                }
            }
            until exit_checking_a2>1||errors>errors_track
            exit_total+=1;
        }
        //check it is reachable
        /*if errors>=exit_total room_restart();*/
        //delete errors
        
        if error1=1 global.crawl_room_array[a1,5]=-1;
        if error2=1 global.crawl_room_array[a1,6]=-1;
        if error3=1 global.crawl_room_array[a1,7]=-1;
        if error4=1 global.crawl_room_array[a1,8]=-1;
        
        a1+=1
    }
    else check=1;
}
until check=1

//set sprits
var sprite_wall=spr_crawl_cave_wall_1;
var sprite_corner=spr_crawl_cave_corner_2;
var sprite_center_1=spr_crawl_cave_center_1;
var sprite_center_2=spr_crawl_cave_center_2;

var a1=0;
var a1_1=-1;
var a2=0;
var a2_1=-1;
var check_count=0;
var check=0;
var m=0;
do 
{
    //check posiotions around
    do
    {
        /*if (a1_1=0&&a2_1=0) m=1;
        else m=0;*/
        if  a1+a2_1+a1_1*100>-1&&a1+a2_1+a1_1*100<10000/*&&m=0*/
        {
            if global.crawl_square_array[a1+a2_1+a1_1*100,0]=global.crawl_square_array[a1,0]&&global.crawl_square_array[a1,0]>-1
            {
                check+=1;
            }
            check_count+=1;
        }
        
    
        
        a2_1+=1
        if a2_1=2
        {
            a1_1+=1;
            a2_1=-1;
        }
    }
    until a1_1=2
    //set sprite
    if check=9
    {
        var roll=irandom(1)
        if roll=0 global.crawl_square_array[a1,1]=sprite_center_1;
        if roll=1 global.crawl_square_array[a1,1]=sprite_center_2;
        
        global.crawl_square_array[a1,2]='g';
    }
        
    if check=6
    {
        global.crawl_square_array[a1,1]=sprite_wall;
        
        //image
        if (global.crawl_square_array[a1,0]=global.crawl_square_array[a1+1,0]&&global.crawl_square_array[a1,0]=global.crawl_square_array[a1-1,0])global.crawl_square_array[a1,2]='v';
        if (global.crawl_square_array[a1,0]=global.crawl_square_array[a1+100,0]&&global.crawl_square_array[a1,0]=global.crawl_square_array[a1-100,0])global.crawl_square_array[a1,2]='h';

    }
        
    if check=4
    {
        global.crawl_square_array[a1,1]=sprite_corner;
        global.crawl_square_array[a1,2]='g';
    }
    //reset
    var a1_1=-1;
    var a2_1=-1;
    var check_count=0;
    var check=0;
    a1+=1
}
until a1=10000


#define scr_crawl_set_start
//get start
if argument0=0 var strt_pnt=25*100-1+25;
if argument0=1 var strt_pnt=25*100-1+50;
if argument0=2 var strt_pnt=25*100-1+75;
if argument0=3 var strt_pnt=50*100-1+25;
if argument0=4 var strt_pnt=50*100-1+50;
if argument0=5 var strt_pnt=50*100-1+75;
if argument0=6 var strt_pnt=75*100-1+25;
if argument0=7 var strt_pnt=75*100-1+50;
if argument0=8 var strt_pnt=75*100-1+75;

//set exit
var ext=irandom(3);
if ext=0 ext=strt_pnt-2;
if ext=1 ext=strt_pnt+200;
if ext=2 ext=strt_pnt+2;
if ext=3 ext=strt_pnt-200;

//set room vars
global.crawl_room_array[0,0]=strt_pnt;
global.crawl_room_array[0,1]=0;
global.crawl_room_array[0,2]=1
global.crawl_room_array[0,3]=5;
global.crawl_room_array[0,4]=5;
global.crawl_room_array[0,5]=ext;
global.crawl_room_array[0,9]=0;
global.crawl_room_array[0,10]=0;

//set player vars
global.crawl_player_position=strt_pnt;
cmpr_x=scr_crawl_x(ext)-scr_crawl_x(strt_pnt);
cmpr_y=scr_crawl_y(ext)-scr_crawl_y(strt_pnt);
if cmpr_x=0
{
    if cmpr_y>0 global.crawl_player_angle=2;
    else global.crawl_player_angle=0;
}
else
{
    if cmpr_x>0 global.crawl_player_angle=1;
    else global.crawl_player_angle=3;
    
}


//set square vars
var a1_1=-(global.crawl_room_array[0,3]-1)/2;
var a1=(global.crawl_room_array[0,3]-1)/2;
var a2_1=-(global.crawl_room_array[0,4]-1)/2;
var a2=(global.crawl_room_array[0,4]-1)/2;
do 
{
    global.crawl_square_array[(strt_pnt+a2)+(a1*100),0]=0;
    global.crawl_square_array[strt_pnt+a2+a1*100,2]=1;
    a2-=1;
    if a2<a2_1
    {   
        a2=-1*a2_1;
        a1-=1;
    }
}
until a1<a1_1

return strt_pnt;