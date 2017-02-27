function onUse(cid, item, frompos, item2, topos) 
if item.itemid == 2798 then
rand = math.random(320,350)
doPlayerAddMana(cid,rand)  
doSendMagicEffect(topos,13)   
doPlayerSendTextMessage(cid,22,"The magical herb has super healed your mana power...")
doRemoveItem(item.uid,1)
end
return 1
end