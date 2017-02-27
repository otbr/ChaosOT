function onUse(cid, item, frompos, item2, topos) 
if item.itemid == 2801 then
rand = math.random(120,170)
doPlayerAddMana(cid,rand)  
doSendMagicEffect(topos,13)   
doPlayerSendTextMessage(cid,22,"The magical herb has healed your mana forces...")
doRemoveItem(item.uid,1)
end
return 1
end