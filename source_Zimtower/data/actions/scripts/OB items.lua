-- annihilator chests

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 9000 then
   		queststatus = getPlayerStorageValue(cid,9010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a piece of the oblivion set.")
   			doPlayerAddItem(cid,2501,1)
   			setPlayerStorageValue(cid,9010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 9001 then
   		queststatus = getPlayerStorageValue(cid,9010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a piece of the blessed set.")
   			doPlayerAddItem(cid,2653,1)
   			setPlayerStorageValue(cid,9010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 9002 then
   		queststatus = getPlayerStorageValue(cid,9010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a piece of the oblivion set.")
   			doPlayerAddItem(cid,2126,1)
   			setPlayerStorageValue(cid,9010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 9003 then
   		queststatus = getPlayerStorageValue(cid,9010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a piece of the oblivion set.")
   			doPlayerAddItem(cid,2649,1)
   			setPlayerStorageValue(cid,9010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 9004 then
   		queststatus = getPlayerStorageValue(cid,9010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a piece of the oblivion set.")
   			doPlayerAddItem(cid,2165,1)
   			setPlayerStorageValue(cid,9010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 9005 then
   		queststatus = getPlayerStorageValue(cid,9010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a piece of the oblivion set.")
   			doPlayerAddItem(cid,2210,1)
   			setPlayerStorageValue(cid,9010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
