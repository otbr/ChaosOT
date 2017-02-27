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

endfunction msgcontains(txt, str)
  	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end


function onCreatureSay(cid, type, msg)
  	msg = string.lower(msg)

  	if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
  		selfSay('Arrrrr ' .. creatureGetName(cid) .. '! I buy Gems Only!!. Please State the gem you would like to sell with no spaces. Like so. smalldiamond, smallruby, whitepearl, blackpearl, talon, violetgem, bigruby, bigemerald, goldnugget, scarabcoin, bluegem, brooch  and with that said. I buy as many gems and as many types of gems as possible! Also use 10smalldiamond and 100smalldiamond, 10smallemerald 100smallemerald. And so on')
  		focus = cid
  		talk_start = os.clock()
	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')  	elseif focus == cid then		talk_start = os.clock()		if msgcontains(msg, 'blackpearl') then
  			sell(cid,2144,1,1000)
  		elseif msgcontains(msg, 'whitepearl') then
  			sell(cid,2143,1,1000)
  		elseif msgcontains(msg, 'smalldiamond') then
  			sell(cid,2145,1,1000)
		elseif msgcontains(msg, 'smallsapphire') then
  			sell(cid,2146,1,1000)
		elseif msgcontains(msg, 'smallruby') then
  			sell(cid,2147,1,1000)
		elseif msgcontains(msg, 'smallemerald') then
  			sell(cid,2149,1,1000)
		elseif msgcontains(msg, 'smallamethyst') then
  			sell(cid,2150,1,1000)
		elseif msgcontains(msg, 'talon') then
  			sell(cid,2151,1,2000)
		





		elseif msgcontains(msg, 'violetgem') then
  			sell(cid,2153,1,400000)
		elseif msgcontains(msg, 'yellowgem') then
  			sell(cid,2154,1,100000000)
		elseif msgcontains(msg, 'bigemerald') then
  			sell(cid,2155,1,500000)
		elseif msgcontains(msg, 'bigruby') then
  			sell(cid,2156,1,200000)
		elseif msgcontains(msg, 'bluegem') then
  			sell(cid,2158,1,300000)
		
		elseif msgcontains(msg, 'royalamulet') then
  			sell(cid,2139,1,500000)

		elseif msgcontains(msg, 'pheonixamulet') then
  			sell(cid,2141,1,500000)


		elseif msgcontains(msg, 'scarabcoin') then
  			sell(cid,2159,1,5000)
		elseif msgcontains(msg, 'brooch') then
  			sell(cid,4873,1,5000)

		elseif msgcontains(msg, 'goldnugget') then
  			sell(cid,2157,1,5000)
		
		elseif msgcontains(msg, '10whitepearl') then
  			sell(cid,2143,10,10000)
  		elseif msgcontains(msg, '10smalldiamond') then
  			sell(cid,2145,10,10000)
		elseif msgcontains(msg, '10smallsapphire') then
  			sell(cid,2146,10,10000)
		elseif msgcontains(msg, '10smallruby') then
  			sell(cid,2147,10,10000)
		elseif msgcontains(msg, '10smallemerald') then
  			sell(cid,2149,10,10000)
		elseif msgcontains(msg, '10smallamethyst') then
  			sell(cid,2150,10,10000)
		elseif msgcontains(msg, '10talon') then
			sell(cid,2151,10,20000)
		elseif msgcontains(msg, '10goldnugget') then
  			sell(cid,2157,10,50000)
		elseif msgcontains(msg, '10scarabcoin') then
  			sell(cid,2159,10,50000)


		elseif msgcontains(msg, '100whitepearl') then
  			sell(cid,2143,100,100000)
  		elseif msgcontains(msg, '100smalldiamond') then
  			sell(cid,2145,100,100000)
		elseif msgcontains(msg, '100smallsapphire') then
  			sell(cid,2146,100,100000)
		elseif msgcontains(msg, '100smallruby') then
  			sell(cid,2147,100,100000)
		elseif msgcontains(msg, '100smallemerald') then
  			sell(cid,2149,100,100000)
		elseif msgcontains(msg, '100smallamethyst') then
  			sell(cid,2150,100,100000)
		elseif msgcontains(msg, '100talon') then
			sell(cid,2151,100,200000)
		elseif msgcontains(msg, '100goldnugget') then
  			sell(cid,2157,100,500000)
		elseif msgcontains(msg, '100scarabcoin') then
  			sell(cid,2159,100,500000)


		elseif msgcontains(msg, '100blackpearl') then
  			sell(cid,2144,100,100000)
		elseif msgcontains(msg, '10blackpearl') then
  			sell(cid,2144,10,10000)



  		elseif string.find(msg, '(%a*)bye(%a*)')  and getDistanceToCreature(cid) < 4 then
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
