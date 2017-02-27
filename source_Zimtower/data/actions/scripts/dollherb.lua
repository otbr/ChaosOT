function onUse(cid, item, frompos, item2, topos) 
if item.itemid == 2110 then
rand = math.random(110,170)
doPlayerAddMana(cid,rand)  
doSendMagicEffect(topos,13)   
doPlayerSendTextMessage(cid,22,"The magical doll has healed your mana...")
doRemoveItem(item.uid,1)
end
return 1
end