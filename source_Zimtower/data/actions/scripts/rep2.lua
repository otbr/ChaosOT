------Reputation System by Colex------

function onUse(cid, item, frompos, item2, topos)

if item2.itemid == cid then

name2 = getPlayerName(cid)
name = getPlayerName(item2.uid)
rep = getPlayerStorageValue(item2.uid,8904)

if rep == -1 then
  setPlayerStorageValue(item2.uid,8904,0)
end

rep = getPlayerStorageValue(item2.uid,8904)

if name2 == name then
doPlayerSendTextMessage(cid,22,"You have "..rep.." props points.") 
else
  doPlayerSendTextMessage(cid,22,""..name.." has "..rep.." props points.")
end
else
  doPlayerSendCancel(cid,"You can not use this rune there noob.")
end

return 1
end