focus = 0
talk_start = 0
target = 0
following = false
attacking = false

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
  	msg = string.lower(msg)

  	if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
  		selfSay('Hello ' .. creatureGetName(cid) .. '! I sell Destruction Set(1mil ech), Holy Set(2mil ech), Chaos Set(3mil ech), Weapons Displayed(1mil/2mil/3mil logical by stats). All items here were crafted by me. I sell temple items (green tome)')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'destruction armor') then
			buy(cid,2503,1,1000000)
		elseif msgcontains(msg, 'destruction legs') then
			buy(cid,2504,1,1000000)
		elseif msgcontains(msg, 'destruction helmet') then
			buy(cid,2502,1,1000000)
		elseif msgcontains(msg, 'destruction boots') then
			buy(cid,2641,1,1000000)
		elseif msgcontains(msg, 'destruction shield') then
			buy(cid,2517,1,1000000)
		elseif msgcontains(msg, 'holy armor') then
			buy(cid,2466,1,2000000)
		elseif msgcontains(msg, 'holy helmet') then
			buy(cid,2471,1,2000000)
		elseif msgcontains(msg, 'holy legs') then
			buy(cid,2470,1,2000000)
		elseif msgcontains(msg, 'holy shield') then
			buy(cid,2523,1,2000000)
		elseif msgcontains(msg, 'holy boots') then
			buy(cid,2646,1,2000000)
		elseif msgcontains(msg, 'chaos helmet') then
			buy(cid,2506,1,3000000)
		elseif msgcontains(msg, 'chaos armor') then
			buy(cid,2505,1,3000000)
		elseif msgcontains(msg, 'chaos legs') then
			buy(cid,2469,1,3000000)
		elseif msgcontains(msg, 'chaos shield') then
			buy(cid,2522,1,3000000)
		elseif msgcontains(msg, 'chaos boots') then
			buy(cid,3982,1,3000000)
		elseif msgcontains(msg, 'enchanted arrow') then
			buy(cid,2352,1,3000000)
		elseif msgcontains(msg, 'scytheblade') then
			buy(cid,3963,1,1000000)
                                   elseif msgcontains(msg, 'demon legs') then
			buy(cid,2653,1,1000000)
		elseif msgcontains(msg, 'blade of doom') then
			buy(cid,2446,1,2000000)
                                   elseif msgcontains(msg, 'bone armor') then
			buy(cid,2501,1,2000000)
		elseif msgcontains(msg, 'soul slayer') then
			buy(cid,2408,1,3000000)
		elseif msgcontains(msg, 'harpoon') then
			buy(cid,3964,1,1000000)
		elseif msgcontains(msg, 'warlords battleaxe') then
			buy(cid,3962,1,2000000)
		elseif msgcontains(msg, 'deaths reaper') then
			buy(cid,2443,1,3000000)
		elseif msgcontains(msg, 'skull splitter') then
			buy(cid,2424,1,1000000)
		elseif msgcontains(msg, 'hammer of wrath') then
			buy(cid,2444,1,3000000)
		elseif msgcontains(msg, 'destroyer') then
			buy(cid,2452,1,2000000)
		elseif msgcontains(msg, 'brown mushroom') then
			buy(cid,2229,100,1000)
		
		elseif msgcontains(msg, 'green tome') then
			buy(cid,1983,1,500000)
		
		elseif msgcontains(msg, 'crafting ore') then
			buy(cid,2225,1,500000)
		

		elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
			selfSay('Good bye, ' .. creatureGetName(cid) .. '!')
			focus = 0
			talk_start = 0
		end
	end
end


function onCreatureChangeOutfit(creature)

end


function onThink()
  	if (os.clock() - talk_start) > 30 then
  		if focus > 0 then
  			selfSay('Next Please...')
  		end
  			focus = 0
  	end
 	if focus ~= 0 then
 		if getDistanceToCreature(focus) > 5 then
 			selfSay('Good bye then.')
 			focus = 0
 		end
 	end
end

