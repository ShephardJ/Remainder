#define scr_shop_buy_script_weapon
argument1=argument1;
/*var temp_shop=argument0;
argument0=argument1;
global.weapon_id=temp_shop;

if argument2>0 global.gold-=argument2;

argument3.run_script=1;
argument3.weapon_id=argument0;
*/
var temp_shop=global.weapon_id;
global.weapon_id=argument0;
argument0=temp_shop


if argument2>0 global.gold-=argument2;

argument3.run_script=1;
argument3.weapon_id=argument0;

#define scr_shop_buy_script_shield
argument1=argument1;
/*var temp_shop=argument0;
argument0=argument1;
global.shield_id=temp_shop;

if argument2>0 global.gold-=argument2;

argument3.run_script=1;
argument3.shop_shield_id=argument0;*/

var temp_shop=global.shield_id;
global.shield_id=argument0;
argument0=temp_shop;

if argument2>0 global.gold-=argument2;

argument3.run_script=1;
argument3.shop_shield_id=argument0;
#define scr_shop_buy_script_item
argument1=argument1;
/*var temp_shop=argument0;
argument0=argument1;
global.weapon_id=temp_shop;

if argument2>0 global.gold-=argument2;

argument3.run_script=1;
argument3.weapon_id=argument0;
*/
var temp_shop=global.item_id;
global.item_id=argument0;
argument0=temp_shop


if argument2>0 global.gold-=argument2;

argument3.run_script=1;
argument3.item_id=argument0;