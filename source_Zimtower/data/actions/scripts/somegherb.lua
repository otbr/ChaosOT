function onUse(cid, item, frompos, item2, topos) 
if item.itemid == 2794 then
rand = math.random(1220,1587)
doPlayerAddMana(cid,rand)  
doSendMagicEffect(topos,13)   
doPlayerSendTextMessage(cid,22,"The magical mushroom has ultimatly healed your mana forces...")
doRemoveItem(item.uid,1)
end
return 1
end