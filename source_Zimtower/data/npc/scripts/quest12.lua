focus = 0
 talk_start = 0
 target = 0
 following = false
 attacking = false
conv = 0
 
 function onThingMove(creature, thing, oldpos, oldstackpos)
 
 end
 
 
 function onCreatureAppear(creature)
 
 end
 
 
 function onCreatureDisappear(cid, pos)
 	if focus == cid then
         selfSay('May God bless you...')
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
 	msg = string.lower(msg)
 
 	if ((string.find(msg, '(%a*)hi(%a*)')) and (focus == 0)) and getDistanceToCreature(cid) < 3 then
 		selfSay('Be welcome ' .. creatureGetName(cid) .. '!')
 		focus = cid
 		talk_start = os.clock()
 	end
 
 	if string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 3 then
 		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')
 	end
 
 	if msgcontains(msg, 'quest') and focus == cid and getPlayerStorageValue(cid,20012) == -1 then
 		selfSay('Bring me something from Mittens.')
		conv = 1
 		talk_start = os.clock()
	end
 
	if msgcontains(msg, 'piece') and getPlayerStorageValue(cid,20012) == -1 and focus == cid then
		conv = 1
		selfSay('Could you give it to me, please?')
 		talk_start = os.clock()
	end
	if msgcontains(msg, 'yes') and conv == 1 and focus == cid then
 		talk_start = os.clock()
		if doPlayerRemoveItem(cid,2335) == 0 then
		buy(cid,2336,1,0)
		setPlayerStorageValue(cid,20012,1)
		conv = 0
		selfSay('Thank you! Take this piece to Darius, Darius is fond of Dark Monks is what I heard')
		else
		selfSay('You does not have this item.')
		end
	elseif msgcontains(msg, 'no') and conv == 1 and focus == cid then
 		talk_start = os.clock()
		conv = 0
		selfSay('Hmm... Ok...')
	end

	if msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
			selfSay('Good bye and good luck, ' .. creatureGetName(cid) .. '!')
			focus = 0
			conv = 0
			talk_start = 0
		end

 end
 
 
 function onCreatureChangeOutfit(creature)
 
 end
 
 
 function onThink()
 	if (os.clock() - talk_start) > 30 then
 		if focus > 0 then
 			selfSay('Good bye then...')
			conv = 0
 		end
 			focus = 0
 	end
	if focus ~= 0 then
		if getDistanceToCreature(focus) > 5 then
			selfSay('Good bye then...')
			focus = 0
			conv = 0
		end
	end
end