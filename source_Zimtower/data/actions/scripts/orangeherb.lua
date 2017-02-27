function onUse(cid, item, frompos, item2, topos) 
if item.itemid == 2759 then
rand = math.random(320,850)
doPlayerAddHealth(cid,rand)  
doSendMagicEffect(topos,13)   
doPlayerSendTextMessage(cid,22,"The magical herb has healed you...")
doRemoveItem(item.uid,1)
end
return 1
end