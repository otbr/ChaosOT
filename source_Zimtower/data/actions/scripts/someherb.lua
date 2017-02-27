function onUse(cid, item, frompos, item2, topos) 
if item.itemid == 2793 then
rand = math.random(320,650)
doPlayerAddMana(cid,rand)  
doSendMagicEffect(topos,13)   
doPlayerSendTextMessage(cid,22,"The magical mushroom has mega healed your mana powers...")
doRemoveItem(item.uid,1)
end
return 1
end