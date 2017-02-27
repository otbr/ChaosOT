function onUse(cid, item, frompos, item2, topos)
   	if item.itemid == 2229 and item.type < 100 then
   		doRemoveItem(item.uid,1)
   		doPlayerAddItem(cid,2320,100)
   		doPlayerSendTextMessage(cid,22,"You have changed 1 flawless skull for 100 chipped skulls")
      	end
   end
