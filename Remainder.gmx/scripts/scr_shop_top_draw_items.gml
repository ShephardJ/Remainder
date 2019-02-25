// write names of categories
draw_set_font(font0);
draw_set_colour(grey_l);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(312,150+50,'damage 1:');
draw_text(756+20,150+50,'type 1:');
draw_text(312,300+50,'damage 2:');
draw_text(756+20,300+50,'type 2:');
draw_text(312,430+50,'range:');
draw_text(756+20,430+50,'AP usage:');
if (item_selected>=1)
{
    draw_set_halign(fa_center)
    draw_set_valign(fa_top);
    draw_text(312,200+20,selected_item_damage_1);
    draw_text(756+20,200+20,damage_type_text_array[selected_item_damage_type_1]);
    draw_text(312,350+20,selected_item_damage_2);
    draw_text(756+20,350+20,damage_type_text_array[selected_item_damage_type_2]);
    draw_text(312,480+20,selected_item_range);
    draw_text(756+20,480+20,selected_item_AP_use);
    draw_text(1080/2,1920/4+130,selected_item_description);
}
else
{
    draw_set_halign(fa_center)
    draw_set_valign(fa_top);
    draw_text(312,200+20,damage_1);
    draw_text(756+20,200+20,damage_type_text_array[damage_type_1]);
    draw_text(312,350+20,damage_2);
    draw_text(756+20,350+20,damage_type_text_array[damage_type_2]);
    draw_text(312,480+20,range);
    draw_text(756+20,480+20,AP_use);
    draw_text(1080/2,1920/4+130,description);
}
