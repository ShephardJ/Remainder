#define scr_make_arrays
var a1=6;
var check_a1=6;
var a2=6;
var check_a2=6;
var special_gate=0


// init world array
do
{
    global.world_array[a1,a2]=-1;
    a2-=1;
    if a2=-1 
    {
        a2=6;
        a1-=1;
    }
}
until a1=-1




//make game layout
a1=check_a1;
a2=check_a2;
do
{
    // 3,4,5,6
    if a1>2
    {
        //set_special
        special_gate=0
        do
        {
            var check=0;
            
            global.world_array[a1,a2]=scr_get_special();
            var check1=global.world_array[a1,a2];
            a2-=1;
            global.world_array[a1,a2]=scr_get_special();
            var check2=global.world_array[a1,a2];
            a2-=1;
            //check for contradiction
            var checking = check1 mod 2;
            if checking = 0
            {
                if check2=check1-1 check=0;
                else check=1;
            }
            else
            {
                if check2=check1+1 check=0;
                else check=1;
            }
            if (check1=check2)||check=0 {special_gate=0;a2+=2};
            else special_gate=1;
        }
        
        until special_gate=1;
        
        //set points
        global.world_array[a1,a2]=irandom_range(30,35);
        a2-=1;
        //set links
        a2-=1;
        a2-=1;
        
        //set world and boss
        var world_var= irandom_range(1,4);
        
        if world_var=1
        {
            world_var=irandom_range(111,112);
            global.world_array[a1,a2]=irandom_range(2,5);

        }
        
        if world_var=2
        {
            world_var=irandom_range(121,123);
            var boss_role=irandom(1);
            if boss_role=0 global.world_array[a1,a2]=6;
            if boss_role=1 global.world_array[a1,a2]=7;
        }
        
        if world_var=3
        {
            world_var=irandom_range(141,142);
            if world_var=141 global.world_array[a1,a2]=1;
            else global.world_array[a1,a2]=8;
        }
       
        if world_var=4
        {
            world_var=irandom_range(161,163);
            var boss_role =irandom(2);
            if boss_role=0 global.world_array[a1,a2]=1;
            if boss_role=1 global.world_array[a1,a2]=2;
            if boss_role=2 global.world_array[a1,a2]=8;
        }
        a2-=1;
        global.world_array[a1,a2]=world_var;
    }
    // 2, 1
    if a1=2||a1=1
    {
        //set special
        global.world_array[a1,a2]=scr_get_special();
        a2-=1;
        a2-=1;
        //set points
        global.world_array[a1,a2]=irandom_range(20,30);
        a2-=1;
        
        //set links
        if a1=2 global.world_array[a1,a2]=4;
        else global.world_array[a1,a2]=6;
        a2-=1;
        if a1=2 global.world_array[a1,a2]=3;
        else global.world_array[a1,a2]=5;
        a2-=1 ;
        
        //set world and boss
        var world_var= irandom_range(1,4);
        
        if world_var=1
        {
            world_var=irandom_range(11,13);
            global.world_array[a1,a2]=irandom_range(2,5);

        }
        
        if world_var=2
        {
            world_var=irandom_range(21,24);
            var boss_role=irandom(1);
            if boss_role=0 global.world_array[a1,a2]=6;
            if boss_role=1 global.world_array[a1,a2]=7;
        }
        
        if world_var=3
        {
            world_var=irandom_range(41,42);
            if world_var=41 global.world_array[a1,a2]=1;
            else global.world_array[a1,a2]=8;
        }
       
        if world_var=4
        {
            world_var=irandom_range(61,63);
            var boss_role =irandom(2);
            if boss_role=0 global.world_array[a1,a2]=1;
            if boss_role=1 global.world_array[a1,a2]=2;
            if boss_role=2 global.world_array[a1,a2]=8;
        }
        a2-=1;
        global.world_array[a1,a2]=world_var;
    }
    // 0
    if a1=0
    {
        //set special
        a2-=1;
        a2-=1;
        //set points
        global.world_array[a1,a2]=irandom_range(16,20);
        a2-=1;
        //set links
        global.world_array[a1,a2]=2;
        a2-=1;
        global.world_array[a1,a2]=1;
        a2-=1 ;
        
        //set world and boss
        var world_var=irandom_range(1,5);
        
        if world_var=1
        {
            global.world_array[a1,a2]=1;

        }
        
        if world_var=2
        {

            global.world_array[a1,a2]=5;
        }
        
        if world_var=3
        {
            world_var=4
            var boss_role =irandom_range(2,3)
            global.world_array[a1,a2]=boss_role;
        }
       
        if world_var=4
        {
            
            var boss_role =irandom_range(2,3)
            global.world_array[a1,a2]=boss_role;
        }
        
        if world_var=5
        {

            global.world_array[a1,a2]=6;
        }
        
        a2-=1;
        global.world_array[a1,a2]=world_var;
    }
    // go through again
    a1-=1;
    a2=check_a2;
}
until a1=-1;

// info
a1=6;
check_a1=6;
a2=29;
check_a2=29;


//////////////////////////////////////////////////////////////////

// init info array
do
{
    global.info_array[a1,a2]=-1;
    a2-=1;
    if a2=-1 
    {
        a2=check_a2;
        a1-=1;
    }
}
until a1=-1

a1=6;
check_a1=6;
a2=29;
check_a2=29;

do
{
    //boss info
    repeat(4)
    {
        global.info_array[a1,a2]=0;
        a2-=1;
    }
    repeat(4)
    {
        temper=global.world_array[a1,1];
        global.info_array[a1,a2]=scr_boss_info(temper,a2);
        a2-=1;
    }
    //world info
    repeat(4)
    {
        global.info_array[a1,a2]=0;
        a2-=1;
    }
    repeat(4)
    {
        temper=global.world_array[a1,0];
        global.info_array[a1,a2]=scr_world_info(temper,a2);
        a2-=1;
    }
    //special
    repeat(2)
    {
        global.info_array[a1,a2]=0;
        a2-=1;
    }
    special_gate=0
    do
    {
        temper=global.world_array[a1,6];
        global.info_array[a1,a2]=scr_special_info(temper);
        a2-=1;
        temper=global.world_array[a1,5];
        global.info_array[a1,a2]=scr_special_info(temper);
        a2-=1;
        
        special_gate=1;
    }
    until special_gate=1;
    //geo features
    repeat(4)
    {
        global.info_array[a1,a2]=0;
        a2-=1;
    }
    //random geos
    /*var geo_feature=irandom_range(2,4);
    a2-=4-geo_feature;
    special_gate=0
    do
    {
        repeat (geo_feature)
        {
            global.info_array[a1,a2]=scr_geography_info();
            a2-=1;
        }
        special_gate=1
    }
    until special_gate=1;
    */
    //curated geos
    if a1=0 scr_currated_geo_1(a1,1);
    if a1=1||a1=2 scr_currated_geo_1(a1,irandom_range(1,3));
    if a1>2 scr_currated_geo_2(a1,irandom_range(3,4));
    a2-=4;
    
    //Name
    global.info_array[a1,a2]=0;
    a2-=1;
    global.info_array[a1,0]=scr_name_info();
    //prepare next
    a2=check_a2;
    a1-=1;
}
until a1=-1
scr_world_arrays();

#define scr_boss_info
var tips=-2
//dragon
if argument0=1
{
    if argument1=25 tips=" 'EARD SOME LOCALS TALKIN' BOUT SOMIN' BIG FLYIN'. BETTER BE CAREFULL."
    if argument1=24 tips=" ALOT A LIVE STOCK GONE MISSIN' 'ROUD HERE..."
    if argument1=23 tips=" SOME FRIENDS LOST THEIR FARM THE OTHER DAY. ONE MOMENT TWAS THERE, THE NEXT TWAS ASH."
    if argument1=22 tips=" WHOLE REGIMENTS OF THE GOLDEN LEAGION BEEN FOUND TORN TO PEACES LATELY. DONT WANNA MEET WHOEVER DID THAT TO 'EM."
}

//litch
if argument0=2
{
    if argument1=25 tips=" 'EARD RUMORS OF THE DEAD COMIN' BACK TO LIFE."
    if argument1=24 tips=" EVERYTHIN\' ROUND HERE SEEMS TO BE DYIN' CEPT THE DEAD."
    if argument1=23 tips=" BEEN TALK OF SOMETHING RAISIN' THE DEAD'"
    if argument1=22 tips=" WHOLE REGIMENTS OF THE GOLDEN LEAGION BEEN FOUND TORN TO PEACES LATELY. DONT WANNA MEET WHOEVER DID THAT TO 'EM."
}

//airship
if argument0=3||argument0=4
{
    if argument1=25 tips=" 'EARD SOME LOCALS TALKIN' 'BOUT SOMIN' BIG FLYIN'. BETTER BE CAREFULL."
    if argument1=24 tips=" TOOK A WALK THROUGH THE FOREST THE OVER DAY. COULD SWEAR I COULD HEAR HUMIN' COMIN' FROM ABOVE."
    if argument1=23 tips=" BEEN HEARIN' BOUT ALOT VILLAGES BEIN' RAIDED RECENTLY..."
    if argument1=22 tips=" WHOLE REGIMENTS OF THE GOLDEN LEAGION BEEN FOUND TORN TO PEACES LATELY. DONT WANNA MEET WHOEVER DID THAT TO 'EM."
}

//horseman
if argument0=5
{
    if argument1=25 tips=" 'LOT OF HORSES GONE MISSING OF LATE."
    if argument1=24 tips=" PEOPLE BEEN FINDIN' 'EADLES BODIES BURIED IN THE GROUND. GRIZZLY SIGHT THAT."
    if argument1=23 tips=" BEEN HEARIN' BOUT ALOT VILLAGES BEEN RAIDED RECENTLY..."
    if argument1=22 tips=" SAW FLOCK OF BIRDS FLYIN' EARLIER... I SAY BIRDS BUT I DONT THINK I EVER SMELT EM' LIKE THAT BEFORE."
}

//rable
if argument0=6
{
    if argument1=25 tips=" BEEN HEARIN' BOUT ALOT VILLAGES BEIN' RAIDED RECENTLY..."
    if argument1=24 tips=" VILLAGE OVER THE HILL GOT BUNRNT TO THE GROUND A DAY AGO."
    if argument1=23 tips=" FOUND THIS PAPER ON THE ON THE SIDE OF THE ROAD. THEY DONT SEEM TO BE ASKIN'."
    if argument1=22 tips=" SAW LARGE GROUP OF PEOPLE RUNNIN' AFTER SOMEONE TODAY. THEY DIDNT SEEM HAPPY."
}

//turtle
if argument0=7
{
    if argument1=25 tips=" BEEN HEARIN' BOUT ALOT VILLAGES BEEN RAIDED RECENTLY..."
    if argument1=24 tips=" VILLAGE OVER THE HILL GOT BUNRNT TO THE GROUND A DAY AGO."
    if argument1=23 tips=" HEARD MUTTERIN' OF THE SKY TURNIN' BLACK."
    if argument1=22 tips=" 'LOT OF HORSES GONE MISSING OF LATE."
}

//BLUE DRAGON
if argument0=8
{
    if argument1=25 tips=" 'EARD SOME LOCALS TALKIN' BOUT SOMIN' BIG FLYIN'. BETTER BE CAREFULL."
    if argument1=24 tips=" ALOT A LIVE STOCK GONE MISSIN' 'ROUD HERE..."
    if argument1=23 tips=" SOME FRIENDS LOST THEIR FARM THE OTHER DAY. EVERYTHIN' THEY 'AD WAS .... SHATTERED."
    if argument1=22 tips=" WHOLE REGIMENTS OF THE GOLDEN LEAGION BEEN FOUND TORN TO PEACES LATELY. DONT WANNA MEET WHOEVER DID THAT TO 'EM."
}

return tips;



#define scr_world_info
var tiped_round=argument0;
if tiped_round>99 tiped_round-=100;
//undead DONE
var tip=-1;
if tiped_round>10&&tiped_round<21
{
    if tiped_round=11||tiped_round=12
    {
        var tips_role=argument1
        if tips_role=17 var tip=" 'EARD SOME TRAVELLERS TALKIN' BOUT SOMIN' NASTY. SOUNDED LIKE THE DEAD WERE COMIN' BACK TO LIFE."//DONE
        if tips_role=16 var tip=" FOR'NER CAME IN EARLIER, MUTTERIN' 'BOUT SOME KIND OF INFECTION AND SCRUBBIN' HER HANDS. "//DONE
        if tips_role=15 var tip=" SOME WEIRD LOOKIN GUY WALKED IN. TALKED ABOUT ABOUT SOMETHIN' EATIN' HIS FAMLY."//DONE
        if tips_role=14 var tip=" THAT TRAVELLIN' MERCHANT OVER THERE SAYS THAT WHERE HE CAME FROM THE SOILS DEAD. NO CROPS, NO GRASS, NO TREES. EVERYTHIN' DIES."//DONE
    }
    if tiped_round=13
    {
        var tips_role=argument1
        if tips_role=17 var tip=" 'EARD SOME TRAVELLERS TALKIN' BOUT SOMIN' NASTY. SOUNDED LIKE SOME KIND OF SHAPLESS ENEMY ATTACK 'EM"//DONE
        if tips_role=16 var tip=" FOR'NER CAME IN EARLIER, MUTTERIN' 'BOUT SOME KIND OF CARNIVOROUS GOOP. "//DONE
        if tips_role=15 var tip=" SOME WEIRD LOOKIN GUY WALKED IN. TALKED ABOUT ABOUT SOMETHIN' EATIN' HIS FAMLY."//DONE
        if tips_role=14 var tip=" THAT TRAVELLIN' MERCHANT OVER THERE SAYS THAT THERE ARE TRAILS OF BARRON LAND WHERE HE CAME FROM"//DONE
    }
}

//human
if tiped_round>20&&tiped_round<31
{
    if tiped_round=21
    {
        var tips_role=argument1
        if tips_role=17 var tip=" SOME REFUGEES CAMPIN' OUT FRONT. WITH ALL THE MONSTERS 'BOUT, HOW CAN PEOPLE TURN ON THEIR FELLOW MAN."//DONE
        if tips_role=16 var tip=" EVEN IF YOU CANT SEE THE BANNERS, YOU CAN ALWAYS SEE THE SMOKE... EVEN FROM THIS DISTANCE"//DONE
        if tips_role=15 var tip=" THOSE FOR'NERS LOST THEIR FARM THE OTHER DAY. TWAS THERE, THEN TWAS ASH."//DONE
        if tips_role=14 var tip=" TRAVELLER OVER THERE SAYS THERE'S  BEEN A COUP D'ETAT."//DONE
    }
    if tiped_round=22
    {
        var tips_role=argument1
        if tips_role=17 var tip=" SOME REFUGEES CAMPIN' OUT FRONT. WITH ALL THE MONSTERS 'BOUT, HOW CAN PEOPLE TURN ON THEIR FELLOW MAN."//DONE
        if tips_role=16 var tip=" TRAVELLERS VILLAGE GOT DESTROYED BY SOME MANIACS IN COLORED ROBES. MONEY CAN'T BUY HAPPINESS, BUT IT SURE CAN HELP TAKE IT AWAY FROM EVERYONE ELSE."//DONE
        if tips_role=15 var tip=" THOSE FOR'NERS LOST THEIR FARM THE OTHER DAY. TWAS THERE, THEN TWAS ASH."//DONE
        if tips_role=14 var tip=" THE TRAVELLIN' MERCHANT THERE SAW SOMEONE SHEERING A SHEEP AND STICKIN' THE WOOL TO HIS FACE."//DONE
    }
    if tiped_round=23
    {
        var tips_role=argument1
        if tips_role=17 var tip=" SOME REFUGEES CAMPIN' OUT FRONT. WITH ALL THE MONSTERS 'BOUT, HOW CAN PEOPLE TURN ON THEIR FELLOW MAN."//DONE
        if tips_role=16 var tip=" TRAVELLERS OVER THERE'S ON THE RUN FROM THEIR VILLAGE AFTER SOME PRIEST VISITED. VIRUS AIN'T ONLY THING THAT SPREADS."//DONE
        if tips_role=15 var tip=" THEY SAYS THEY FOUND THIS PAPER ON THE ON THE SIDE OF THE ROAD. DOSN'T BODES ANYTHIN' GOOD."//DONE
        if tips_role=14 var tip=" TRAVELLER SAYS THERE ARE PEOPLE WALKIN' 'ROUND OFFERIN' FREE HEALIN'.I WONDER IF THEY WILL REALISE IT REALLY AIN'T ."//DONE
    }
    if tiped_round=24
    {
        var tips_role=argument1
        if tips_role=17 var tip=" SOME REFUGEES CAMPIN' OUT FRONT. WITH ALL THE MONSTERS ABOUT, HOW CAN PEOPLE TURN ON THEIR FELLOW MAN."//DONE
        if tips_role=16 var tip=" TRAVELLERS OVER THERE'S ON THE RUN FROM THEIR VILLAGE AFTER SOME PRIEST VISITED. VIRUS AIN'T ONLY THING THAT SPREADS."//DONE
        if tips_role=15 var tip=" TRAVELLIN' MERCHANT SAYS HE CANT FIND ENOUGH PITCHFORKS TO SELL PEOPLE."//DONE
        if tips_role=14 var tip=" FOR'NER THERE SAYS PEOPLE OVER HER WAY WONT STOP TEARIN' DOWN EVERY THIN' THEY FIND TO ARM THEMSELFS. WONDER WHAT COULD PUSH 'EM TO DO THAT"//DONE
    }
    
}

//elemental
if tiped_round>40&&tiped_round<51
{
    if tiped_round=41
    {
        var tips_role=argument1
        if tips_role=17 var tip=" COUSIN SAID THERE AIN'T NOTHIN' NATURAL 'BOUT THE WEATHER WHERE SHE'S FROM."//DONE
        if tips_role=16 var tip=" FOR'NER OVER THERE SAID THAT THEY AIN'T HAD RAIN FOR 6 MONTHS. "//DONE
        if tips_role=15 var tip=" TRAVELLER SAID THAT HIS VILLAGE BURNT DOWN 'COS GRASS WOULD SET IT SELF A LIGHT."//DONE
        if tips_role=14 var tip=" SEEN THE CARAVANS OUT FRONT? THEY'RE HERE 'COS THEY AIN'T HAD A DECENT HARVEST IN AGES."//DONE
    }
    if tiped_round=42
    {
        var tips_role=argument1
        if tips_role=17 var tip=" COUSIN SAID THERE AIN'T NOTHIN' NATURAL 'BOUT THE WEATHER WHERE SHE'S FROM."//DONE
        if tips_role=16 var tip=" FOR'NER OVER THERE SAID THAT THEY AINT HAD SUN FOR CLOSE TO A YEAR . "//DONE
        if tips_role=15 var tip=" SEEN THE CARAVANS OUT FRONT? THEY'RE HERE 'COS THEY AIN'T HAD A DECENT HARVEST IN AGES."//DONE
        if tips_role=14 var tip=" PEOPLE THINCK IT'S COLD HERE. THEY AIN'T SEEN HOW THAT LOT ARE DRESSED."//DONE
    }
}

//monsters
if tiped_round>60&&tiped_round<71
{
    if tiped_round=61||tiped_round=62
    {
        var tips_role=argument1
        if tips_role=17 var tip=" TRAVERLERS OVER THERE SAID GROUNDS WAS COMIN' ALIVE TRYIN' TO EAT 'EM WHOLE."//DONE
        if tips_role=16 var tip=" FOR'NER OVER THERES VILLAGE SANK INTO A HOLE. IMAGINE THAT, EH?"//DONE
        if tips_role=15 var tip=" THOSE REFUGES OUT FRONT HAD TO ABANDON THEIR WAGON 'COS OF HUGE DITCHES IN THE ROAD. "//DONE
        if tips_role=14 var tip=" TRAVERLERS OF THERE SEEN WHOLE REGIMENTS OF THE GOLDEN LEAGION BEEN FOUND TORN TO PEACES. DONT WANNA MEET WHOEVER DID THAT TO 'EM."//DONE
    }
    
    if tiped_round=63
    {
        var tips_role=argument1
        if tips_role=17 var tip=" TRAVELLERS TALKIN' ABOUT SOME KIND OF 8 LEGGED MONSTER."//DONE
        if tips_role=16 var tip=" THEM TRAVELLERS TOLD ME 'BOUT SOME KIND MONSTERS THAT LAYS ITS EGGS IN ITS VICTIMS. DONT WANNA SEE THOSE BABYS HATCK."//DONE
        if tips_role=15 var tip=" FOR'NER THERE SAID HE CAME THROUGH A CAVE TO GET HERE. HE SAW SOMETHING DOWN THERE WITH TOO MANY EYES TO BE ANYTHIN' GOOD"//DONE
        if tips_role=14 var tip=" TRAVERLERS OF THERE SEEN WHOLE REGIMENTS OF THE GOLDEN LEAGION BEEN FOUND TORN TO PEACES. DONT WANNA MEET WHOEVER DID THAT TO 'EM."//DONE
    }
}
return tip;

#define scr_special_info
var role= argument0;
var rol=-1;
if role=1 rol="DRY SEASON"/**///
if role=2 rol="WET SEASON"/**/
if role=3 rol="EQUALITY"//
if role=4 rol="INEQUALITY"//
if role=5 rol="CIVILISED"/**///
if role=6 rol="SAVAGELANDS"/**///
if role=7 rol="CURSEDLANDS"/**///
if role=8 rol="HOLYLANDS"/**///
if role=9 rol="WARMONGER"/**///
if role=10 rol="PACIFISTS"/**///
return rol;
/*
    s1: dry season : burn faster, gold up
    s2: wet season : burn slower, gold down
    s3: equality (republic, constitutional monarchy): more gold from normal fights, less from boss, people will help you more but will give lower rewards
    s4: inequality (totalitarism, oligarcs, ): less gold from normal fights, more from boss, people will hel less but will give higher rewards
    s5: civiliSed :less fights, more conversations and shops
    s6: savagelands :more fights, less conversations and shops
    s7: cursedlands :lowerd luck, 
    s8: holylands :higher luck,
    s9: warmongers :cheaper equipement, expensive training ,potions and info
    s10: pacifists :expensive equipement, cheaper training ,potions and info
    
*/

#define scr_geography_info
var role= irandom_range(1,16);

if role=1 role="SWAMP1";
if role=2 role="SWAMP2";
if role=3 role="SWAMP3";
if role=4 role="SWAMP4";
if role=5 role="FOREST1";
if role=6 role="FOREST2";
if role=7 role="MOUNTAIN1";
if role=8 role="MOUNTAIN2";
if role=9 role="MOUNTAIN3";
if role=10 role="MOUNTAIN4";
if role=11 role="BRIDGE1";
if role=12 role="BRIDGE2";
if role=13 role="GATE1";
if role=14 role="GATE2";
if role=15 role="GATE3";
if role=16 role="GATE4";
if role=17 role="GEO 17";
if role=18 role="GEO 18";
if role=19 role="GEO 19";
if role=20 role="GEO 20";
return role;

/*
swamp, forest, mountain, bridge, gate
*/

#define scr_name_info
//vars
var name=""
var name_2="";
var prefix="";
var sufix="";
var base_temp="";
var base="";
var role="";
var role_2="";
//
role=irandom(60)

    if role=0 prefix="";
    if role=1 prefix="AB";
    if role=2 prefix="AD";
    if role=3 prefix="AM";
    if role=4 prefix="AT";
    if role=5 prefix="AZ";
    if role=6 prefix="IB";
    if role=7 prefix="ID";
    if role=8 prefix="IM";
    if role=9 prefix="IT";
    if role=10 prefix="IZ";
    if role=11 prefix="OB";
    if role=12 prefix="OD";
    if role=13 prefix="OM";
    if role=14 prefix="OT";
    if role=15 prefix="OZ";
    if role=16 prefix="BA";
    if role=17 prefix="BE";
    if role=18 prefix="BI";
    if role=19 prefix="BO";
    if role=20 prefix="BY";
    if role=21 prefix="GA";
    if role=22 prefix="GE";
    if role=23 prefix="GI";
    if role=24 prefix="GO";
    if role=25 prefix="GY";
    if role=26 prefix="LA";
    if role=27 prefix="LE";
    if role=28 prefix="LI";
    if role=29 prefix="LO";
    if role=30 prefix="LY";
    if role=31 prefix="MA";
    if role=32 prefix="ME";
    if role=33 prefix="MI";
    if role=34 prefix="MO";
    if role=35 prefix="MY";
    if role=36 prefix="NA";
    if role=37 prefix="NE";
    if role=38 prefix="NI";
    if role=39 prefix="NO";
    if role=40 prefix="NY";
    if role=41 prefix="PA";
    if role=42 prefix="PE";
    if role=43 prefix="PI";
    if role=44 prefix="PO";
    if role=45 prefix="PY";
    if role=46 prefix="SA";
    if role=47 prefix="SE";
    if role=48 prefix="SI";
    if role=49 prefix="SO";
    if role=50 prefix="SY";
    if role=51 prefix="WA";
    if role=52 prefix="WE";
    if role=53 prefix="WI";
    if role=54 prefix="WO";
    if role=55 prefix="WY";
    if role=56 prefix="ZA";
    if role=57 prefix="ZE";
    if role=58 prefix="ZI";
    if role=59 prefix="ZO";
    if role=60 prefix="ZY";

    

role_2=irandom_range(1,2);
repeat(role_2)
{
    
    role=irandom(60)
    if role=0 base_temp="";
    if role=1 base_temp="AB";
    if role=2 base_temp="AD";
    if role=3 base_temp="AM";
    if role=4 base_temp="AT";
    if role=5 base_temp="AZ";
    if role=6 base_temp="IB";
    if role=7 base_temp="ID";
    if role=8 base_temp="IM";
    if role=9 base_temp="IT";
    if role=10 base_temp="IZ";
    if role=11 base_temp="OB";
    if role=12 base_temp="OD";
    if role=13 base_temp="OM";
    if role=14 base_temp="OT";
    if role=15 base_temp="OZ";
    if role=16 base_temp="BA";
    if role=17 base_temp="BE";
    if role=18 base_temp="BI";
    if role=19 base_temp="BO";
    if role=20 base_temp="BY";
    if role=21 base_temp="GA";
    if role=22 base_temp="GE";
    if role=23 base_temp="GI";
    if role=24 base_temp="GO";
    if role=25 base_temp="GY";
    if role=26 base_temp="LA";
    if role=27 base_temp="LE";
    if role=28 base_temp="LI";
    if role=29 base_temp="LO";
    if role=30 base_temp="LY";
    if role=31 base_temp="MA";
    if role=32 base_temp="ME";
    if role=33 base_temp="MI";
    if role=34 base_temp="MO";
    if role=35 base_temp="MY";
    if role=36 base_temp="NA";
    if role=37 base_temp="NE";
    if role=38 base_temp="NI";
    if role=39 base_temp="NO";
    if role=40 base_temp="NY";
    if role=41 base_temp="PA";
    if role=42 base_temp="PE";
    if role=43 base_temp="PI";
    if role=44 base_temp="PO";
    if role=45 base_temp="PY";
    if role=46 base_temp="SA";
    if role=47 base_temp="SE";
    if role=48 base_temp="SI";
    if role=49 base_temp="SO";
    if role=50 base_temp="SY";
    if role=51 base_temp="WA";
    if role=52 base_temp="WE";
    if role=53 base_temp="WI";
    if role=54 base_temp="WO";
    if role=55 base_temp="WY";
    if role=56 base_temp="ZA";
    if role=57 base_temp="ZE";
    if role=58 base_temp="ZI";
    if role=59 base_temp="ZO";
    if role=60 base_temp="ZY";
    base=base_temp+base;
    
    role=irandom(10)
    if role=0 base_temp="";
    if role=1 base_temp="B";
    if role=2 base_temp="D";
    if role=3 base_temp="M";
    if role=4 base_temp="";
    if role>4 base_temp="";
    
    role=irandom(1)
    if role=0 role=0
    if role=1 role=2
    base=base_temp+base;
}

role=irandom(5);
    if role=0 sufix="";
    if role=1 sufix="IA";
    if role=2 sufix="NY";
    if role=3 sufix="NAM";
    if role=4 sufix="LAND";
    if role=5 sufix="BI";
name=prefix+base+sufix;


role=irandom(2)
if role<2
{
    role=irandom(10)
    if role<4 name_2="";
    if role=4 name_2="KINGDOM OF ";
    if role=5 name_2="REPUBLIC OF ";
    if role=6 name_2="GREATER ";
    if role=7 name_2="NORTHERN ";
    if role=8 name_2="SOUTHERN ";
    if role=9 name_2="EASTERN ";
    if role=10 name_2="WESTERN ";
    name=name_2+name;
}

return name;

#define scr_get_special
var role= irandom_range(1,10);
return role;
#define scr_currated_geo_0
var role= irandom_range(1,16);

if role=1 role="SWAMP1";
if role=2 role="SWAMP2";
if role=3 role="SWAMP3";
if role=4 role="SWAMP4";
if role=5 role="FOREST1";
if role=6 role="FOREST2";
if role=7 role="MOUNTAIN1";
if role=8 role="MOUNTAIN2";
if role=9 role="MOUNTAIN3";
if role=10 role="MOUNTAIN4";
if role=11 role="BRIDGE1";
if role=12 role="BRIDGE2";
if role=13 role="GATE1";
if role=14 role="GATE2";
if role=15 role="GATE3";
if role=16 role="GATE4";
if role=17 role="GEO 17";
if role=18 role="GEO 18";
if role=19 role="GEO 19";
if role=20 role="GEO 20";

global.info_array[argument0,5]=role;

#define scr_currated_geo_1
var ngeo=argument1
if ngeo=1
{
    var role= irandom_range(1,16);
    
    if role=1 role="SWAMP1";
    if role=2 role="SWAMP2";
    if role=3 role="SWAMP3";
    if role=4 role="SWAMP4";
    if role=5 role="FOREST1";
    if role=6 role="FOREST2";
    if role=7 role="MOUNTAIN1";
    if role=8 role="MOUNTAIN2";
    if role=9 role="MOUNTAIN3";
    if role=10 role="MOUNTAIN4";
    if role=11 role="BRIDGE1";
    if role=12 role="BRIDGE2";
    if role=13 role="GATE1";
    if role=14 role="GATE2";
    if role=15 role="GATE3";
    if role=16 role="GATE4";
    if role=17 role="GEO 17";
    if role=18 role="GEO 18";
    if role=19 role="GEO 19";
    if role=20 role="GEO 20";
    
    global.info_array[argument0,5]=role;
    return 0;
}

if ngeo>1
{
    var role_biome=irandom(10)
    //water
    if role_biome=0
    {
        var cnt=5
            do
            {
                var role=irandom(1);
                if role=0 role="BRIDGE1";
                if role=1 role="BRIDGE2";
                global.info_array[argument0,cnt]=role;
                cnt-=1;
            }
            until cnt=5-ngeo;
    }
    //mountainS
    if role_biome=1
    {
        var cnt=5
            do
            {
                var role=irandom(3);
                if role=0 role="MOUNTAIN1";
                if role=1 role="MOUNTAIN2";
                if role=2 role="MOUNTAIN3";
                if role=3 role="MOUNTAIN4";
                global.info_array[argument0,cnt]=role;
                cnt-=1;
            }
            until cnt=5-ngeo;
        
    }
    //GATES
    if role_biome=2
    {
        var cnt=5
            do
            {
                var role=irandom(3);
                if role=0 role="GATE1";
                if role=1 role="GATE2";
                if role=2 role="GATE3";
                if role=3 role="GATE4";
                global.info_array[argument0,cnt]=role;
                cnt-=1;
            }
            until cnt=5-ngeo;
    }
    
    //swamp
    if role_biome=3
    {
        var cnt=5
            do
            {
                var role=irandom(3);
                if role=0 role="SWAMP1";
                if role=1 role="SWAMP2";
                if role=2 role="SWAMP3";
                if role=3 role="SWAMP4";
                global.info_array[argument0,cnt]=role;
                cnt-=1;
            }
            until cnt=5-ngeo;
    }
    
    //FOREST
    if role_biome=4
    {
        var cnt=5
        var role=irandom(1);
        if role=0 role="FOREST1";
        if role=1 role="FOREST2";
            do
            {
                global.info_array[argument0,cnt]=role;
                cnt-=1;
            }
            until cnt=5-ngeo;
    }
    
    //MOUNTAINS AND RIVERS
    if role_biome=5
    {
        var cnt=5
            do
            {
                var role=irandom(7);
                if role=0||role=6 role="BRIDGE1";
                if role=1||role=7 role="BRIDGE2";
                if role=2 role="MOUNTAIN1";
                if role=3 role="MOUNTAIN2";
                if role=4 role="MOUNTAIN3";
                if role=5 role="MOUNTAIN4";
                global.info_array[argument0,cnt]=role;
                cnt-=1;
            }
            until cnt=5-ngeo;
    }
    
    //forest and mountains
    if role_biome=6
    {
        var cnt=5
        var ftype=irandom(1)
        if ftype=0 ftype="FOREST1";
        if ftype=1 ftype="FOREST2";
            do
            {
                var role=irandom(5);
                if role=0 role=ftype;
                if role=1 role=ftype;
                if role=2 role="MOUNTAIN1";
                if role=3 role="MOUNTAIN2";
                if role=4 role="MOUNTAIN3";
                if role=5 role="MOUNTAIN4";
                global.info_array[argument0,cnt]=role;
                cnt-=1;
            }
            until cnt=5-ngeo;
    }
    //MOUNTAINS AND gates
    if role_biome=7
    {
        var cnt=5
            do
            {
                var role=irandom(7);
                if role=0 role="GATE1";
                if role=1 role="GATE2";
                if role=2 role="MOUNTAIN1";
                if role=3 role="MOUNTAIN2";
                if role=4 role="MOUNTAIN3";
                if role=5 role="MOUNTAIN4";
                if role=6 role="GATE3";
                if role=7 role="GATE4";
                global.info_array[argument0,cnt]=role;
                cnt-=1;
            }
            until cnt=5-ngeo;
    }
    
    //bridge AND gates
    if role_biome=8
    {
        var cnt=5
            do
            {
                var role=irandom(7);
                if role=0 role="GATE1";
                if role=1 role="GATE2";
                if role=2||role=3 role="BRIDGE1";
                if role=4||role=5 role="BRIDGE2";
                if role=6 role="GATE3";
                if role=7 role="GATE4";
                global.info_array[argument0,cnt]=role;
                cnt-=1;
            }
            until cnt=5-ngeo;
    }
    //forest and swanp
    if role_biome=9
    {
        var cnt=5
        var ftype=irandom(1)
        if ftype=0 ftype="FOREST1";
        if ftype=1 ftype="FOREST2";
            do
            {
                var role=irandom(5);
                if role=0 role=ftype;
                if role=1 role=ftype;
                if role=2 role="SWAMP1";
                if role=3 role="SWAMP2";
                if role=4 role="SWAMP3";
                if role=5 role="SWAMP4";
                global.info_array[argument0,cnt]=role;
                cnt-=1;
            }
            until cnt=5-ngeo;
    }
    //swamp AND RIVERS
    if role_biome=10
    {
        var cnt=5
            do
            {
                var role=irandom(7);
                if role=0||role=6 role="BRIDGE1";
                if role=1||role=7 role="BRIDGE2";
                if role=2 role="SWAMP1";
                if role=3 role="SWAMP2";
                if role=4 role="SWAMP3";
                if role=5 role="SWAMP4";
                global.info_array[argument0,cnt]=role;
                cnt-=1;
            }
            until cnt=5-ngeo;
    }
}

#define scr_currated_geo_2
var ngeo=argument1
if ngeo=1
{
    var role= irandom_range(1,16);
    
    if role=1 role="SWAMP1";
    if role=2 role="SWAMP2";
    if role=3 role="SWAMP3";
    if role=4 role="SWAMP4";
    if role=5 role="FOREST1";
    if role=6 role="FOREST2";
    if role=7 role="MOUNTAIN1";
    if role=8 role="MOUNTAIN2";
    if role=9 role="MOUNTAIN3";
    if role=10 role="MOUNTAIN4";
    if role=11 role="BRIDGE1";
    if role=12 role="BRIDGE2";
    if role=13 role="GATE1";
    if role=14 role="GATE2";
    if role=15 role="GATE3";
    if role=16 role="GATE4";
    if role=17 role="GEO 17";
    if role=18 role="GEO 18";
    if role=19 role="GEO 19";
    if role=20 role="GEO 20";
    
    global.info_array[argument0,5]=role;
    return 0;
}

if ngeo>1
{
    var role_biome=irandom_range(5,10)
    //water
    if role_biome=0
    {
        var cnt=5
            do
            {
                var role=irandom(1);
                if role=0 role="BRIDGE1";
                if role=1 role="BRIDGE2";
                global.info_array[argument0,cnt]=role;
                cnt-=1;
            }
            until cnt=5-ngeo;
    }
    //mountainS
    if role_biome=1
    {
        var cnt=5
            do
            {
                var role=irandom(3);
                if role=0 role="MOUNTAIN1";
                if role=1 role="MOUNTAIN2";
                if role=2 role="MOUNTAIN3";
                if role=3 role="MOUNTAIN4";
                global.info_array[argument0,cnt]=role;
                cnt-=1;
            }
            until cnt=5-ngeo;
        
    }
    //GATES
    if role_biome=2
    {
        var cnt=5
            do
            {
                var role=irandom(3);
                if role=0 role="GATE1";
                if role=1 role="GATE2";
                if role=2 role="GATE3";
                if role=3 role="GATE4";
                global.info_array[argument0,cnt]=role;
                cnt-=1;
            }
            until cnt=5-ngeo;
    }
    
    //swamp
    if role_biome=3
    {
        var cnt=5
            do
            {
                var role=irandom(3);
                if role=0 role="SWAMP1";
                if role=1 role="SWAMP2";
                if role=2 role="SWAMP3";
                if role=3 role="SWAMP4";
                global.info_array[argument0,cnt]=role;
                cnt-=1;
            }
            until cnt=5-ngeo;
    }
    
    //FOREST
    if role_biome=4
    {
        var cnt=5
        var role=irandom(1);
        if role=0 role="FOREST1";
        if role=1 role="FOREST2";
            do
            {
                global.info_array[argument0,cnt]=role;
                cnt-=1;
            }
            until cnt=5-ngeo;
    }
    
    //MOUNTAINS AND RIVERS
    if role_biome=5
    {
        var cnt=5
            do
            {
                var role=irandom(7);
                if role=0||role=6 role="BRIDGE1";
                if role=1||role=7 role="BRIDGE2";
                if role=2 role="MOUNTAIN1";
                if role=3 role="MOUNTAIN2";
                if role=4 role="MOUNTAIN3";
                if role=5 role="MOUNTAIN4";
                global.info_array[argument0,cnt]=role;
                cnt-=1;
            }
            until cnt=5-ngeo;
    }
    
    //forest and mountains
    if role_biome=6
    {
        var cnt=5
        var ftype=irandom(1)
        if ftype=0 ftype="FOREST1";
        if ftype=1 ftype="FOREST2";
            do
            {
                var role=irandom(5);
                if role=0 role=ftype;
                if role=1 role=ftype;
                if role=2 role="MOUNTAIN1";
                if role=3 role="MOUNTAIN2";
                if role=4 role="MOUNTAIN3";
                if role=5 role="MOUNTAIN4";
                global.info_array[argument0,cnt]=role;
                cnt-=1;
            }
            until cnt=5-ngeo;
    }
    //MOUNTAINS AND gates
    if role_biome=7
    {
        var cnt=5
            do
            {
                var role=irandom(7);
                if role=0 role="GATE1";
                if role=1 role="GATE2";
                if role=2 role="MOUNTAIN1";
                if role=3 role="MOUNTAIN2";
                if role=4 role="MOUNTAIN3";
                if role=5 role="MOUNTAIN4";
                if role=6 role="GATE3";
                if role=7 role="GATE4";
                global.info_array[argument0,cnt]=role;
                cnt-=1;
            }
            until cnt=5-ngeo;
    }
    
    //bridge AND gates
    if role_biome=8
    {
        var cnt=5
            do
            {
                var role=irandom(7);
                if role=0 role="GATE1";
                if role=1 role="GATE2";
                if role=2||role=3 role="BRIDGE1";
                if role=4||role=5 role="BRIDGE2";
                if role=6 role="GATE3";
                if role=7 role="GATE4";
                global.info_array[argument0,cnt]=role;
                cnt-=1;
            }
            until cnt=5-ngeo;
    }
    //forest and swanp
    if role_biome=9
    {
        var cnt=5
        var ftype=irandom(1)
        if ftype=0 ftype="FOREST1";
        if ftype=1 ftype="FOREST2";
            do
            {
                var role=irandom(5);
                if role=0 role=ftype;
                if role=1 role=ftype;
                if role=2 role="SWAMP1";
                if role=3 role="SWAMP2";
                if role=4 role="SWAMP3";
                if role=5 role="SWAMP4";
                global.info_array[argument0,cnt]=role;
                cnt-=1;
            }
            until cnt=5-ngeo;
    }
    //swamp AND RIVERS
    if role_biome=10
    {
        var cnt=5
            do
            {
                var role=irandom(7);
                if role=0||role=6 role="BRIDGE1";
                if role=1||role=7 role="BRIDGE2";
                if role=2 role="SWAMP1";
                if role=3 role="SWAMP2";
                if role=4 role="SWAMP3";
                if role=5 role="SWAMP4";
                global.info_array[argument0,cnt]=role;
                cnt-=1;
            }
            until cnt=5-ngeo;
    }
}