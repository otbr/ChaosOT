templex = 160
templey = 53
templez = 7
maxnamelen = 20
maxpasslen = 20
startlvl = 8
startexp = 4200
vocations = 1
healthstart = 1000
manastart = 1000
depoitemid = 2594
promoted = 1
---------skills-------------------------
--knight-------
kmlvl = 10
kfist = 10
kclub = 10
ksword = 10
kaxe = 10
kdist = 10
kshield = 10
kfish = 10
kcap = 100
--pall------------
pmlvl = 10
pfist = 10
pclub = 10
psword = 10
paxe = 10
pdist = 10
pshield = 10
pfish = 10
pcap = 100
---drut i sorc----
mmlvl = 10
mfist = 10
mclub = 10
msword = 10
maxe = 10
mdist = 10
mshield = 10
mfish = 10
mcap = 100
---end skills -------------------------------
---end little config-----------------------------------------
focus = 0
talk_start = 0
target = 0
following = false
attacking = false
accstatus = 0
seksik = 3
myname = ''
mypass = ''
allow_pattern = '^[a-zA-Z0-9 -]+$'
origmsg = ''
mypasscheck = ''
mynamecheck = ''
vocation = 0


function onThingMove(creature, thing, oldpos, oldstackpos)

end


function onCreatureAppear(creature)

end


function onCreatureDisappear(cid, pos)
if focus == cid then
selfSay('Good bye then.')
focus = 0
talk_start = 0
end
end


function onCreatureTurn(creature)

end
function msgcontains(txt, str)
return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end


function onCreatureSay(cid, type, msg)
origmsg = msg
msg = string.lower(msg)



if (msgcontains(msg, 'hi') and focus == 0) and getDistanceToCreature(cid) < 4 then
selfSay('Hello. You want to be a man or a woman?')
accstatus = 1
myname = ''
mypass = ''
myaccnumber = 0
focus = cid
talk_start = os.clock()


elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
selfSay('Wait..')


elseif focus == cid then
talk_start = os.clock()

if accstatus == 1 then
if msgcontains(msg, 'man') then selfSay('What name do you want?')
seksik = 1
accstatus = 2
elseif msgcontains(msg, 'woman') then
selfSay('What name do you want?')
seksik = 0
accstatus = 2
end




elseif accstatus == 66 then
if msgcontains(msg, 'paladin') then
vocation = 3
selfSay('paladin, yes?')

elseif msgcontains(msg, 'sorcerer') then
vocation = 1
selfSay('sorcerer, yes?')

elseif msgcontains(msg, 'druid') then
vocation = 2
selfSay('druid, yes?')

elseif msgcontains(msg, 'knight') then
vocation = 4
selfSay('knight, yes?')
else
selfSay('Spell properly.')
end

accstatus = 67


elseif accstatus == 2 then
myname = origmsg
mynamecheck = msg
if string.len(mynamecheck) <= maxnamelen then
if string.find(mynamecheck, allow_pattern) then
if io.open("data/players/"..myname..".xml" , "r") == nil then
selfSay('Will you use '..myname..' as your name ?')
accstatus = 3
else
selfSay('Name is already in use.. choose another.')
end
else
selfSay('Illegal characters in name, choose another.')
end
else
selfSay('Name is too long, use a shorter one.')
end
elseif msgcontains(msg, 'yes') then
if accstatus == 3 then
if vocations == 0 then
selfSay('Ok, tell me your password')
vocation = 0
accstatus = 4
else
selfSay('What vocation do you want to be? (Sorcerer, Druid, Paladin or Knight?)')
accstatus = 66
end
elseif accstatus == 5 then
if seksik == 0 then
selfSay('Excellent! You are a woman named: '..myname..' your password is:'..mypass..'. Yes ?')
else
selfSay('Excellent! You are a man named: '..myname..' your password is:'..mypass..'. Yes ?')

end
accstatus = 6
elseif accstatus == 6 then
selfSay('Ok, lets randomize your acc number. Say -rand- to continue.')
accstatus = 7
elseif accstatus == 67 then
selfSay('Tell me your password.')
accstatus = 4
end
elseif msgcontains(msg, 'not') then
if accstatus == 3 then
selfSay('Choose another.')
accstatus = 2
elseif accstatus == 5 then
selfSay('Choose another.')
accstatus = 4
elseif accstatus == 6 then
selfSay('Start again, tell me your gender')
accstatus = 1
elseif accstatus == 67 then
selfSay('Then tell me your profession again')
accstatus = 66
end
elseif accstatus == 4 then
mypass = origmsg
mypasscheck = msg
if string.len(mypasscheck) <= maxpasslen then
if string.find(mypasscheck, allow_pattern) then
selfSay('Your password is '..mypass..' yes ?')
accstatus = 5
else
selfSay('Illegal characters.')
end
else
selfSay('Too long.')
end

elseif msgcontains(msg, 'rand') and accstatus == 7 then
if manastart == 0 then
manastartc = 100
else
manastartc = manastart
end
if healthstart == 0 then
healthstartc = 100
else
healthstartc = healthstart
end
if vocations == 0 then
mlvl = 1
fist = 10
club = 10
sword = 10
axe = 10
dist = 10
shield = 10
fish = 10
cap = 100
else
if vocation == 1 or vocation == 2 then
mlvl = mmlvl
fist = mfist
club = mclub
sword = msword
axe = maxe
dist = mdist
shield = mshield
fish = mfish
cap = mcap

elseif vocation == 3 then
mlvl = pmlvl
fist = pfist
club = pclub
sword = psword
axe = paxe
dist = pdist
shield = pshield
fish = pfish
cap = pcap
elseif vocation == 4 then
mlvl = kmlvl
fist = kfist
club = kclub
sword = ksword
axe = kaxe
dist = kdist
shield = kshield
fish = kfish
cap = kcap

end
end

myaccnumber = math.random(100000,999999)
if io.open("data/accounts/"..myaccnumber..".xml" , "r") == nil then
selfSay('Acc number is: '..myaccnumber..' Say --next--')
accstatus = 8
f = assert(io.open("./data/accounts/"..myaccnumber..".xml", "w"))
f = io.open("./data/accounts/"..myaccnumber..".xml", "w")
f:write("<?xml version=\"1.0\"?><account pass=\""..mypass.."\" type=\"1\" premDays=\"666\"><characters><character name=\""..myname.."\"\/><\/characters><\/account>")
f:close()
f = assert(io.open("./data/players/"..myname..".xml", "w"))
f = io.open("./data/players/"..myname..".xml", "w")
f:write("<?xml version=\"1.0\"?><player name=\""..myname.."\" id=\"" ..myaccnumber.."\" account=\""..myaccnumber.."\" sex=\""..seksik.."\" lookdir=\"2\" exp=\""..startexp.."\" voc=\""..vocation.."\" level=\""..startlvl.."\" access=\"0\" cap=\""..cap.."\" maglevel=\""..mlvl.."\" maxdepotitems=\"1000\" lastlogin=\"0\" lastlogout=\"0\" premmium=\"0\" promoted=\""..promoted.."\" soul=\"100\" warning=\"0\" red=\"0\" banTicks=\"0\" reason=\"\" rook=\"0\" sleeping=\"0\" knowaddon=\"0\" lookaddon=\"0\"><spawn x=\""..templex.."\" y=\""..templey.."\" z=\""..templez.."\"\/><temple x=\""..templex.."\" y=\""..templey.."\" z=\""..templez.."\"\/><health now=\""..healthstart.."\" max=\""..healthstartc.."\" food=\"0\"\/><mana now=\""..manastartc.."\" max=\""..manastartc.."\" spent=\"0\"\/><look type=\"134\" head=\"77\" body=\"79\" legs=\"78\" feet=\"77\"\/><guild name=\"\" rank=\"\" nick=\"\" id=\"\"/><skills><skill skillid=\"0\" level=\""..fist.."\" tries=\"0\"\/><skill skillid=\"1\" level=\""..club.."\" tries=\"0\"\/><skill skillid=\"2\" level=\""..sword.."\" tries=\"0\"\/><skill skillid=\"3\" level=\""..axe.."\" tries=\"0\"\/><skill skillid=\"4\" level=\""..dist.."\" tries=\"0\"\/><skill skillid=\"5\" level=\""..shield.."\" tries=\"0\"\/><skill skillid=\"6\" level=\""..fish.."\" tries=\"0\"\/><\/skills><ban comment=\"\" action=\"\"/><skull redskulltime=\"0\" redskull=\"0\"/><deaths\/><spells\/><inventory><slot slotid=\"3\"><item id=\"1988\"><inside><item id=\"2160\" count=\"10\"\/><item id=\"2666\" count=\"100\"\/><\/inside><\/item><\/slot><slot slotid=\"4\"><item id=\"2650\"\/><\/slot><slot slotid=\"6\"><item id=\"2382\"\/><\/slot><slot slotid=\"7\"><item id=\"2468\"\/><\/slot><slot slotid=\"8\"><item id=\"2643\"\/><\/slot><\/inventory><depots><depot depotid=\"1\"><item id=\""..depoitemid.."\"><inside><item id=\"2594\"\/><\/inside><\/item><\/depot><\/depots><storage/><viplist/><\/player>")
f:close()

else
selfSay('Error say --rand-- again')
end



elseif msgcontains(msg, 'next') and accstatus == 8 then
selfSay('Number: '..myaccnumber..' password: '..mypass..' Done Have Fun:)')
accstatus = 0
elseif msgcontains(msg, 'links') then
selfSay('www.otfans.net ')




elseif string.find(msg, '(%a*)bye(%a*)') and getDistanceToCreature(cid) < 4 then
selfSay('Good bye, ' .. creatureGetName(cid) .. '!')
focus = 0
accstatus = 0
myname = ''
mypass = ''
myaccnumber = 0
seksik = ''
talk_start = 0
end
end
end


function onCreatureChangeOutfit(creature)

end


function onThink()
if (os.clock() - talk_start) > 30 then
if focus > 0 then
selfSay('Next please!')
end
focus = 0
end
if focus ~= 0 then
if getDistanceToCreature(focus) > 5 then
selfSay('Good bye!')
focus = 0
end
end
end 
