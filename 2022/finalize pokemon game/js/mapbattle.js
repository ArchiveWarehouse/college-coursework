$(function(){


//fire area
    let fire3 =[
        "351",//Castform
        "383",//Groudon
        "390",//Chimchar
        "391",//Monferno
        "392",//Infernape
        "467",//Magmortar
        "479",//Rotom
        "485",//Heatran
        "493",//Arceus
        "494",//Victini
        "498",//Tepig
        "499",//Pignite
        "500", //Emboar
        "513"//Pansear
    ]

    let fire3_poke = fire3[Math.floor(Math.random() * (fire3.length))]
    let fire3_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + fire3_poke + ".png";
    $(".area-a img").attr("src",fire3_pokeurl);
    console.log(fire3_poke);

    let fire2 =[
        "157",//Typhlosion
        "218",//Slugma
        "219",//Magcargo
        "228",//Houndour
        "229",//Houndoom
        "240",//Magby
        "244",//Entei
        "250",//Ho-Oh
        "255",//Torchic
        "256",//Combusken
        "257",//Blaziken
        "322",//Numel
        "323",//camerupt
        "324"//Torkoal
    ]

    let fire2_poke = fire2[Math.floor(Math.random() * (fire2.length))]
    let fire2_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + fire2_poke + ".png";
    $(".area-b img").attr("src",fire2_pokeurl);
    console.log(fire2_poke);
    let fire =[
        "004",//charmander
        "005",//charmleon
        "006",//charizard
        "37",//Vulpix
        "38",//Ninetales
        "58",//growlithe
        "59",//arcanine
        "77",//ponyta
        "78",//rapidash
        "105",//Marowak
        "126",//Magmar
        "136",//Flareon
        "146",//Moltres
        "155",//Cyndaquil
    ];
    //0~4
    let fire_poke = fire[Math.floor(Math.random() * (fire.length))]
    let fire_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + fire_poke + ".png";
    $(".area-c img").attr("src",fire_pokeurl);
    console.log(fire_poke);

    let fire4 =[
        "554",//Darumaka
        "555",//Darmanitan
        "607",//Litwick
        "608",//Lampent
        "609",//Chandelure
        "631",//Heatmor
        "636",//Larvesta
        "637",//Volcarona
        "643",//Reshiram
        "653",//Fennekin
        "654",//Braixen
        "655",//Delphox
        "662",//Fletchinder
        "663"//Talonflame
    ]

    let fire4_poke = fire4[Math.floor(Math.random() * (fire4.length))]
    let fire4_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + fire4_poke + ".png";
    $(".area-d img").attr("src",fire4_pokeurl);
    console.log(fire4_poke);

    let fire5 = [
        "667",//Litleo
        "668",//Pyroar
        "721",//Volcanion
        "725",//Litten
        "726",//Torracat
        "727",//Incineroar
        "741",//Oricorio
        "757",//Salandit
        "758",//Salazzle
        "773",//Silvally
        "776",//Turtonator
        "806",//Blacephalon
        "813",//Scorbunny
        "814"//Raboot
    ]

    let fire5_poke = fire5[Math.floor(Math.random() * (fire5.length))]
    let fire5_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + fire5_poke + ".png";
    $(".area-e img").attr("src",fire5_pokeurl);
    console.log(fire5_poke);

    let fire6 =[
        "815",//cinderace
        "838",//carkol
        "839",//coalossal
        "850",//Sizzlipede
        "851"//Centiskorch
    ]
    let fire6_poke = fire5[Math.floor(Math.random() * (fire6.length))]
    let fire6_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + fire6_poke + ".png";
    $(".area-f img").attr("src",fire6_pokeurl);
    console.log(fire6_poke);
    
//water area

    let water =[
        "7",//squirtle
        "8",//wartotle
        "9",//Blastoise
        "54",//Psyduck
        "55",//Golduck
        "60",//Pollwag
        "61",//PoliWhirl
        "62",//Poliwrath
        "72",//Tentacool
        "73",//Tentacruel
        "79",//Slowpoke
        "80",//Slowbro
        "86",//Seel
        "87",//Dewgong
    ]
    let water_poke = water[Math.floor(Math.random() * (water.length))]
    let water_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + water_poke + ".png";
    $(".area-g img").attr("src",water_pokeurl);
    console.log(water_poke);

    let water2 =[
        "90",//Shellder
        "91",//Cloyster
        "98",//Krabby
        "99",//Kingler
        "116",//Horsea
        "117",//Seadra
        "118",//Goldeen
        "119",//Seaking
        "120",//Staryu
        "121",//Starmie
        "129",//Magikarp
        "130",//Gyarados
        "131",//Lapras
        "134"//Vaporeon
    ]

    let water2_poke = water2[Math.floor(Math.random() * (water2.length))]
    let water2_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + water2_poke + ".png";
    $(".area-h img").attr("src",water2_pokeurl);
    console.log(water2_poke);

    let water3 =[
        "138",//Omanyte
        "139",//Omastar
        "140",//Kabuto
        "141",//Kabutops
        "158",//Totodile
        "159",//croconaw
        "160",//feraligatr
        "170",//Chinchou
        "171",//Lanturn
        "183",//Marill
        "184",//Azumarill
        "186",//Poltoed
        "194",//Wooper
        "195"//Quagsire
    ]

    let water3_poke = water3[Math.floor(Math.random() * (water3.length))]
    let water3_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + water3_poke + ".png";
    $(".area-i img").attr("src",water3_pokeurl);
    console.log(water3_poke);

    let water4 =[
        "211",//Qwilfish
        "222",//corsola
        "223",//Remoraid
        "224",//octillery
        "226",//Mantine
        "230",//Kingdra
        "245",//Suicune
        "258",//Mudkip
        "259",//Marshtomp
        "260",//Swampert
        "270",//Lotad
        "271",//Lombre
        "271",//Ludicolo
        "278"//Wingull
    ]

    let water4_poke = water4[Math.floor(Math.random() * (water4.length))]
    let water4_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + water4_poke + ".png";
    $(".area-j img").attr("src",water4_pokeurl);
    console.log(water4_poke);

    let water5 =[
        "279",//Pelipper
        "283",//Surskit
        "318",//Carvanha
        "319",//Sharpedo
        "320",//Wailmer
        "321",//Wailord
        "339",//Barboach
        "340",//Whiscash
        "341",//corphish
        "342",//crawdaunt
        "349",//Feebas
        "350",//Milotic
        "351",//Castform
        "363"//Spheal
    ]

    let water5_poke = water4[Math.floor(Math.random() * (water5.length))]
    let water5_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + water5_poke + ".png";
    $(".area-k img").attr("src",water5_pokeurl);
    console.log(water5_poke);

    let water6 =[
        "364",//Sealeo
        "365",//Walrein
        "366",//Clamperf
        "367",//Huntail
        "368",//Gorebyss
        "369",//Relicanth
        "370",//Luvdisc
        "382",//Kyogre
        "393",//Piplup
        "394",//Prinplup
        "395",//Empoleon
        "400",//Bibarel
        "418",//Buizel
        "419"//Floatzel

    ]

    let water6_poke = water6[Math.floor(Math.random() * (water6.length))]
    let water6_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + water6_poke + ".png";
    $(".area-l img").attr("src",water6_pokeurl);
    console.log(water6_poke);

    let water7 =[
        "422",//Shellos
        "423",//Gastrodon
        "456",//Finneon
        "457",//Lumineon
        "458",//Mantyke
        "479",//Rotom
        "484",//Palkia
        "489",//Phione
        "490",//Manaphy
        "493",//Arceus
        "501",//Oshawott
        "502",//Dewott
        "503",//Samurott
        "515",//Panpour
        "516"//Simipour
    ]
    let water7_poke = water7[Math.floor(Math.random() * (water7.length))]
    let water7_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + water7_poke + ".png";
    $(".area-m img").attr("src",water7_pokeurl);
    console.log(water7_poke);

    let water8 =[
        "535",//Tympole
        "536",//Palpitoad
        "537",//Seismitoad
        "550",//Basculin
        "564",//Tirtouga
        "565",//Carracosta
        "580",//Ducklett
        "581",//Swanna
        "592",//Frillish
        "593",//Jellicent
        "594",//Alomomola
        "647",//Keldeo
        "656",//froakie
        "657"//Frogadier
    ]
    let water8_poke = water8[Math.floor(Math.random() * (water8.length))]
    let water8_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + water8_poke + ".png";
    $(".area-n img").attr("src",water8_pokeurl);
    console.log(water8_poke);

    let water9 =[
        "658",//Greninja
        "688",//Binacle
        "689",//Barbaracle
        "690",//Skrelp
        "692",//Clauncher
        "693",//Clawitzer
        "728",//Popplio
        "729",//Brionne
        "730",//Primarina
        "746",//Wishiwashi
        "747",//Mareanie
        "748",//Toxapex
        "751",//Dewpider
        "752"//araquanid
    ]

    let water9_poke = water9[Math.floor(Math.random() * (water9.length))]
    let water9_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + water9_poke + ".png";
    $(".area-o img").attr("src",water9_pokeurl);
    console.log(water9_poke);

    let water10 =[
        "767",//Wimpod
        "768",//Golisopod
        "771",//Pyukumuku
        "773",//Sivally
        "779",//Bruxish
        "788",//Tapu fini
        "816",//sobble
        "817",//Drizzile
        "818",//Inteleon
        "833",//Chewtle
        "834",//Drednaw
        "845",//Cramorant
        "846",//Arrokuda
        "847",//Barraskewda
        "882",//Dracovish
        "883",//Arctovish
        "892",//Urshifu
        "902"//Basculegion
    ]

    let water10_poke = water10[Math.floor(Math.random() * (water10.length))]
    let water10_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + water10_poke + ".png";
    $(".area-p img").attr("src",water10_pokeurl);
    console.log(water10_poke);
    //fire and water done

//grass area
    let grass =[
        "1",//Bulbasaur
        "2",//Ivysaur
        "3",//Venusaur
        "43",//Oddish
        "44",//Gloom
        "45",//vileplume
        "46",//Paras
        "47",//Parasect
        "69",//Bellsprout
        "70",//Weepinbell
        "71",//Victreebel
        "100",//voltorb
        "101",//Electrode
        "102",//Exeggcute
        "103",//Exeggutor
        "114",//Tangela
        "152",//Chikorita
        "153",//Bayleef
        "154",//Meganium
        "182",//Bellossom
        "187",//Hoppip
        "188",//Skiploom
        "189",//Jumpluff
        "191",//Sunkern
        "192",//Sunflora
    ]

    let grass_poke = grass[Math.floor(Math.random() * (grass.length))]
    let grass_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + grass_poke + ".png";
    $(".area-q img").attr("src",grass_pokeurl);
    console.log(grass_poke);

    let grass2 =[
        
        "251",//celebi
        "252",//Treecko
        "253",//Grovyle
        "254",//Sceptile
        "270",//Lotad
        "271",//Lombre
        "272",//Ludicolo
        "273",//Seedot
        "274",//Nuzleaf
        "285",//Shroomish
        "286",//Breloom
        "315",//Rosella
        "331",//Cacnea
        "332",//Cacturne
        "345",//Lileep
        "346",//Cradily
        "357",//Tropius
        "387",//Turtwig
        "388",//Grotle
        "389",//Torterra
        "406",//Budew
        "407",//Roserade
        "413",//Wormadam
        "420",//Cherubi
        "421",//Cherrim
        "455",//Carnivine
        "459",//Snover
        "460",//Abomasnow
    ]

    let grass2_poke = grass2[Math.floor(Math.random() * (grass2.length))]
    let grass2_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + grass2_poke + ".png";
    $(".area-r img").attr("src",grass2_pokeurl);
    console.log(grass2_poke);

    let grass3 =[
        
        "465",//Tangrowth
        "470",//Leafeon
        "479",//Rotom
        "492",//Shaymin
        "493",//Arceus
        "495",//Snivy
        "496",//Servine
        "497",//Serperior
        "511",//Pansage
        "512",//Simisage
        "540",//Sewaddle
        "541",//Swadloon
        "542",//Leavanny
        "546",//cottonee
        "547",//Whimiscott
        "548",//Petilil
        "549",//Liligant
        "556",//Maractus
        "585",//Deerling
        "586",//Sawsbuck
        "590",//foongus
        "591",//Amoonguss
        "597",//Ferroseed
        "598",//Ferrothorn
        "640",//Virizion
        "650",//Chespin
        "651",//Quilladin
        "652",//Chesnaught
    ]

    let grass3_poke = grass3[Math.floor(Math.random() * (grass3.length))]
    let grass3_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + grass3_poke + ".png";
    $(".area-s img").attr("src",grass3_pokeurl);
    console.log(grass3_poke);

    let grass4 =[
        "672",//Skiddo
        "673",//gogoat
        "708",//Phantump
        "709",//Trevenant
        "710",//Pumpkaboo
        "711",//Gourgeist
        "722",//Rowlet
        "723",//Dartrix
        "724",//Decidueye
        "753",//Fomantis
        "754",//Lurantis
        "755",//Morelull
        "756",//Shiinotic
        "761",//Bounsweet
        "762",//Steenee
        "763",//Tsareena
        "773",//Silvally
        "781",//Dhelmise
        "787",//Tapu Bulu
        "798",//Kartana
        "810",//Grookey
        "811",//Thwackey
        "812",//Rillaboom
        "829",//Gossifleur
        "830",//Eldegoss
        "840",//Applin
        "841",//Flappel
        "842",//Appletun
        "893",//Zarude
        "898"//Calyrex
    ]

    let grass4_poke = grass4[Math.floor(Math.random() * (grass4.length))]
    let grass4_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + grass4_poke + ".png";
    $(".area-t img").attr("src",grass4_pokeurl);
    console.log(grass4_poke);

//ground area

    let ground =[
        "27",//Sandshrew
        "28",//Sandslash
        "31",//NidoQueen
        "34",//Nidoking
        "50",//Diglett
        "51",//Dugtrio
        "74",//Geodude
        "75",//Graveler
        "76",//Golem
        "95",//Onix
        "104",//Cubone
        "105",//Marowak
        "111",//Rhyhorn
        "112",//Rhydon
        "194",//Wooper
        "195",//Quagsire
        "207",//Gilgar
        "208",//Steelix
        "220",//Swinub
        "221",//Piloswine
        "231",//Phanpy
        "232",//Donphan
        "246",//Larvitar
        "247",//Pupitar
        "259",//Marshtomp
        "260",//Swampert
        "290"//Nincada
    ]

    let ground_poke = ground[Math.floor(Math.random() * (ground.length))]
    let ground_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + ground_poke + ".png";
    $(".area-u img").attr("src",ground_pokeurl);
    console.log(ground_poke);

    let ground2 =[
        "322",//Numel
        "323",//Camerupt
        "328",//trapinch
        "329",//vibrava
        "330",//Flygon
        "339",//Barboach
        "340",//Whiscash
        "343",//Baltoy
        "344",//Claydol
        "383",//Groudon
        "389",//Torterra
        "413",//Wormadam
        "423",//gastrodon
        "443",//Gible
        "444",//Gabite
        "445",//Garchomp
        "449",//Hippopotas
        "450",//Hippowdon
        "464",//Rhyperior
        "472",//Gilscor
        "473",//Mamoswine
        "493"//Arceus
        
    ]

    let ground2_poke = ground2[Math.floor(Math.random() * (ground2.length))]
    let ground2_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + ground2_poke + ".png";
    $(".area-v img").attr("src",ground2_pokeurl);
    console.log(ground2_poke);

    let ground3 =[
        "529",//Drilbur
        "530",//Excadrill
        "536",//Palpitoad
        "537",//Seismitoad
        "551",//Sandile
        "552",//Krokorok
        "553",//Krookodile
        "562",//Yamsk
        "618",//Stunfisk
        "622",//golett
        "623",//golurk
        "645",//Landorus
        "660",//Diggersby
        "718",//Zygrade
        "749",//Mudbray
        "750",//Mudsdale
        "769",//Sandygast
        "770",//Palossand
        "773",//Silvally
        "843",//Silicobra
        "844",//Sandacobra
        "867",//Runerigus
        "901"//Ursaluna
    ]

    let ground3_poke = ground3[Math.floor(Math.random() * (ground3.length))]
    let ground3_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + ground3_poke + ".png";
    $(".area-w img").attr("src",ground3_pokeurl);
    console.log(ground3_poke);

//rock area
    let rock =[
        "58",//growlithe
        "59",//Arcanine
        "74",//Geodude
        "75",//Graveler
        "76",//Golem
        "95",//Onix
        "111",//Rhyhorn
        "112",//Rhydon
        "138",//Omanyte
        "139",//Omastar
        "140",//Kabuto
        "141",//Kabutops
        "142",//Aerodactyl
        "185",//Sudowoodo
        "213",//Shuckle
        "219",//Magcargo
        "222",//Corsola
        "246",//Larvitar
        "247",//Pupitar
        "248",//Tyranitar
        "299"//Nosepass
    ]
    let rock_poke = rock[Math.floor(Math.random() * (rock.length))]
    let rock_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + rock_poke + ".png";
    $(".area-x img").attr("src",rock_pokeurl);
    console.log(rock_poke);

    let rock2 =[
        "304",//Aron
        "305",//Lairon
        "306",//Aggron
        "337",//Lunatone
        "338",//Solrock
        "345",//Lileep
        "346",//Cradily
        "347",//Anorith
        "348",//Armaldo
        "369",//Relicanth
        "377",//Regirock
        "408",//Cranidos
        "409",//Rampardos
        "410",//Shieldon
        "411",//Bastiodon
        "438",//Bonsly
        "464",//Rhyperior
        "476",//Probopass
        "493",//Arceus
        "524",//Roggenrola
        "525",//Boldore
        "526",//Gigalith
        "557",//Dwebble
        "558",//Crustle
        "564",//Tirtouga
        "565",//Carracosta
    ]
    let rock2_poke = rock2[Math.floor(Math.random() * (rock2.length))]
    let rock2_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + rock2_poke + ".png";
    $(".area-y img").attr("src",rock2_pokeurl);
    console.log(rock2_poke);

    let rock3 =[
        "566",//archen
        "567",//Archeops
        "639",//terrakion
        "688",//Binacle
        "689",//Barbaracle
        "696",//Tyrunt
        "697",//Tyrantrum
        "698",//Amaura
        "699",//Aurorus
        "703",//Carbink
        "713",//Avalugg
        "719",//Diancle
        "744",//Rockruff
        "745",//Lycanroc
        "773",//Silvally
        "774",//Minior
        "793",//Nihilego
        "805",//Stakataka
        "834",//Drednaw
        "837",//Rolycoly
        "838",//Carkol
        "839",//Coalossal
        "874",//Stonjourner
        "900"//Kleavor
    ]

    let rock3_poke = rock3[Math.floor(Math.random() * (rock3.length))]
    let rock3_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + rock3_poke + ".png";
    $(".area-y img").attr("src",rock3_pokeurl);
    console.log(rock3_poke);

//electirc area

    let electric1 = [
        "25", //pikachu
        "26", //raichu
        "100", //voltorb
        "101",//electrode
        "125",//electabuzz
        "135",//Jolteon
        "172",//Pichu
        "179",//Mareep
        "180",//Flaafy
        "181",//Ampharos
        "239",//Elekid
        "243",//Raikou
        "309",//Electrike
        "310",//Manectric
        "311",//Plusle
        "405",//Luxray
        "417",//Pachirisu
        "466",//Elevtivire
        "522",//Blitzle
        "523",//Zebstrika
        "602",//Tynamo
        "603",//Eelektrik
        "604",//Eelektross
        "796",//Xurkitree
        "807",//Zeraora
        "835",//Yamper
        "836",//Boltund
        "871",//Pinchurchin
        "894"//Regieleki
    ]

    let electric1_poke = electric1[Math.floor(Math.random() * (electric1.length))]
    let electric1_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + electric1_poke + ".png";
    $(".area-e1 img").attr("src",electric1_pokeurl);
    console.log(electric1_poke);

    let electric2 = [
        "81",//magnemite
        "82",//Magneton
        "145",//Zapdos
        "462",//Magnezone
        "479",//Rotom
        "587",//Emolga
        "642",//Thundurus
        "694",//Helioptile
        "695",//Heliolisk
        "702",//Dedenne
        "741",//Oricorio
        "777",//Togedemaru
        "785",//Tapu koko
        "845",//toxel
        "849",//Amped form Toxtricity
        "877",//Morpeko
        "880",//Dracozolt
        "881"//Arctozolt
    ]
    let electric2_poke = electric2[Math.floor(Math.random() * (electric2.length))]
    let electric2_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + electric2_poke + ".png";
    $(".area-e2 img").attr("src",electric2_pokeurl);
    console.log(electric2_poke);

    let electric3 = [
        "074",//Alolan
        "075",//Alolan
        "170",//chinchou
        "171",//Lantrun
        "595",//Jotltik
        "596",//Galvantula
        "618",//Stunfisk
        "644",//Zekrom
        "737",//Charjabug
        "738"//Vikavolt
    ]
    let electric3_poke = electric3[Math.floor(Math.random() * (electric3.length))]
    let electric3_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + electric3_poke + ".png";
    $(".area-e3 img").attr("src",electric3_pokeurl);
    console.log(electric3_poke);

    let electric4 = [
        "310",// Mega Manectric
        "493",//Arceus
        "773"//Silvally
    ]

    let electric4_poke = electric4[Math.floor(Math.random() * (electric4.length))]
    let electric4_pokeurl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + electric4_poke + ".png";
    $(".area-e3 img").attr("src",electric4_pokeurl);
    console.log(electric4_poke);
//fire location
    $(".area-a").click(function(){
        location.href="battlefield.html?pokeno="+fire3_poke;
    });

    $(".area-b").click(function(){
        location.href="battlefield.html?pokeno="+fire2_poke;
    });

    $(".area-c").click(function(){
        location.href="battlefield.html?pokeno="+fire_poke;
    });

    $(".area-d").click(function(){
        location.href="battlefield.html?pokeno="+fire4_poke;
    });

    $(".area-e").click(function(){
        location.href="battlefield.html?pokeno="+fire5_poke;
    });

    $(".area-f").click(function(){
        location.href="battlefield.html?pokeno="+fire6_poke;
    });

//water location
    $(".area-g").click(function(){
        location.href="battlefield.html?pokeno="+water_poke;
    });

    $(".area-h").click(function(){
        location.href="battlefield.html?pokeno="+water2_poke;
    });

    $(".area-i").click(function(){
        location.href="battlefield.html?pokeno="+water3_poke;
    });

    $(".area-j").click(function(){
        location.href="battlefield.html?pokeno="+water4_poke;
    });

    $(".area-k").click(function(){
        location.href="battlefield.html?pokeno="+water5_poke;
    });

    $(".area-l").click(function(){
        location.href="battlefield.html?pokeno="+water6_poke;
    });

    $(".area-m").click(function(){
        location.href="battlefield.html?pokeno="+water7_poke;
    });

    $(".area-n").click(function(){
        location.href="battlefield.html?pokeno="+water8_poke;
    });

    $(".area-o").click(function(){
        location.href="battlefield.html?pokeno="+water9_poke;
    });

    $(".area-p").click(function(){
        location.href="battlefield.html?pokeno="+water10_poke;
    });
    //fire and water done

//grass location
    $(".area-q").click(function(){
        location.href="battlefield.html?pokeno="+grass_poke;
    });   

    $(".area-r").click(function(){
        location.href="battlefield.html?pokeno="+grass2_poke;
    });   

    $(".area-s").click(function(){
        location.href="battlefield.html?pokeno="+grass3_poke;
    });

    $(".area-t").click(function(){
        location.href="battlefield.html?pokeno="+grass4_poke;
    });

//ground location
    $(".area-u").click(function(){
        location.href="battlefield.html?pokeno="+ground_poke;
    });

    $(".area-v").click(function(){
        location.href="battlefield.html?pokeno="+ground2_poke;
    });

    $(".area-w").click(function(){
        location.href="battlefield.html?pokeno="+ground3_poke;
    });

//rock location
    $(".area-x").click(function(){
        location.href="battlefield.html?pokeno="+rock_poke;
    });

    $(".area-y").click(function(){
        location.href="battlefield.html?pokeno="+rock2_poke;
    });

    $(".area-z").click(function(){
        location.href="battlefield.html?pokeno="+rock3_poke;
    });

//electric location　使わない------------------------------------------------------------------
    $(".area-e1").click(function(){
        location.href="battlefield.html?pokeno="+electric1_poke;
    });
    $(".area-e2").click(function(){
        location.href="battlefield.html?pokeno="+electric2_poke;
    });
    $(".area-e3").click(function(){
        location.href="battlefield.html?pokeno="+electric3_poke;
    });
    $(".area-e4").click(function(){
        location.href="battlefield.html?pokeno="+electric4_poke;
    });
//-----------------------------------------------------------------------------------------
  
    let url = new URL(window.location.href);

    let params = url.searchParams;

    let pokeno = params.get('pokeno');
    console.log(pokeno);
    
    //バトルポケモンとして表示
    let buttlepoke_url = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + pokeno + ".png";
    $(".enemypoke").attr("src",buttlepoke_url);

    let life = 100;

    let afterLife = (damageamount) =>{
        life = life + damageamount;
        $(".life-frame").css("width",life +"%");
        if(life<=0){
            // location.href = "end.html?pokeno="+ pokeno;
            location.href = "end.html?pokeno="+ pokeno;
        };
    };

    $(".left-panel").click(function(){
        afterLife(-12);
        $(".enemyshape").addClass("damage");
        //0.2秒後に消す
        setTimeout(function(){
            $(".enemyshape").removeClass("damage");
        },800);
    });
    $(".right-panel").click(function(){
        afterLife(-5);
        $(".enemyshape").addClass("damage");
        //0.2秒後に消す
        setTimeout(function(){
            $(".enemyshape").removeClass("damage");
        },800);
        
    });

    $(".end-poke").attr("src",buttlepoke_url);


    // enemy name 
    let pokeAPI = $.ajax({
        url : "https://pokeapi.co/api/v2/pokemon/"+pokeno,
        type : "GET",
        dataType : "json"
    });
    console.log(pokeAPI);

    let nameget = () =>{
        let pokespeciesAPI = $.ajax({
            url : pokeAPI.responseJSON.species.url,
            type : "GET"
        });
        let namein = () =>{
            $(".enemyname").html(pokespeciesAPI.responseJSON.names[0].name);
        };
        pokespeciesAPI.done(namein);
    };
    pokeAPI.done(nameget);
    
});