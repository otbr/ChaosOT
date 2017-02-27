---------- Wanna make changes in game and reload config? Use /reload config ----------
----------------------------1337SOT CONFIGURATION---------------------------

-- house price for 1 sqm
priceforsqm = 1000000

-- max houses for player
maxhouses = 1

-- required level to buy a house
houselevel = 3000

-- Do you want to enable !buyhouse(yes/no)
buyhouseable = "yes"

----- config animated text -----(Type the set command tomorow and a word. Example: ~HELLO!)
animatedtext = "~"

--Do you want the fancy skill advance animations?!
animations = "yes"
-- color of advance animations 
-- (darkblue = 2, red = 180, orange = 199, gray = 121, green = 84) 
-- (lime = 102, yellow = 169, light blue = 71, white = 983) 
anicolor = 180

--Auto Save time for each player.... 1 = 1min
saveTime = 5

-- How many % increase magic damage when u have blue robe? (2656)
bluerobe = 200
-- speed of attack in seconds (no-voc, sorc, druid, pally, knight)
speed = {"1.5", "1.3", "1.3", "1.5", "1.5"}

-- Life Ring Configuration
LifeRingHealth = "2000"
LifeRingMana = "500"

-- ROH Configuration
RoHHealth = "3000"
RoHMana = "3000"

--Better Server saves, to prevent lagg... i usually set players every 5 mins+the auto player save shown above, houses 20 mins and guids 30 then a real serversave every 1 hour
-- Char saving.. yes/no
charSaving = "yes"

-- Guild saving.. yes/no
guildSaving = "no"

-- House saving.. yes/no
houseSaving = "yes"

-- how often do server saves characters  (1 = 1min)  **Requires  Char saving..  enabled.
playersave = 5

-- how often do server saves houses (1 = 1min)  **Requires  House saving..  enabled.
housesave = 1*1*1
-- how often do server saves guilds  (1 = 1min)  **Requires  Guild saving..  enabled.
guildsave = 1*1*1


-- How many premmy days the player get when say !buypremmy
numpremmydays = 7

-- How many the player pay when say !buypremmy
pricepremmy = 1000000


-- Cost to change gender using !gender
gendercost = 10000000



-------Town Teleports

-- Teleport to town 1 (/tmp 1)
town1x = 160
town1y = 54
town1z = 7

-- Teleport to town 2 (/tmp 2)
town2x = 144
town2y = 192
town2z = 7

-- Teleport to town 3 (/tmp 3)
town3x = 479
town3y = 64
town3z = 6


-- Additional server comments (Viewed when a player types !info) (To start a new line type \n. Example: -- Hello\nMy\nName\nIs\nBncplix   (At each \n it will be on a seperate line, so 1 word per line in that -- case)
othercomments = "Chaos OT"

-- Show blue energy ball when u click teleport after enabling /tp?
tpeffect = "no"




-- The average hit a gm does with melee (Default is 0)
gmdamage = 9999999999


---- UCB Suspend System
-- Suspend time period (in minuts)
suspend_time_max = 5

-- Acc tries to be suspended in the period
suspend_acc_tries = 20

-- Same IP loggin tries to be suspended in the period
suspend_ip_tries = 20

-- Message to user when he got suspended
suspendmsg = "Ip block for 5 minute for getting password wrong too many times."

-- Access lvl required to broadcast without a name with /bc (Twilite Aura Server Sources)
bcNoName = 4

-- When a player is baned, do u want the console to say :: >>PLAYERNAME<< Was just banned. ??
banmsg = "yes"

---------------------------END 1337SOT CONFIGURATION---------------------

---------------------------- OTServ configuration ------------------------------

-- datadir
datadir = "data/"

-- sets what map to load
map = "data/world/test.otbm"

-- OTBM for binary, SQL for SQL map, XML for OTX maps
mapkind = "OTBM"

-- SQL for acc/player info from SQL, XML for acc/player info from XML
sourcedata = "SQL"

-- the message the player gets when he logs in
loginmsg = "Welcome to OT Chaos, Scourge Era"

-- the port otserv listens on
port = "500"

-- name of our server
servername = "OTChaos Scourge"

-- name of the owner of our server
ownername = ""

-- email of the owner of our server
owneremail = ""

-- the url for more server info
url = ""

-- the location of the server
location = ""

-- server ip (the ip that this server is listenin on)
-- Can be "auto" to fetch the global ip automatically
ip = "auto"

-- The messagebox you sometimes get before you choose characters
motd = "Like old times 2006. Enjoy!"
motdnum="1"

-- use md5 passwords for accounts, yes/no
md5passwords = "no"

-- world type. options: pvp, no-pvp, pvp-enforced
worldtype = "pvp"

-- max number of players allowed
maxplayers = "500"

-- exhausted time in ms (1000 = 1sec)
exhausted = 400

-- exhaustion time for healing spells (1000 = 1sec)
exhaustedheal = 400

-- how many ms to add if the player is already exhausted and tries to cast a spell (1000 = 1sec)
exhaustedadd = 200

-- how long does the player has to stay out of fight to get pz unlocked in ms (1000 = 1sec)
pzlocked = 30000

-- allow multiple logins of the same char
allowclones = 0

-- vocation names
vocations = {"a Demonic Soul", "a Holy Templar", "a Sniper", "a Warlord"}
promoted_vocations = {"a Master Sorcerer", "a Holy Druid", "a Sniper", "a Elite Knight"}

--- SQL part
sql_host = "lo234sdfsdfsdftlhost"
sql_user = "ro324dfsdf"
sql_pass = "tuomio"
sql_db   = "otserv"


--- SQL MAP part
sqlmap = "test_map"
map_host = "loc234234fge4lhost"
map_user = "rosdfe234234"
map_pass = "tuomio"
map_db   = ""

------------------------- YurOTS basic configuration ---------------------------

-- name of your world (seen on the character list when logging in)
worldname = "OTChaos Scourge Era"

-- how often do server saves it's state (0 = off, 5 = 5min, 60 = hour)
autosave = 5

-- do you want to enable cap system? (yes/no)
capsystem = "no"

-- do you want players to learn spells before they can use them? (yes/no)
learnspells = "no"

-- do you want to give premium account to all players? (yes/no)
freepremmy = "yes"

-- do you want premium players to wait in queue as others? (yes/no)
queuepremmy = "yes"

-- how much % of {exp, mana, skill, eq, bp} do you lose when dying
diepercent = {"4", "2", "2", "20", "100"}

-- how many summons player can have
maxsummons = 0

-- do you want to give summons for all vocations? (yes/no)
summonsallvoc = "no"

-- chance of losing a spear when shot (0 - none lost, 100000 - all lost)
spearlosechance = 0

-- anti-afk - maximum idle time to kick player (1 = 1min)
kicktime = 15

-- maximum number of items player can keep in his/her depot
maxdepotitems = 1000

-- maximum number of items on a house tile (including those in containers)
maxhousetileitems = 10

-- how much death entries are saved in players file (old are deleted)
maxdeathentries = 2

-- mana consumend by {snakebite, moonlight, volcanic, quagmire, tempest} rod
rodmana = {"2", "3", "5", "8", "13"}

-- mana consumed by wand of {vortex, dragonbreath, plague, cosmic energy, inferno}
wandmana = {"2", "3", "5", "8", "13"}

-- shooting range of {snakebite, moonlight, volcanic, quagmire, tempest} rod
rodrange = {"6", "5", "4", "3", "2"}

-- shooting range of  wand of {vortex, dragonbreath, plague, cosmic energy, inferno}
wandrange = {"6", "5", "4", "3", "2"}

-- damage of burst arrows blast
-- default is from (1*lvl+5*mlvl)*0.24 to (1*lvl+5*mlvl)*0.55
burstarrowdmg = {"3.5", "5.0", "1.74", "1.95"}

--------------------------- Multipliers and gains ------------------------------

-- experience multiplier (how much faster you got exp from monsters)
expmul = 75

-- experience multiplier for pvp-enforced (how much faster you got exp from players)
expmulpvp = 50

-- skill multipliers: 1 - rl tibia, 10 - ten times faster etc. {no-voc, sorcerer, druid, paladin, knight}
weaponmul = {"3", "45", "45", "90", "120"}
distmul = {"3", "20", "30", "200", "90"}
shieldmul = {"3", "30", "30", "100", "150"}
manamul = {"2", "20", "20", "10", "10"}

-- how much points of life,mana,cap do you get when advancing {no-voc, sorcerer, druid, paladin, knight}
capgain = {"0", "0", "0", "0", "0"}
managain = {"5", "100", "80", "75", "50"}
hpgain = {"5", "30", "40", "70", "100"}

-- how much faster do you recovery life,mana after eating food (1 - rl tibia)
healthtickmul = 750
manatickmul = 750

-------------------------------- Skull system ----------------------------------

-- how many unjustified kills to get a red skull
redunjust = 10

-- how many unjustified kills to get banned
banunjust = 20

-- how long do you have white skull after attacking player (1 = 1min)
hittime = 2

-- how long do you have white skull after killing player (1 = 1min)
whitetime = 10

-- how long do you have red skull (1 = 1min)
redtime = 1*30

-- how long do you have to wait to lose 1 unjustified kill (1 = 1min)
fragtime = 5

------------------------------ GM access rights --------------------------------

-- access to walk into houses and open house doors
accesshouse = 100

-- access to login without waiting in the queue or when server is closed
accessenter = 3

-- access to ignore damage, exhaustion, cap limit and be ignored by monsters
accessprotect = 5

-- access to broadcast messages and talk in colors (#c blabla - in public channels)
accesstalk = 1

-- access to move distant items from/to distant locations
accessremote = 100

-- access to see id and position of the item you are looking at
accesslook = 8
dist = 25

chancebleed = 20
logpackets = 0

packetticks = 334
limit = 1000
------------------------------END------------------------------------------