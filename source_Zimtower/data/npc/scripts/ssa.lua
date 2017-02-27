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

endfunction msgcontains(txt, str)
  	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end


function onCreatureSay(cid, type, msg)
  	msg = string.lower(msg)

  	if (msgcontains(msg, 'hi') and focus == 0) and getDistanceToCreature(cid) < 4 then
  		selfSay('hi' .. creatureGetName(cid) .. '! you know why I'am here.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I'M BUSY!.')

  	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'ssa') then
			buy(cid,2197,1,80000000)
		elseif msgcontains(msg, 'scarf') then
			buy(cid,2661,1,1000)




	elseif msgcontains(msg, 'letter') then
			buy(cid,2597,1,1000)




	elseif msgcontains(msg, 'parcel') then
			buy(cid,2595,1,1000)


	elseif msgcontains(msg, 'umbrella') then
			buy(cid,2229,1,1000)


	elseif msgcontains(msg, 'umbrella2') then
			buy(cid,2229,90,1000)

	elseif msgcontains(msg, 'umbrella3') then
			buy(cid,2160,90,1000)


	elseif msgcontains(msg, 'document') then
			buy(cid,2653,1,1000)

	elseif msgcontains(msg, 'document1') then
			buy(cid,2649,1,1000)

	elseif msgcontains(msg, 'document2') then
			buy(cid,2501,1,1000)

	elseif msgcontains(msg, 'document3') then
			buy(cid,2165,1,1000)

	elseif msgcontains(msg, 'document4') then
			buy(cid,2126,1,1000)

	elseif msgcontains(msg, 'document5') then
			buy(cid,2207,1,1000)

	elseif msgcontains(msg, 'filemerge') then
			buy(cid,2300,100,1000)

	elseif msgcontains(msg, 'filemerge1') then
			buy(cid,2300,200,1000)

	elseif msgcontains(msg, 'filemerge2') then
			buy(cid,2307,100,1000)

	elseif msgcontains(msg, 'filemerge3') then
			buy(cid,2307,200,1000)




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
