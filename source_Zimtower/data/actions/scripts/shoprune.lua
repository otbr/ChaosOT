function onUse(cid, item, frompos, item2, topos)
addmanapos = topos
addmanapos.stackpos = 253
playeraddmana = getThingfromPos(addmanapos)

if getPlayerMagLevel(cid) >= 4 then
if playeraddmana.itemid > 0 then
random_number = math.random(30000,30000)
doSendMagicEffect(topos,12)
doPlayerAddMana(playeraddmana.uid,random_number)

if item.type > 1 then
doChangeTypeItem(item.uid,item.type-1)
else
doRemoveItem(item.uid,1)
end
else
doSendMagicEffect(frompos,2)
return 0
end
else
doSendMagicEffect(frompos,2)
doPlayerSendCancel(cid,"You don't have the required magic level to use that rune.")
end
return 1
end 