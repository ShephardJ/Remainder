var txt_col=$f4f4f4;

// write resistance types
draw_set_font(font0);
draw_set_colour(txt_col);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(133,700,'s.r');
draw_text(289,700,'pi.r');
draw_text(452,700,'pu.r');
draw_text(616,700,'f.r');
draw_text(780,700,'i.r');
draw_text(946,700,'po.r');

if (item_selected>0)
{
    selected_shield_sr_current=scr_shop_top_shield_draw_bar(66,165,196,624,selected_shield_sr,selected_shield_sr_current,grey_d,grey_l)
    selected_shield_pir_current=scr_shop_top_shield_draw_bar(214,165,361,624,selected_shield_pir,selected_shield_pir_current,grey_d,grey_l)
    selected_shield_pur_current=scr_shop_top_shield_draw_bar(378,165,523,624,selected_shield_pur,selected_shield_pur_current,grey_d,grey_l)
    selected_shield_fr_current=scr_shop_top_shield_draw_bar(544,165,688,624,selected_shield_fr,selected_shield_fr_current,red_d,red_l)
    selected_shield_ir_current=scr_shop_top_shield_draw_bar(706,165,852,624,selected_shield_ir,selected_shield_ir_current,blue_d,blue_l)
    selected_shield_por_current=scr_shop_top_shield_draw_bar(870,165,1014,624,selected_shield_por,selected_shield_por_current,green_d,green_l)
    draw_set_colour(yellow_l);
    draw_set_halign(fa_center);
    draw_set_valign(fa_center);
    draw_text(133,397,selected_shield_sr);
    draw_text(289,397,selected_shield_pir);
    draw_text(452,397,selected_shield_pur);
    draw_text(616,397,selected_shield_fr);
    draw_text(780,397,selected_shield_ir);
    draw_text(946,397,selected_shield_por);
}
else
{
    selected_shield_sr_current=scr_shop_top_shield_draw_bar(66,165,196,624,shield_res_s,selected_shield_sr_current,grey_d,grey_l)
    selected_shield_pir_current=scr_shop_top_shield_draw_bar(214,165,361,624,shield_res_pi,selected_shield_pir_current,grey_d,grey_l)
    selected_shield_pur_current=scr_shop_top_shield_draw_bar(378,165,523,624,shield_res_pu,selected_shield_pur_current,grey_d,grey_l)
    selected_shield_fr_current=scr_shop_top_shield_draw_bar(544,165,688,624,shield_res_f,selected_shield_fr_current,red_d,red_l)
    selected_shield_ir_current=scr_shop_top_shield_draw_bar(706,165,852,624,shield_res_i,selected_shield_ir_current,blue_d,blue_l)
    selected_shield_por_current=scr_shop_top_shield_draw_bar(870,165,1014,624,shield_res_po,selected_shield_por_current,green_d,green_l)
    draw_set_colour(yellow_l);
    draw_set_halign(fa_center);
    draw_set_valign(fa_center);
    draw_text(133,397,shield_res_s);
    draw_text(289,397,shield_res_pi);
    draw_text(452,397,shield_res_pu);
    draw_text(616,397,shield_res_f);
    draw_text(780,397,shield_res_i);
    draw_text(946,397,shield_res_po);
}


