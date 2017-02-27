function onUse(cid, item, frompos, item2, topos)
   	if item.itemid == 2160 and item.type == 100 then
   		doRemoveItem(item.uid,item.type)
   		doPlayerAddItem(cid,2320,1)
   		doPlayerSendTextMessage(cid,22,"You have changed 100 crystal to 1 skull")
   	elseif item.itemid == 2160 and item.type < 100 then
   		doRemoveItem(item.uid,1)
   		doPlayerAddItem(cid,2152,100)
   		doPlayerSendTextMessage(cid,22,"You have changed 1 crystal to 100 platinum coins")
   	end
   end
