function onUse(cid, item, frompos, item2, topos) 
if item.itemid == 2744 then
rand = math.random(320,650)
doPlayerAddMana(cid,rand)  
doSendMagicEffect(topos,13)   
doPlayerSendTextMessage(cid,22,"The magical rose has healed super your mana...")
doRemoveItem(item.uid,1)
end
return 1
end