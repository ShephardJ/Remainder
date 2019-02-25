#define scr_shop_top_draw_talks

scr_shop_top_draw_talks_0();


#define scr_shop_top_draw_talks_0
var txt_col=$f4f4f4;
draw_set_font(font0);
draw_set_colour(txt_col);
//draw names of stats

//draw text
if talk_cap<2
{
    cycle_timer-=1;
    if cycle_timer<=0
    {
       cycle_timer=300;
       talk_cycle-=1;
       if talk_cycle<0 talk_cycle=2;
    }
    if talk_cycle>talk_cap
    {
        draw_set_colour(txt_col);
        draw_set_font(font0);
        draw_set_halign(fa_center);
        draw_set_valign(fa_top);
        draw_text_ext(1080/2,200,talk_array[talk_cycle],48,900);
         draw_healthbar(17*7.8,108*7.8,123*7.8 ,117*7.8, cycle_timer/300*100, c_black, txt_col, txt_col,0,false,false);
    }
    else
    {
        //draw question mark
        talk_cycle=2;
        if talk_cycle>talk_cap
        {
            draw_set_colour(txt_col);
            draw_set_font(font0);
            draw_set_halign(fa_center);
            draw_set_valign(fa_top);
            draw_text_ext(1080/2,200,talk_array[talk_cycle],48,900);
            draw_healthbar(17*7.8,108*7.8,123*7.8 ,117*7.8, cycle_timer/300*100, c_black, txt_col, txt_col,0,false,false);
        }
        
    }
}
else draw_text_ext(1080/2,200,"TALK ?",48,900);