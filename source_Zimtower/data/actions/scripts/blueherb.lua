function onUse(cid, item, frompos, item2, topos) 
if item.itemid == 2745 then
rand = math.random(620,250)
doPlayerAddMana(cid,rand)  
doSendMagicEffect(topos,13)   
doPlayerSendTextMessage(cid,22,"The magical rose has super healed your mana...")
doRemoveItem(item.uid,1)
end
return 1
end