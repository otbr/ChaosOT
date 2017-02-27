focus = 0
talk_start = 0
target = 0
following = false
attacking = false
talkstate = 0

function onThingMove(creature, thing, oldpos, oldstackpos)

end


function onCreatureAppear(creature)

end


function onCreatureDisappear(cid, pos)
if focus == cid then
selfSay('Good bye then.')
focus = 0
talk_start = 0
talkstate = 0
end
end


function onCreatureTurn(creature)

end

function msgcontains(txt, str)
return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end


function onCreatureSay(cid, type, msg)
msg = string.lower(msg)
if (msgcontains(msg, 'hi') and focus == 0) and getDistanceToCreature(cid) < 4 then
queststatus = getPlayerStorageValue(cid,1234)
if queststatus == 1 then
selfSay('LORD how I can help you ??')
focus = cid
talk_start = os.clock()
else

selfSay('Welcome in my bank ' .. creatureGetName(cid) .. '! You like to "pay" in to account or maby you need some "money" from your account ?? If you like to add money to your account reamember that you may add only 10k per one time.')
focus = cid
talk_start = os.clock()
end
end

if string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
selfSay('Sorry, ' .. creatureGetName(cid) .. '! wait a second.')
end

if msgcontains(msg, 'pay') and focus == cid then
bankstatus = getPlayerStorageValue(cid,104)
if bankstatus == -1 then
if pay(cid,10000) then
miesiac = os.date('%m')
rok = os.date('%Y')
dzien = os.date('%d')

---created by GM Maciej---
setPlayerStorageValue(cid,101,rok)
setPlayerStorageValue(cid,102,miesiac)
setPlayerStorageValue(cid,103,dzien)
setPlayerStorageValue(cid,104,1)
setPlayerStorageValue(cid,105,10000)
selfSay('Zalorzyles konto, masz na nim 10k')
else
selfSay('You need 10k to create an account !')
end
talk_start = os.clock()
else
kapital = getPlayerStorageValue(cid,105)
miesiac = os.date('%m')
rok = os.date('%Y')
dzien = os.date('%d')
kr = getPlayerStorageValue(cid,101)
km = getPlayerStorageValue(cid,102)
kd = getPlayerStorageValue(cid,103)
ilelat = kr - rok
if ilelat == 0 then
ilemiesiecy = miesiac - km
else
mdk = 12 - km
ilemiesiecy = mdk + miesiac
end
if ilemiesiecy == 0 then
iledni = dzien - kd
else
ddk = 30 - kd
ilemieswdniach = ilemiesiecy * 30
iledni = ddk + ilemieswdniach
end
ilepr = iledni * kapital * 4
ilekasyd = ilepr / 100
ilekasy = kapital + ilekasyd
setPlayerStorageValue(cid,105,ilekasy)
selfSay('You have now 10k on your account, you like to ad more ? "yes" "no"')
miesiac = os.date('%m')
rok = os.date('%Y')
dzien = os.date('%d')

---created by GM Maciej---
setPlayerStorageValue(cid,101,rok)
setPlayerStorageValue(cid,102,miesiac)
setPlayerStorageValue(cid,103,dzien)
talkstate = 1

end
end

if msgcontains(msg, 'yes') and talkstate == 1 then
if pay(cid,10000) then
miesiac = os.date('%m')
rok = os.date('%Y')
dzien = os.date('%d')

---created by GM Maciej---
setPlayerStorageValue(cid,101,rok)
setPlayerStorageValue(cid,102,miesiac)
setPlayerStorageValue(cid,103,dzien)
ile = getPlayerStorageValue(cid,105)
ilenowy = ile + 10000
setPlayerStorageValue(cid,105,ilenowy)

selfSay('Money added to your account')
else
selfSay('You havent 10k !!')
end
talk_start = os.clock()

end

if msgcontains(msg, 'no') and talkstate == 1 then
selfSay('To co mi glowe zawracasz ?.')
talk_start = os.clock()
end
if msgcontains(msg, 'money') and focus == cid then
kapital = getPlayerStorageValue(cid,105)
miesiac = os.date('%m')
rok = os.date('%Y')
dzien = os.date('%d')
kr = getPlayerStorageValue(cid,101)
km = getPlayerStorageValue(cid,102)
kd = getPlayerStorageValue(cid,103)
ilelat = kr - rok
if ilelat == 0 then
ilemiesiecy = miesiac - km
else
mdk = 12 - km
ilemiesiecy = mdk + miesiac
end
if ilemiesiecy == 0 then
iledni = dzien - kd
else
ddk = 30 - kd
ilemieswdniach = ilemiesiecy * 30
iledni = ddk + ilemieswdniach
end
ilepr = iledni * kapital * 4
ilekasyd = ilepr / 100
ilekasy = kapital + ilekasyd
setPlayerStorageValue(cid,105,ilekasy)
selfSay('You have '..ilekasy..' on your account, how much you like to disburse? "10k" or "1k" ??')
miesiac = os.date('%m')
rok = os.date('%Y')
dzien = os.date('%d')

---created by GM Maciej---
setPlayerStorageValue(cid,101,rok)
setPlayerStorageValue(cid,102,miesiac)
setPlayerStorageValue(cid,103,dzien)
talkstate = 2
talk_start = os.clock()

end

if msgcontains(msg, '10k') and talkstate == 2 then
ile = getPlayerStorageValue(cid,105)
if ile >= 10000 then
buy(cid,2160,1,0)

ilekasyteraz = ile - 10000
setPlayerStorageValue(cid,105,ilekasyteraz)
talk_start = os.clock()
miesiac = os.date('%m')
rok = os.date('%Y')
dzien = os.date('%d')

---created by GM Maciej---
setPlayerStorageValue(cid,101,rok)
setPlayerStorageValue(cid,102,miesiac)
setPlayerStorageValue(cid,103,dzien)
else
selfSay('You havent that much money on account !')
talk_start = os.clock()
end
end

if msgcontains(msg, '1k') and talkstate == 2 then
ile = getPlayerStorageValue(cid,105)
if ile >= 1000 then
buy(cid,2152,10,0)

ilekasyteraz = ile - 1000
setPlayerStorageValue(cid,105,ilekasyteraz)
talk_start = os.clock()
miesiac = os.date('%m')
rok = os.date('%Y')
dzien = os.date('%d')

---created by GM Maciej---
setPlayerStorageValue(cid,101,rok)
setPlayerStorageValue(cid,102,miesiac)
setPlayerStorageValue(cid,103,dzien)
else
selfSay('You havent that much money on account !)
talk_start = os.clock()
end
end








if string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 4 then
selfSay('Good play , ' .. creatureGetName(cid) .. '!')
focus = 0
talk_start = 0
end
end


function onCreatureChangeOutfit(creature)

end


function onThink()
if (os.clock() - talk_start) > 30 then
if focus > 0 then
selfSay('Next!!!')
end
focus = 0
end
if focus ~= 0 then
if getDistanceToCreature(focus) > 5 then
selfSay('CYA!!')
focus = 0
end
end
end