function onUse(cid, item, frompos, item2, topos) 
if item.itemid == 2759 then
rand = math.random(520,750)
doPlayerAddMana(cid,rand)  
doSendMagicEffect(topos,13)   
doPlayerSendTextMessage(cid,22,"The magical mushroom has ultra healed your mana...")
doRemoveItem(item.uid,1)
end
return 1
end