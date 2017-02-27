function onUse(cid, item, frompos, item2, topos) 
if item.itemid == 2760 then
rand = math.random(70,110)
doPlayerAddMana(cid,rand)  
doSendMagicEffect(topos,13)   
doPlayerSendTextMessage(cid,22,"The magical herb has healed your mana powers...")
doRemoveItem(item.uid,1)
end
return 1
end