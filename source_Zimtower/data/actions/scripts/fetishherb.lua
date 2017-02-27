function onUse(cid, item, frompos, item2, topos) 
if item.itemid == 2194 then


doSendMagicEffect(topos,13)   
doPlayerSendTextMessage(cid,22,"You are not supposed to use it here...Think Hard! Or Easy?")
doRemoveItem(item.uid,1)
end
return 1
end