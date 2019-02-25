if touch>0
        {
            //move camera
            if player.move_to_y>1500 {n-=3;if  n>2200 player.y-=3;}
            if player.move_to_y<350 {n+=3;if n<(1920+(tiles_n-9)*50*7.8) player.y+=3;}
            
            //cap n 
            var nclamp=1920+(tiles_n+1-5)*50*7.8;
            if n<1920 n=1920;
            if n>nclamp n=nclamp;
            
            //move player
            player.move_to_x=7.8*global.point_array[touch.point_n,7];
            player.move_to_y=7.8*global.point_array[touch.point_n,8]+n-(tiles_n+1-global.point_array[touch.point_n,9])*50*7.8;
        }
        if player.moving=0 
        {
            global.tile_array[burn_tile,3]+=t_array[burn_tile].burn_rate;
            t_array[burn_tile].burned=global.tile_array[burn_tile,3];
            burned=t_array[burn_tile].burned;
            if burned>=t_array[burn_tile].burn_amount current_player_state=player_world_state.burning;
            else current_player_state=player_world_state.interacting;
        }
        
//set ys
var a1 = 0;
do 
{
    t_array[a1].y=n-(tiles_n+1-a1)*50*7.8;
    a1+=1;
}
until a1=tiles_n+1

//fire ys
var rate=t_array[burn_tile].burned/t_array[burn_tile].burn_amount;
creep1.burn_ratio=rate;
creep2.burn_ratio=rate;
creep3.burn_ratio=rate;

burn_fx.y=n-(tiles_n+1-burn_tile+1)*50*7.8;
creep1.y=n-(tiles_n+1-burn_tile)*50*7.8;
creep2.y=n-(tiles_n+1-burn_tile)*50*7.8;
creep3.y=n-(tiles_n+1-burn_tile)*50*7.8;
a1 = 9;
do
{
    flame[a1].y=n-(tiles_n+1-burn_tile)*50*7.8;
    a1-=1;
}
until a1=-1
