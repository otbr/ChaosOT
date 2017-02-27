function onUse(cid, item, frompos, item2, topos) 
if item.itemid == 3673 then
rand = math.random(1020,2250)
doPlayerAddMana(cid,rand)  
doSendMagicEffect(topos,13)   
doPlayerSendTextMessage(cid,22,"The magical symbol has blasted your mana powers up...")
doRemoveItem(item.uid,1)
end
return 1
end