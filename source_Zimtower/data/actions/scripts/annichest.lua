-- annihilator chests

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 5006 then
   		queststatus = getPlayerStorageValue(cid,5010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a piece of the blessed set.")
   			doPlayerAddItem(cid,2458,1)
   			setPlayerStorageValue(cid,5010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5007 then
   		queststatus = getPlayerStorageValue(cid,5010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a piece of the blessed set.")
   			doPlayerAddItem(cid,2196,1)
   			setPlayerStorageValue(cid,5010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5008 then
   		queststatus = getPlayerStorageValue(cid,5010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a piece of the blessed set.")
   			doPlayerAddItem(cid,2541,1)
   			setPlayerStorageValue(cid,5010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5009 then
   		queststatus = getPlayerStorageValue(cid,5010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a piece of the blessed set.")
   			doPlayerAddItem(cid,2648,1)
   			setPlayerStorageValue(cid,5010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
