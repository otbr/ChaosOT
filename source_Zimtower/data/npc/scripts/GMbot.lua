focus = 0
talk_start = 0
target = 0
following = false
attacking = false
spamcount = 0
spammer = false
message = 'defOmgLOLsecrets'
warned = false
randomstring = 'ranOmgLOLsecrets'
lastbanned = ' wow i havent banned anyone yet'

function onThingMove(creature, thing, oldpos, oldstackpos)
end

function onCreatureAppear(creature)
end


function onCreatureDisappear(cid, pos)
end

function onCreatureTurn(creature)
end

function msgcontains(txt, str)
  	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end

function onCreatureSay(cid, type, msg)
   msg = string.lower(msg)
   message = string.lower(message)
   if getDistanceToCreature(cid) < 6 then
   if msg == randomstring and warned == true then
     selfSay('Thanks for your cooperation! Have fun in ChaosOT!')
     talk_start = 0
     focus = 0
     message = 'defOmgLOLsecrets'
     spamcount = 0
     spammer = false
     randomstring = 'ranOmgLOLsecrets'
     warned = false
     selfSay('/t')
     return
   end
   if msg == message then
      talk_start = os.clock()
      spamcount = spamcount + 1
   elseif talk_start == 0 and focus == 0 then
      talk_start = os.clock()
      focus = cid
      message = msg
      randomstring = 'chaosotrox' .. os.clock()
   end
   if spammer == true and warned == true then
      selfSay('Hello,' .. creatureGetName(focus) .. ', you have been flagged a spammer and possible AFK botter. Please Repeat the word in the quotations. "'..randomstring..'"')
      talk_start = os.clock()
   end
end
end

function onCreatureChangeOutfit(creature)
end

function onThink()
  	if (os.clock() - talk_start) > 30 then
  		if focus > 0 then
  			selfSay('Have fun!')
  		end
   focus = 0
   talk_start = 0
   message = 'defOmgLOLsecrets'
   spamcount = 0
   spammer = false
   randomstring = 'ranOmgLOLsecrets'
   warned = false
  	end
if spamcount > 40 and spammer == true then
   lastbanned = creatureGetName(focus)
   selfSay('/owned ' ..creatureGetName(focus))
   focus = 0
   talk_start = 0
   message = 'defOmgLOLsecrets'
   spamcount = 0
   spammer = false
   randomstring = 'ranOmgLOLsecrets'
end
if spamcount > 20 and warned == false then
   selfSay('Hello,' .. creatureGetName(focus) .. ', you have been flagged a spammer and possible AFK botter. Please Repeat the word in the quotations. "'..randomstring..'"')
   spammer = true
   warned = true
end

if focus == 0 then -- the move sccript
cx, cy, cz = selfGetPosition()
randmove = math.random(1,20)
	if randmove == 1 then
	nx = cx + 1
	elseif randmove == 2 then
	nx = cx - 1
	elseif randmove == 3 then
	ny = cy + 1
	elseif randmove == 4 then
	ny = cy - 1
	elseif randmove >= 5 then
	nx = cx
	ny = cy
	end
end

moveToPosition(nx, ny, cz)

randsay = math.random(1,10000) -- how frecuently your bot will say 
if randsay == 1 then -- something, you should set it to less than
                     -- 600 or it will end up crashin your serv 

selfSay('/shanti 2 Muffins got put into a oven, one muffin said "OMG We got put into an oven!", the other muffin said "OMG, A talking muffin!". I must be hungry :P')
end
if randsay == 6 then
selfSay('/shanti One time I tried sniffing coke but the damn ice got stuck up my nose.')
end
if randsay == 2 then
selfSay('/shanti Whoa man, have you seen my cape? The blue is soo...blue.')
end
if randsay == 3 then
selfSay('/shanti Welcome to ChaosOT! If you have any problems, please ask a tutor.')
end
if randsay == 4 then
selfSay('/shanti OB set? OMG! I want one too!')
end
if randsay == 5 then
selfSay('/shanti Psst, help me! They are holding me against my will and making me ban 24/7! I gotta feed my kids!')
end
if randsay == 7 then
selfSay('/shanti I am not running a f***** taco bell and I am not cooking your damn burritos!')
end
if randsay == 9 then
selfSay('/shanti Free items? Ahahaha... get a life...')
end
if randsay == 8 then
selfSay('/shanti Last person I banned?'..lastbanned..' for botting.LOL!')
end

randtp = math.random(1,7500)
if randtp == 1 then
selfSay('/goto 135 43 10')
end
if randtp == 2 then
selfSay('/goto 133 58 10')
end
if randtp == 3 then
selfSay('/goto 160 73 6')
end
if randtp == 4 then
selfSay('/goto 154 66 5')
end
if randtp == 5 then
selfSay('/goto 167 74 4')
end
if randtp == 6 then
selfSay('/t')
end
if randtp == 7 then
selfSay('/goto 160 49 8')
end
if randtp == 8 then
selfSay('/goto 157 117 7')
end
if randtp == 9 then
selfSay('/goto 86 211 7')
end
if randtp == 10 then
selfSay('/goto 39 31 7')
end
end