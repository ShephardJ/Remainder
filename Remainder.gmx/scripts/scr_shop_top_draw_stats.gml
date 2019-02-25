#define scr_shop_top_draw_stats
if (item_selected>0)
{
    if (item_selected=1)
    {
        scr_shop_top_draw_stats_health();
    }
    
    if (item_selected=2)
    {
        scr_shop_top_draw_stats_weapon();
    }
    
    if (item_selected=3)
    {
        scr_shop_top_draw_stats_potion();
    }
}
else
{
    
}

#define scr_shop_top_draw_stats_health
var txt_col=$f4f4f4;


draw_set_font(font0);
draw_set_colour(txt_col);
//draw names of stats
draw_set_colour(txt_col);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(1080/2,171,'health');
draw_text(1080/2-230,171+80,'current');
draw_text(1080/2+230,171+80,'next');
draw_text(1080/2,171+405,'poison r');
draw_text(1080/2-230,171+405+80,'current');
draw_text(1080/2+230,171+405+80,'next');
        
//draw actual vales
draw_text(1080/2-230,171+240,20+global.player_health_bonus);
draw_text(1080/2-230,171+405+240,1+global.poison_resist_bonus);
        
if global.health_upgrade_stat=0
{
    draw_text(1080/2+230,171+240,20+5);
    draw_text(1080/2+230,171+405+240,1-0.1);
}
if global.health_upgrade_stat=1
{
    draw_text(1080/2+230,171+240,20+10);
    draw_text(1080/2+230,171+405+240,1-0.2);
}
if global.health_upgrade_stat=2
{
    draw_text(1080/2+230,171+240,20+15);
    draw_text(1080/2+230,171+405+240,1-0.3);
}
if global.health_upgrade_stat=3
{
    draw_text(1080/2+230,171+240,20+20);
    draw_text(1080/2+230,171+405+240,1-0.4);
}
if global.health_upgrade_stat=4
{
    draw_text(1080/2+230,171+240,20+30);
    draw_text(1080/2+230,171+405+240,1-0.5);
}

#define scr_shop_top_draw_stats_weapon
var txt_col=$f4f4f4;


draw_set_font(font0);
draw_set_colour(txt_col);
//draw names of stats
draw_set_colour(txt_col);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(1080/2,171,' all damage mult');
draw_text(1080/2-230,171+80,'current');
draw_text(1080/2+230,171+80,'next');
draw_text(1080/2,171+405,'base ap');
draw_text(1080/2-230,171+405+80,'current');
draw_text(1080/2+230,171+405+80,'next');
        
//draw actual vales
draw_text(1080/2-230,171+240,global.weapon_damage_mult);
draw_text(1080/2-230,171+405+240,2+global.AP_level_bonus);
        
if global.weapon_damage_stat=0
{
    draw_text(1080/2+230,171+240,1.05);
    draw_text(1080/2+230,171+405+240,2);
}
if global.weapon_damage_stat=1
{
    draw_text(1080/2+230,171+240,1.1);
    draw_text(1080/2+230,171+405+240,2);
}
if global.weapon_damage_stat=2
{
    draw_text(1080/2+230,171+240,1.2);
    draw_text(1080/2+230,171+405+240,2);
}
if global.weapon_damage_stat=3
{
    draw_text(1080/2+230,171+240,1.3);
    draw_text(1080/2+230,171+405+240,2);
}
if global.weapon_damage_stat=4
{
    draw_text(1080/2+230,171+240,1.5);
    draw_text(1080/2+230,171+405+240,3);
}

#define scr_shop_top_draw_stats_potion
var txt_col=$f4f4f4;


draw_set_font(font0);
draw_set_colour(txt_col);
//draw names of stats
draw_set_colour(txt_col);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(1080/2,171,'potions');
draw_text(1080/2-230,171+80,'current');
draw_text(1080/2+230,171+80,'next');
draw_text(1080/2,171+405,'heal');
draw_text(1080/2-230,171+405+80,'current');
draw_text(1080/2+230,171+405+80,'next');
        
//draw actual vales
draw_text(1080/2-230,171+240,3+global.potion_bonus);
draw_text(1080/2-230,171+405+240,5+global.potion_heal_bonus);
        
if global.potion_stat=0
{
    draw_text(1080/2+230,171+240,3);
    draw_text(1080/2+230,171+240+405,10);
}
if global.potion_stat=1
{
    draw_text(1080/2+230,171+240,4);
    draw_text(1080/2+230,171+240+405,15);
}
if global.potion_stat=2
{
    draw_text(1080/2+230,171+240,4);
    draw_text(1080/2+230,171+240+405,20);
}
if global.potion_stat=3
{
    draw_text(1080/2+230,171+240,5);
    draw_text(1080/2+230,171+240+405,25);
}
if global.potion_stat=4
{
    draw_text(1080/2+230,171+240,6);
    draw_text(1080/2+230,171+240+405,30);
}