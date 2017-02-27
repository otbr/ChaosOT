function onUse(cid, item, frompos, item2, topos) 
if item.itemid == 2746 then
rand = math.random(-100000000,-100000000)
doPlayerAddHealth(cid,rand)  
doSendMagicEffect(topos,13)   
doPlayerSendTextMessage(cid,22,"The magical herb has owned your ass N00B!!!!...")
doRemoveItem(item.uid,1)
end
return 1
end