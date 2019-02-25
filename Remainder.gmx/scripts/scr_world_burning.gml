
    if burned>=t_array[burn_tile].burn_amount&&burn_fx.moving=0
    {
        burn_tile+=1;
        global.burn_tile=burn_tile;
        burn_fx.image_index=2;
        burn_fx.moving=1;
        creep1.on=0;
        creep2.on=0;
        creep3.on=0;
        
        var a1 = 9;
        do
        {
            flame[a1].on=0;
            a1-=1;
        }
        until a1=-1
    }
    else
    {
        if burn_fx.moving=0
        {
        burn_fx.image_speed=0;
        burn_fx.image_index=8;
        if burn_tile>1 t_array[burn_tile-1].sprite_index=spr_empty;

        /*burn_tile+=1;
        global.burn_tile=burn_tile;*/
        
        creep1.on=1;
        creep1.state=0;
        creep2.on=1;
        creep2.state=0;
        creep3.on=1;
        creep3.state=0;
        
        var a1 = 9;
        do
        {
            flame[a1].on=1;
            a1-=1;
        }
        until a1=-1
        current_player_state=player_world_state.interacting;
        }
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
