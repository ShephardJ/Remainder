#define scr_tips
if global.fight_round<4 var tipsy=4
else
{
    if global.fight_round<=8 var tipsy=8
    else tipsy=12
}
//DRAGON
if obj_overlay_test.fight_round_array[tipsy]=1
{
    var tips_role=argument0
    if tips_role=0 var tip=" 'EARD SOME LOCALS TALKIN' BOUT SOMIN' BIG FLYIN'. BETTER BE CAREFULL."//DONE
    if tips_role=1 var tip=" ALOT A LIVE STOCK GONE MISSIN' 'ROUD HERE..."//DONE
    if tips_role=2 var tip=" SOME FRIENDS LOST THEIR FARM THE OTHER DAY. ONE MOMENT TWAS THERE, THE NEXT TWAS ASH."//DONE
    if tips_role=3 var tip=" WHOLE REGIMENTS OF THE GOLDEN LEAGION BEEN FOUND TORN TO PEACES LATELY. DONT WANNA MEET WHOEVER DID THAT TO 'EM."//DONE
}
//LITCH
if obj_overlay_test.fight_round_array[tipsy]=2
{
    var tips_role=argument0
    if tips_role=0 var tip=" 'EARD RUMORS OF THE DEAD COMIN' BACK TO LIFE."//DONE
    if tips_role=1 var tip=" EVERYTHIN\' ROUND HERE SEEMS TO BE DYIN' CEPT THE DEAD."//DONE
    if tips_role=2 var tip=" BEEN TALK OF SOMETHING RAISIN' THE DEAD'"//DONE
    if tips_role=3 var tip=" WHOLE REGIMENTS OF THE GOLDEN LEAGION BEEN FOUND TORN TO PEACES LATELY. DONT WANNA MEET WHOEVER DID THAT TO 'EM."//DONE
}
//AIRSHIP
if obj_overlay_test.fight_round_array[tipsy]=3||obj_overlay_test.fight_round_array[tipsy]=4
{
    var tips_role=argument0
    if tips_role=0 var tip=" 'EARD SOME LOCALS TALKIN' 'BOUT SOMIN' BIG FLYIN'. BETTER BE CAREFULL."//DONE
    if tips_role=1 var tip=" TOOK A WALK THROUGH THE FOREST THE OVER DAY. COULD SWEAR I COULD HEAR HUMIN' COMIN' FROM ABOVE."//DONE
    if tips_role=2 var tip=" BEEN HEARIN' BOUT ALOT VILLAGES BEIN' RAIDED RECENTLY..."//DONE
    if tips_role=3 var tip=" WHOLE REGIMENTS OF THE GOLDEN LEAGION BEEN FOUND TORN TO PEACES LATELY. DONT WANNA MEET WHOEVER DID THAT TO 'EM."//DONE
}
//HORSEMAN
if obj_overlay_test.fight_round_array[tipsy]=5
{
    var tips_role=argument0
    if tips_role=0 var tip=" 'EARD RUMORS OF THE DEAD COMIN' BACK TO LIFE."//DONE
    if tips_role=1 var tip=" PEOPLE BEEN FINDIN' 'EADLES BODIES BURIED IN THE GROUND. GRIZZLY SIGHT THAT."//DONE
    if tips_role=2 var tip=" BEEN HEARIN' BOUT ALOT VILLAGES BEEN RAIDED RECENTLY..."//DONE
    if tips_role=3 var tip=" SAW FLOCK OF BIRDS FLYIN' EARLIER... I SAY BIRDS BUT I DONT THINK I EVER SMELT EM' LIKE THAT BEFORE."//DONE
}

//RABLE
if obj_overlay_test.fight_round_array[tipsy]=6
{
    var tips_role=argument0
    if tips_role=0 var tip=" BEEN HEARIN' BOUT ALOT VILLAGES BEIN' RAIDED RECENTLY..."//DONE
    if tips_role=1 var tip=" VILLAGE OVER THE HILL GOT BUNRNT TO THE GROUND A DAY AGO."//DONE
    if tips_role=2 var tip=" FOUND THIS PAPER ON THE ON THE SIDE OF THE ROAD. THEY DONT SEEM TO BE ASKIN'."//DONE
    if tips_role=3 var tip=" SAW LARGE GROUP OF PEOPLE RUNNIN' AFTER SOMEONE TODAY. THEY DIDNT SEEM HAPPY."//DONE
}

//turtle
if obj_overlay_test.fight_round_array[tipsy]=7
{
    var tips_role=argument0
    if tips_role=0 var tip=" BEEN HEARIN' BOUT ALOT VILLAGES BEEN RAIDED RECENTLY..."//DONE
    if tips_role=1 var tip=" VILLAGE OVER THE HILL GOT BUNRNT TO THE GROUND A DAY AGO."//DONE
    if tips_role=2 var tip=" HEARD MUTTERIN' OF THE SKY TURNIN' BLACK."//DONE
    if tips_role=3 var tip=" 'LOT OF HORSES GONE MISSING OF LATE."//DONE
}

//blue DRAGON
if obj_overlay_test.fight_round_array[tipsy]=8
{
    var tips_role=argument0
    if tips_role=0 var tip=" 'EARD SOME LOCALS TALKIN' BOUT SOMIN' BIG FLYIN'. BETTER BE CAREFULL."//DONE
    if tips_role=1 var tip=" ALOT A LIVE STOCK GONE MISSIN' 'ROUD HERE..."//DONE
    if tips_role=2 var tip=" SOME FRIENDS LOST THEIR FARM THE OTHER DAY. EVERYTHIN' THEY 'AD WAS .... SHATTERED."//DONE
    if tips_role=3 var tip=" WHOLE REGIMENTS OF THE GOLDEN LEAGION BEEN FOUND TORN TO PEACES LATELY. DONT WANNA MEET WHOEVER DID THAT TO 'EM."//DONE
}

return tip;

#define scr_tips_4
var tipsy=12;
//DRAGON
if obj_overlay_test.fight_round_array[tipsy]=1
{
    var tips_role=argument0
    if tips_role=0 var tip=" 'EARD SOME FOR'NER TALKIN' BOUT SOMIN' BIG FLYIN'."//DONE
    if tips_role=1 var tip=" ALOT A LIVE STOCK GONE MISSIN' OVER YONDER..."//DONE
    if tips_role=2 var tip=" THEM MIGRANTS THERE LOST THEIR FARM THE OTHER DAY. ONE MOMENT TWAS THERE, THE NEXT TWAS ASH."//DONE
    if tips_role=3 var tip=" A WHOLE REGIMENTS OF THE GOLDEN LEAGION BEEN FOUND TORN TO PEACES LATELY. DONT WANNA MEET WHOEVER DID THAT TO 'EM."//DONE
}
//LITCH
if obj_overlay_test.fight_round_array[tipsy]=2
{
    var tips_role=argument0
    if tips_role=0 var tip=" 'EARD RUMORS OF THE DEAD COMIN' BACK TO LIFE."//DONE
    if tips_role=1 var tip=" TRAVELLIN' HERE, EVERYTHIN' SEEMED TO BE DYIN' CEPT THE DEAD."//DONE
    if tips_role=2 var tip=" THEY SAID SOMETHING WAS RAISIN' THE DEAD' BACK IN THEIR HOMELAND."//DONE
    if tips_role=3 var tip=" WHOLE REGIMENTS OF THE GOLDEN LEAGION BEEN FOUND TORN TO PEACES LATELY. DONT WANNA MEET WHOEVER DID THAT TO 'EM."//DONE
}
//AIRSHIP
if obj_overlay_test.fight_round_array[tipsy]=3||obj_overlay_test.fight_round_array[tipsy]=4
{
    var tips_role=argument0
    if tips_role=0 var tip=" 'EARD SOME FOR'NER TALKIN' BOUT SOMIN' BIG FLYIN'."//DONE
    if tips_role=1 var tip=" THEY SAID THEY COULD HEAR HUMIN' COMIN' FROM ABOVE BEFOR THEIR VILLAGE WAS RAIDED"//DONE
    if tips_role=2 var tip=" BEEN HEARIN' BOUT ALOT VILLAGES BEEN RAIDED RECENTLY..."//DONE
    if tips_role=3 var tip=" WHOLE REGIMENTS OF THE GOLDEN LEAGION BEEN FOUND TORN TO PEACES LATELY. DONT WANNA MEET WHOEVER DID THAT TO 'EM."//DONE
}
//HORSEMAN
if obj_overlay_test.fight_round_array[tipsy]=5
{
    var tips_role=argument0
    if tips_role=0 var tip=" 'EARD RUMORS OF THE DEAD COMIN' BACK TO LIFE."//DONE
    if tips_role=1 var tip=" FOR'NERS BEEN FINDIN' 'EADLES BODIES BURIED IN THE GROUND. GRIZZLY SIGHT THAT."//DONE
    if tips_role=2 var tip=" BEEN HEARIN' BOUT ALOT VILLAGES BEEN RAIDED RECENTLY..."//DONE
    if tips_role=3 var tip=" THEM REFUGEES OUT FRONT SAID THEY WERE CHASED BY FLYIN' HEADS..."//DONE
}

//RABLE
if obj_overlay_test.fight_round_array[tipsy]=6
{
    var tips_role=argument0
    if tips_role=0 var tip=" BEEN HEARIN' BOUT ALOT VILLAGES BEEN RAIDED RECENTLY..."//DONE
    if tips_role=1 var tip=" VILLAGE OVER YONDER GOT BUNRNT TO THE GROUND A DAY AGO."//DONE
    if tips_role=2 var tip=" TRAVELLERS FOUND THIS PAPER ON THE ON THE SIDE OF THE ROAD. THEY DONT SEEM TO BE ASKIN'."//DONE
    if tips_role=3 var tip=" THEM LOT SAW LARGE GROUPS OF PEOPLE RUNNIN' AFTER SOMEONE. THEY DIDNT SEEM HAPPY."//DONE
}

//turtle
if obj_overlay_test.fight_round_array[tipsy]=7
{
    var tips_role=argument0
    if tips_role=0 var tip=" BEEN HEARIN' BOUT ALOT VILLAGES BEEN RAIDED RECENTLY..."//DONE
    if tips_role=1 var tip=" VILLAGE OVER YONDER GOT BUNRNT TO THE GROUND A DAY AGO."//DONE
    if tips_role=2 var tip=" TURTLE 3."//DONE
    if tips_role=3 var tip=" TURTLE 4."//DONE
}

//DRAGON
if obj_overlay_test.fight_round_array[tipsy]=8
{
    var tips_role=argument0
    if tips_role=0 var tip=" 'EARD SOME FOR'NER TALKIN' BOUT SOMIN' BIG FLYIN'."//DONE
    if tips_role=1 var tip=" ALOT A LIVE STOCK GONE MISSIN' OVER YONDER..."//DONE
    if tips_role=2 var tip=" THEM MIGRANTS THERE LOST THEIR FARM THE OTHER DAY. EVERYTHIN' THEY 'AD WAS .... SHATTERED."//DONE
    if tips_role=3 var tip=" A WHOLE REGIMENTS OF THE GOLDEN LEAGION BEEN FOUND TORN TO PEACES LATELY. DONT WANNA MEET WHOEVER DID THAT TO 'EM."//DONE
}

return tip;

#define scr_tips_2
var tiped_round=obj_overlay_test.fight_round_array[global.fight_round+4]
if tiped_round>99 tiped_round-=100;
//undead DONE
if tiped_round>10&&tiped_round<21
{
    if tiped_round=11||tiped_round=12
    {
        var tips_role=argument0
        if tips_role=0 var tip=" 'EARD SOME TRAVELLERS TALKIN' BOUT SOMIN' NASTY. SOUNDED LIKE THE DEAD WERE COMIN' BACK TO LIFE."//DONE
        if tips_role=1 var tip=" FOR'NER CAME IN EARLIER, MUTTERIN' 'BOUT SOME KIND OF INFECTION AND SCRUBBIN' HER HANDS. "//DONE
        if tips_role=2 var tip=" SOME WEIRD LOOKIN GUY WALKED IN. TALKED ABOUT ABOUT SOMETHIN' EATIN' HIS FAMLY."//DONE
        if tips_role=3 var tip=" THAT TRAVELLIN' MERCHANT OVER THERE SAYS THAT WHERE HE CAME FROM THE SOILS DEAD. NO CROPS, NO GRASS, NO TREES. EVERYTHIN' DIES."//DONE
    }
    if tiped_round=13
    {
        var tips_role=argument0
        if tips_role=0 var tip=" 'EARD SOME TRAVELLERS TALKIN' BOUT SOMIN' NASTY. SOUNDED LIKE SOME KIND OF SHAPLESS ENEMY ATTACK 'EM"//DONE
        if tips_role=1 var tip=" FOR'NER CAME IN EARLIER, MUTTERIN' 'BOUT SOME KIND OF CARNIVOROUS GOOP. "//DONE
        if tips_role=2 var tip=" SOME WEIRD LOOKIN GUY WALKED IN. TALKED ABOUT ABOUT SOMETHIN' EATIN' HIS FAMLY."//DONE
        if tips_role=3 var tip=" THAT TRAVELLIN' MERCHANT OVER THERE SAYS THAT THERE ARE TRAILS OF BARRON LAND WHERE HE CAME FROM"//DONE
    }
}

//human
if tiped_round>20&&tiped_round<31
{
    if tiped_round=21
    {
        var tips_role=argument0
        if tips_role=0 var tip=" SOME REFUGEES CAMPIN' OUT FRONT. WITH ALL THE MONSTERS 'BOUT, HOW CAN PEOPLE TURN ON THEIR FELLOW MAN."//DONE
        if tips_role=1 var tip=" EVEN IF YOU CANT SEE THE BANNERS, YOU CAN ALWAYS SEE THE SMOKE... EVEN FROM THIS DISTANCE"//DONE
        if tips_role=2 var tip=" THOSE FOR'NERS LOST THEIR FARM THE OTHER DAY. TWAS THERE, THEN TWAS ASH."//DONE
        if tips_role=3 var tip=" TRAVELLER OVER THERE SAYS THERE'S  BEEN A COUP D'ETAT."//DONE
    }
    if tiped_round=22
    {
        var tips_role=argument0
        if tips_role=0 var tip=" SOME REFUGEES CAMPIN' OUT FRONT. WITH ALL THE MONSTERS 'BOUT, HOW CAN PEOPLE TURN ON THEIR FELLOW MAN."//DONE
        if tips_role=1 var tip=" TRAVELLERS VILLAGE GOT DESTROYED BY SOME MANIACS IN COLORED ROBES. MONEY CAN'T BUY HAPPINESS, BUT IT SURE CAN HELP TAKE IT AWAY FROM EVERYONE ELSE."//DONE
        if tips_role=2 var tip=" THOSE FOR'NERS LOST THEIR FARM THE OTHER DAY. TWAS THERE, THEN TWAS ASH."//DONE
        if tips_role=3 var tip=" THE TRAVELLIN' MERCHANT THERE SAW SOMEONE SHEERING A SHEEP AND STICKIN' THE WOOL TO HIS FACE."//DONE
    }
    if tiped_round=23
    {
        var tips_role=argument0
        if tips_role=0 var tip=" SOME REFUGEES CAMPIN' OUT FRONT. WITH ALL THE MONSTERS 'BOUT, HOW CAN PEOPLE TURN ON THEIR FELLOW MAN."//DONE
        if tips_role=1 var tip=" TRAVELLERS OVER THERE'S ON THE RUN FROM THEIR VILLAGE AFTER SOME PRIEST VISITED. VIRUS AIN'T ONLY THING THAT SPREADS."//DONE
        if tips_role=2 var tip=" THEY SAYS THEY FOUND THIS PAPER ON THE ON THE SIDE OF THE ROAD. DOSN'T BODES ANYTHIN' GOOD."//DONE
        if tips_role=3 var tip=" TRAVELLER SAYS THERE ARE PEOPLE WALKIN' 'ROUND OFFERIN' FREE HEALIN'.I WONDER IF THEY WILL REALISE IT REALLY AIN'T ."//DONE
    }
    if tiped_round=24
    {
        var tips_role=argument0
        if tips_role=0 var tip=" SOME REFUGEES CAMPIN' OUT FRONT. WITH ALL THE MONSTERS ABOUT, HOW CAN PEOPLE TURN ON THEIR FELLOW MAN."//DONE
        if tips_role=1 var tip=" TRAVELLERS OVER THERE'S ON THE RUN FROM THEIR VILLAGE AFTER SOME PRIEST VISITED. VIRUS AIN'T ONLY THING THAT SPREADS."//DONE
        if tips_role=2 var tip=" TRAVELLIN' MERCHANT SAYS HE CANT FIND ENOUGH PITCHFORKS TO SELL PEOPLE."//DONE
        if tips_role=3 var tip=" FOR'NER THERE SAYS PEOPLE OVER HER WAY WONT STOP TEARIN' DOWN EVERY THIN' THEY FIND TO ARM THEMSELFS. WONDER WHAT COULD PUSH 'EM TO DO THAT"//DONE
    }
    
}

//elemental
if tiped_round>40&&tiped_round<51
{
    if tiped_round=41
    {
        var tips_role=argument0
        if tips_role=0 var tip=" COUSIN SAID THERE AIN'T NOTHIN' NATURAL 'BOUT THE WEATHER WHERE SHE'S FROM."//DONE
        if tips_role=1 var tip=" FOR'NER OVER THERE SAID THAT THEY AIN'T HAD RAIN FOR 6 MONTHS. "//DONE
        if tips_role=2 var tip=" TRAVELLER SAID THAT HIS VILLAGE BURNT DOWN 'COS GRASS WOULD SET IT SELF A LIGHT."//DONE
        if tips_role=3 var tip=" SEEN THE CARAVANS OUT FRONT? THEY'RE HERE 'COS THEY AIN'T HAD A DECENT HARVEST IN AGES."//DONE
    }
    if tiped_round=42
    {
        var tips_role=argument0
        if tips_role=0 var tip=" COUSIN SAID THERE AIN'T NOTHIN' NATURAL 'BOUT THE WEATHER WHERE SHE'S FROM."//DONE
        if tips_role=1 var tip=" FOR'NER OVER THERE SAID THAT THEY AINT HAD SUN FOR CLOSE TO A YEAR . "//DONE
        if tips_role=2 var tip=" SEEN THE CARAVANS OUT FRONT? THEY'RE HERE 'COS THEY AIN'T HAD A DECENT HARVEST IN AGES."//DONE
        if tips_role=3 var tip=" PEOPLE THINCK IT'S COLD HERE. THEY AIN'T SEEN HOW THAT LOT ARE DRESSED."//DONE
    }
}

//monsters
if tiped_round>60&&tiped_round<71
{
    if tiped_round=61||tiped_round=62
    {
        var tips_role=argument0
        if tips_role=0 var tip=" TRAVERLERS OVER THERE SAID GROUNDS WAS COMIN' ALIVE TRYIN' TO EAT 'EM WHOLE."//DONE
        if tips_role=1 var tip=" FOR'NER OVER THERES VILLAGE SANK INTO A HOLE. IMAGINE THAT, EH?"//DONE
        if tips_role=2 var tip=" THOSE REFUGES OUT FRONT HAD TO ABANDON THEIR WAGON 'COS OF HUGE DITCHES IN THE ROAD. "//DONE
        if tips_role=3 var tip=" TRAVERLERS OF THERE SEEN WHOLE REGIMENTS OF THE GOLDEN LEAGION BEEN FOUND TORN TO PEACES. DONT WANNA MEET WHOEVER DID THAT TO 'EM."//DONE
    }
    
    if tiped_round=63
    {
        var tips_role=argument0
        if tips_role=0 var tip=" TRAVELLERS TALKIN' ABOUT SOME KIND OF 8 LEGGED MONSTER."//DONE
        if tips_role=1 var tip=" THEM TRAVELLERS TOLD ME 'BOUT SOME KIND MONSTERS THAT LAYS ITS EGGS IN ITS VICTIMS. DONT WANNA SEE THOSE BABYS HATCK."//DONE
        if tips_role=2 var tip=" FOR'NER THERE SAID HE CAME THROUGH A CAVE TO GET HERE. HE SAW SOMETHING DOWN THERE WITH TOO MANY EYES TO BE ANYTHIN' GOOD"//DONE
        if tips_role=3 var tip=" TRAVERLERS OF THERE SEEN WHOLE REGIMENTS OF THE GOLDEN LEAGION BEEN FOUND TORN TO PEACES. DONT WANNA MEET WHOEVER DID THAT TO 'EM."//DONE
    }
    
    if tiped_round=64
    {
        var tips_role=argument0
        if tips_role=0 var tip=" TRAVELLERS TALKIN' ABOUT TRAILS OF DEAD GRASS DOWN THE WAY."//DONE
        if tips_role=1 var tip=" THEM TRAVELLERS TOLD ME 'BOUT SOME KIND MONSTERS THAT SUCKS THE LIFE OUT OF IT'S SURROUNDIN'"//DONE
        if tips_role=2 var tip=" FOR'NER THERE SAID HE HAD A RUN IN WITH SOME MONSTERS, AND SINCE HE'S LOOKED TWICE THE AGE HE USED TO BE"//DONE
        if tips_role=3 var tip=" THEY WERE MUTTERING ABOUT SOMETHIN' BLEEDIN' HIS WIFE DRY ..."//DONE
    }
     if tiped_round=65
    {
        var tips_role=argument0
        if tips_role=0 var tip=" TRAVELLERS TALKIN' ABOUT TRAILS OF HUSKS,DOSN'T SOUND LIKE ANYHTHIN' GOOD."//DONE
        if tips_role=1 var tip=" THEM TRAVELLERS TOLD ME 'BOUT SOME KIND MONSTERS THAT TOOK HIS LEG OFF'"//DONE
        if tips_role=2 var tip=" FOR'NER THERE SAID HE SAW BEACHES SHAKIN' LIKE A QUAKE WAS HAPPENIN'"//DONE
        if tips_role=3 var tip=" THEY WERE MUTTERING ABOUT SOMETHIN' TRYIN' TO GRAB THEIR LEGS IN THE TALL GRASS"//DONE
    }
}
return tip;

#define scr_tips_3
var tiped_round=obj_overlay_test.fight_round_array[global.fight_round+8]
if tiped_round>99 tiped_round-=100;
//undead DONE
if tiped_round>10&&tiped_round<21
{
    if tiped_round=11||tiped_round=12
    {
        var tips_role=argument0
        if tips_role=0 var tip=" 'EARD SOME TRAVELLERS TALKIN' BOUT SOMIN' NASTY. SOUNDED LIKE THE DEAD WERE COMIN' BACK TO LIFE."//DONE
        if tips_role=1 var tip=" FOR'NER CAME IN EARLIER, MUTTERIN' 'BOUT SOME KIND OF INFECTION AND SCRUBBIN' HER HANDS. "//DONE
        if tips_role=2 var tip=" SOME WEIRD LOOKIN GUY WALKED IN. TALKED ABOUT ABOUT SOMETHIN' EATIN' HIS FAMLY."//DONE
        if tips_role=3 var tip=" THAT TRAVELLIN' MERCHANT OVER THERE SAYS THAT WHERE HE CAME FROM THE SOILS DEAD. NO CROPS, NO GRASS, NO TREES. EVERYTHIN' DIES."//DONE
    }
    if tiped_round=13
    {
        var tips_role=argument0
        if tips_role=0 var tip=" 'EARD SOME TRAVELLERS TALKIN' BOUT SOMIN' NASTY. SOUNDED LIKE SOME KIND OF SHAPLESS ENEMY ATTACK 'EM"//DONE
        if tips_role=1 var tip=" FOR'NER CAME IN EARLIER, MUTTERIN' 'BOUT SOME KIND OF CARNIVOROUS GOOP. "//DONE
        if tips_role=2 var tip=" SOME WEIRD LOOKIN GUY WALKED IN. TALKED ABOUT ABOUT SOMETHIN' EATIN' HIS FAMLY."//DONE
        if tips_role=3 var tip=" THAT TRAVELLIN' MERCHANT OVER THERE SAYS THAT THERE ARE TRAILS OF BARRON LAND WHERE HE CAME FROM"//DONE
    }
}
//human
if tiped_round>20&&tiped_round<31
{
    if tiped_round=21
    {
        var tips_role=argument0
        if tips_role=0 var tip=" SOME REFUGEES CAMPIN' OUT FRONT. WITH ALL THE MONSTERS 'BOUT, HOW CAN PEOPLE TURN ON THEIR FELLOW MAN."//DONE
        if tips_role=1 var tip=" EVEN IF YOU CANT SEE THE BANNERS, YOU CAN ALWAYS SEE THE SMOKE... EVEN FROM THIS DISTANCE"//DONE
        if tips_role=2 var tip=" THOSE FOR'NERS LOST THEIR FARM THE OTHER DAY. TWAS THERE, THEN TWAS ASH."//DONE
        if tips_role=3 var tip=" TRAVELLER OVER THERE SAYS THERE'S BEEN A COUP D'ETAT."//DONE
    }
    if tiped_round=22
    {
        var tips_role=argument0
        if tips_role=0 var tip=" SOME REFUGEES CAMPIN' OUT FRONT. WITH ALL THE MONSTERS 'BOUT, HOW CAN PEOPLE TURN ON THEIR FELLOW MAN."//DONE
        if tips_role=1 var tip=" TRAVELLERS VILLAGE GOT DESTROYED BY SOME MANIACS IN COLORED ROBES. MONEY CAN'T BUY HAPPINESS, BUT IT SURE CAN HELP TAKE IT AWAY FROM EVERYONE ELSE."//DONE
        if tips_role=2 var tip=" THOSE FOR'NERS LOST THEIR FARM THE OTHER DAY. TWAS THERE, THEN TWAS ASH."//DONE
        if tips_role=3 var tip=" THE TRAVELLIN' MERCHANT THERE SAW SOMEONE SHEERING A SHEEP AND STICKIN' THE WOOL TO HIS FACE."//DONE
    }
    if tiped_round=23
    {
        var tips_role=argument0
        if tips_role=0 var tip=" SOME REFUGEES CAMPIN' OUT FRONT. WITH ALL THE MONSTERS 'BOUT, HOW CAN PEOPLE TURN ON THEIR FELLOW MAN."//DONE
        if tips_role=1 var tip=" TRAVELLERS OVER THERE'S ON THE RUN FROM THEIR VILLAGE AFTER SOME PRIEST VISITED. VIRUS AIN'T ONLY THING THAT SPREADS."//DONE
        if tips_role=2 var tip=" THEY SAYS THEY FOUND THIS PAPER ON THE ON THE SIDE OF THE ROAD. DOSN'T BODES ANYTHIN' GOOD."//DONE
        if tips_role=3 var tip=" TRAVELLER SAYS THERE ARE PEOPLE WALKIN' 'ROUND OFFERIN' FREE HEALIN'.I WONDER IF THEY WILL REALISE IT REALLY AIN'T ."//DONE
    }
    if tiped_round=24
    {
        var tips_role=argument0
        if tips_role=0 var tip=" SOME REFUGEES CAMPIN' OUT FRONT. WITH ALL THE MONSTERS ABOUT, HOW CAN PEOPLE TURN ON THEIR FELLOW MAN."//DONE
        if tips_role=1 var tip=" TRAVELLERS OVER THERE'S ON THE RUN FROM THEIR VILLAGE AFTER SOME PRIEST VISITED. VIRUS AIN'T ONLY THING THAT SPREADS."//DONE
        if tips_role=2 var tip=" TRAVELLIN' MERCHANT SAYS HE CANT FIND ENOUGH PITCHFORKS TO SELL PEOPLE."//DONE
        if tips_role=3 var tip=" FOR'NER THERE SAYS PEOPLE OVER HER WAY WONT STOP TEARIN' DOWN EVERY THIN' THEY FIND TO ARM THEMSELFS. WONDER WHAT COULD PUSH 'EM TO DO THAT"//DONE
    }
    
}

//elemental
if tiped_round>40&&tiped_round<51
{
    if tiped_round=41
    {
        var tips_role=argument0
        if tips_role=0 var tip=" COUSIN SAID THERE AIN'T NOTHIN' NATURAL 'BOUT THE WEATHER WHERE SHE'S FROM."//DONE
        if tips_role=1 var tip=" FOR'NER OVER THERE SAID THAT THEY AIN'T HAD RAIN FOR 6 MONTHS. "//DONE
        if tips_role=2 var tip=" TRAVELLER SAID THAT HIS VILLAGE BURNT DOWN 'COS GRASS WOULD SET IT SELF A LIGHT."//DONE
        if tips_role=3 var tip=" SEEN THE CARAVANS OUT FRONT? THEY'RE HERE 'COS THEY AIN'T HAD A DECENT HARVEST IN AGES."//DONE
    }
    if tiped_round=42
    {
        var tips_role=argument0
        if tips_role=0 var tip=" COUSIN SAID THERE AIN'T NOTHIN' NATURAL 'BOUT THE WEATHER WHERE SHE'S FROM."//DONE
        if tips_role=1 var tip=" FOR'NER OVER THERE SAID THAT THEY AINT HAD SUN FOR CLOSE TO A YEAR . "//DONE
        if tips_role=2 var tip=" SEEN THE CARAVANS OUT FRONT? THEY'RE HERE 'COS THEY AIN'T HAD A DECENT HARVEST IN AGES."//DONE
        if tips_role=3 var tip=" PEOPLE THINCK IT'S COLD HERE. THEY AIN'T SEEN HOW THAT LOT ARE DRESSED."//DONE
    }
}

//monsters
if tiped_round>60&&tiped_round<71
{
    if tiped_round=61||tiped_round=62
    {
        var tips_role=argument0
        if tips_role=0 var tip=" TRAVERLERS OVER THERE SAID GROUNDS WAS COMIN' ALIVE TRYIN' TO EAT 'EM WHOLE."//DONE
        if tips_role=1 var tip=" FOR'NER OVER THERES VILLAGE SANK INTO A HOLE. IMAGINE THAT, EH?"//DONE
        if tips_role=2 var tip=" THOSE REFUGES OUT FRONT HAD TO ABANDON THEIR WAGON 'COS OF HUGE DITCHES IN THE ROAD. "//DONE
        if tips_role=3 var tip=" TRAVERLERS OF THERE SEEN WHOLE REGIMENTS OF THE GOLDEN LEAGION BEEN FOUND TORN TO PEACES. DONT WANNA MEET WHOEVER DID THAT TO 'EM."//DONE
    }
    
    if tiped_round=63
    {
        var tips_role=argument0
        if tips_role=0 var tip=" TRAVELLERS TALKIN' ABOUT SOME KIND OF 8 LEGGED MONSTER."//DONE
        if tips_role=1 var tip=" THEM TRAVELLERS TOLD ME 'BOUT SOME KIND MONSTERS THAT LAYS ITS EGGS IN ITS VICTIMS. DONT WANNA SEE THOSE BABYS HATCK."//DONE
        if tips_role=2 var tip=" FOR'NER THERE SAID HE CAME THROUGH A CAVE TO GET HERE. HE SAW SOMETHING DOWN THERE WITH TOO MANY EYES TO BE ANYTHIN' GOOD"//DONE
        if tips_role=3 var tip=" TRAVERLERS OF THERE SEEN WHOLE REGIMENTS OF THE GOLDEN LEAGION BEEN FOUND TORN TO PEACES. DONT WANNA MEET WHOEVER DID THAT TO 'EM."//DONE
    }
    
    if tiped_round=64
    {
        var tips_role=argument0
        if tips_role=0 var tip=" TRAVELLERS TALKIN' ABOUT TRAILS OF DEAD GRASS DOWN THE WAY."//DONE
        if tips_role=1 var tip=" THEM TRAVELLERS TOLD ME 'BOUT SOME KIND MONSTERS THAT SUCKS THE LIFE OUT OF IT'S SURROUNDIN'"//DONE
        if tips_role=2 var tip=" FOR'NER THERE SAID HE HAD A RUN IN WITH SOME MONSTERS, AND SINCE HE'S LOOKED TWICE THE AGE HE USED TO BE"//DONE
        if tips_role=3 var tip=" THEY WERE MUTTERING ABOUT SOMETHIN' BLEEDIN' HIS WIFE DRY ..."//DONE
    }
     if tiped_round=65
    {
        var tips_role=argument0
        if tips_role=0 var tip=" TRAVELLERS TALKIN' ABOUT TRAILS OF HUSKS,DOSN'T SOUND LIKE ANYHTHIN' GOOD."//DONE
        if tips_role=1 var tip=" THEM TRAVELLERS TOLD ME 'BOUT SOME KIND MONSTERS THAT TOOK HIS LEG OFF'"//DONE
        if tips_role=2 var tip=" FOR'NER THERE SAID HE SAW BEACHES SHAKIN' LIKE A QUAKE WAS HAPPENIN'"//DONE
        if tips_role=3 var tip=" THEY WERE MUTTERING ABOUT SOMETHIN' TRYIN' TO GRAB THEIR LEGS IN THE TALL GRASS"//DONE
    }
}
return tip;

#define script100
// NOT MUCH FURTHER YOU CAN RUN
#define scr_world_tips
var returning=-2
var check_counting=0;
var chckn=argument1
do
{
    //name
    if chckn=0
    {
        if global.info_array[global.current_world+argument0,1]=0
        {
            global.info_array[global.current_world+argument0,1]=1;
            returning= global.info_array[global.current_world+argument0,0];
        }
    }
    //geo 
    if chckn=1
    {
        if global.info_array[global.current_world+argument0,6]=0&&!(global.info_array[global.current_world+argument0,2]=-1)
        {
            global.info_array[global.current_world+argument0,6]=1;
            returning= global.info_array[global.current_world+argument0,2];
        }
    }
    if chckn=2
    {
        if global.info_array[global.current_world+argument0,7]=0&&!(global.info_array[global.current_world+argument0,3]=-1)
        {
            global.info_array[global.current_world+argument0,7]=1;
            returning= global.info_array[global.current_world+argument0,3];
        }
    }

    if chckn=3
    {
        if global.info_array[global.current_world+argument0,8]=0&&!(global.info_array[global.current_world+argument0,4]=-1)
        {
            global.info_array[global.current_world+argument0,8]=1;
            returning= global.info_array[global.current_world+argument0,4];
        }
    }
    if chckn=4
    {
        if global.info_array[global.current_world+argument0,9]=0&&!(global.info_array[global.current_world+argument0,5]=-1)
        {
            global.info_array[global.current_world+argument0,9]=1;
            returning= global.info_array[global.current_world+argument0,5];
        }
    }
    
    //special
    if chckn=5
    {
        if global.info_array[global.current_world+argument0,12]=0&&!(global.info_array[global.current_world+argument0,10]=-1)
        {
            global.info_array[global.current_world+argument0,12]=1;
            returning= global.info_array[global.current_world+argument0,10];
        }
    }
    
    if chckn=6
    {
        if global.info_array[global.current_world+argument0,13]=0&&!(global.info_array[global.current_world+argument0,11]=-1)
        {
            global.info_array[global.current_world+argument0,13]=1;
            returning= global.info_array[global.current_world+argument0,11];
        }
    }
    //world
    if chckn=7
    {
        if global.info_array[global.current_world+argument0,18]=0&&!(global.info_array[global.current_world+argument0,14]=-1)
        {
            global.info_array[global.current_world+argument0,18]=1;
            returning= global.info_array[global.current_world+argument0,14];
        }
    }
    
    if chckn=8
    {
        if global.info_array[global.current_world+argument0,19]=0&&!(global.info_array[global.current_world+argument0,15]=-1)
        {
            global.info_array[global.current_world+argument0,19]=1;
            returning= global.info_array[global.current_world+argument0,15];
        }
    }
    
    if chckn=9
    {
        if global.info_array[global.current_world+argument0,20]=0&&!(global.info_array[global.current_world+argument0,16]=-1)
        {
            global.info_array[global.current_world+argument0,20]=1;
            returning= global.info_array[global.current_world+argument0,16];
        }
    }
    
    if chckn=10
    {
        if global.info_array[global.current_world+argument0,21]=0&&!(global.info_array[global.current_world+argument0,17]=-1)
        {
            global.info_array[global.current_world+argument0,21]=1;
            returning= global.info_array[global.current_world+argument0,17];
        }
    }
    
    //boss
    if chckn=11
    {
        if global.info_array[global.current_world+argument0,26]=0&&!(global.info_array[global.current_world+argument0,22]=-1)
        {
            global.info_array[global.current_world+argument0,26]=1;
            returning= global.info_array[global.current_world+argument0,22];
        }
    }
    
    if chckn=12
    {
        if global.info_array[global.current_world+argument0,27]=0&&!(global.info_array[global.current_world+argument0,23]=-1)
        {
            global.info_array[global.current_world+argument0,27]=1;
            returning= global.info_array[global.current_world+argument0,23];
        }
    }
    
    if chckn=13
    {
        if global.info_array[global.current_world+argument0,28]=0&&!(global.info_array[global.current_world+argument0,24]=-1)
        {
            global.info_array[global.current_world+argument0,28]=1;
            returning= global.info_array[global.current_world+argument0,24];
        }
    }
    
    if chckn=14
    {
        if global.info_array[global.current_world+argument0,29]=0&&!(global.info_array[global.current_world+argument0,25]=-1)
        {
            global.info_array[global.current_world+argument0,29]=1;
            returning= global.info_array[global.current_world+argument0,25];
        }
    }
    check_counting+=1;
    if returning=-2 chckn=irandom(14)
    if returning=-2&& check_counting>=30 returning="YA BARKING UP THE WRONG TREE LAD."
} until !(returning=-2)

return returning;