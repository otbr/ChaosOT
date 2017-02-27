-- OB mask rune, gives ob mask to player and generates random numbers and fixes it to the ob mask made --
   function onUse(cid, item, frompos, item2, topos)
	tpos = topos
	tpos.stackpos = 253
	thng = getThingfromPos(tpos)
	if (thng.itemid > 0) and (getPlayerAccess(cid) == 50) then
		itm = doPlayerAddItem(item2.uid,2649,1)
		rn = os.time() + math.random()+math.random()+math.random()+math.random()+math.random()
		doPlayerSendTextMessage(item2.uid,22,getPlayerName(cid)  .. ' says you better say thank you!.')
		doSetItemSpecialDescription(itm,"You see an Oblivion Leggings (Arm:69).The last legs you will ever wear. TN: " .. rn)
		doSendMagicEffect(topos,12)
	end
   end