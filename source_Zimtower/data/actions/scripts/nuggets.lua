function onUse(cid, item, frompos, item2, topos)
if item.itemid == 2320 and item.type == 100 then
doRemoveItem(item.uid,item.type)
doPlayerAddItem(cid,2281,1)
doPlayerSendTextMessage(cid,22,"You have changed 100 chipped skulls to a 100million GM Token")
elseif item.itemid == 2320 and item.type < 100 then
doRemoveItem(item.uid,1)
doPlayerAddItem(cid,2160,100)
doPlayerSendTextMessage(cid,22,"You have changed 1 chipped skull to 100 crystal")
end
end