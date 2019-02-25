// write names of categories
draw_set_font(font0);
draw_set_colour(grey_l);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(312,211,'slash');
draw_text(756,211,'thrust');
draw_text(312,295+20,'damage 1:');
draw_text(756,295+20,'damage 1:');
draw_text(312,395+20,'type 1:');
draw_text(756,395+20,'type 1:');
draw_text(312,544+20,'damage 2:');
draw_text(756,544+20,'damage 2:');
draw_text(312,644+20,'type 2:');
draw_text(756,644+20,'type 2:');

if (item_selected>=1)
{
    draw_set_halign(fa_center)
    draw_set_valign(fa_top);
    draw_text(312,345,selected_sword_slash_damage_1);
    draw_text(756,345,selected_sword_thrust_damage_1);
    draw_text(312,445,damage_type_text_array[selected_sword_slash_damage_type_1]);
    draw_text(756,445,damage_type_text_array[selected_sword_thrust_damage_type_1]);
    draw_text(312,594,selected_sword_slash_damage_2);
    draw_text(756,594,selected_sword_thrust_damage_2);
    draw_text(312,694,damage_type_text_array[selected_sword_slash_damage_type_2]);
    draw_text(756,694,damage_type_text_array[selected_sword_thrust_damage_type_2]);
    draw_text(70*7.8,105*7.8,selected_description);
}
else
{
    draw_set_halign(fa_center)
    draw_set_valign(fa_top);
    draw_text(312,345,damage_weapon_slash_1);
    draw_text(756,345,damage_weapon_thrust_1);
    draw_text(312,445,damage_type_text_array[damage_weapon_type_slash_1]);
    draw_text(756,445,damage_type_text_array[damage_weapon_type_thrust_1]);
    draw_text(312,594,damage_weapon_slash_2);
    draw_text(756,594,damage_weapon_thrust_2);
    draw_text(312,694,damage_type_text_array[damage_weapon_type_slash_2]);
    draw_text(756,694,damage_type_text_array[damage_weapon_type_thrust_2]);
    draw_text(70*7.8,106*7.8,weapon_description);
}
