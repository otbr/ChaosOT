function onUse(cid, item, frompos, item2, topos)
if item.itemid == 2244 then
doPlayerAddHealth(cid,-1337)
doPlayerSendTextMessage(cid,22,"Whoa I'm high!")
return 0
end
return 1
end