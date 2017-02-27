-- Piggy bank by Lukky513 --
-- for otfans.net         --

-- configs --
mincash = 1000 -- Minium money to get (random)
maxcash = 100000 -- Max money to get (random)
brokemsg = "BANG!" -- Message when broken
-- end configs --

   function onUse(cid, item, frompos, item2, topos)
   	doTransformItem(item.uid,item.itemid+1)
	cashtype = math.random(1,100)
	cash = math.random(mincash,maxcash)
	doSendMagicEffect(frompos,2)
	do
	if cashtype >= 0 and cashtype <= 5 then
		doPlayerAddItem(cid,2160,cash)
		doPlayerSendTextMessage(cid,22,"You got out " .. cash*10000 .. " gps !")
	elseif cashtype >= 6 and cashtype <= 35 then
		doPlayerAddItem(cid,2152,cash)
		doPlayerSendTextMessage(cid,22,"You got out " .. cash*100 .. " gps !")
	elseif cashtype > 35 then
		doPlayerAddItem(cid,2148,cash)
		doPlayerSendTextMessage(cid,22,"You got out " .. cash .. " gps !")
	end
	end
	doSendAnimatedText(frompos,brokemsg,180)
   	return 1
   end