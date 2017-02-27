function onUse(cid, item, frompos, item2, topos)
piece1pos = {x=24, y=24, z=8, stackpos=255}
getpiece1 = getThingfromPos(piece1pos)
playerpos = getPlayerPosition(cid)
nplayer1pos = {x=346, y=383, z=8}
 
if item.uid == 6370 and item.itemid == 1945 and getpiece1.itemid == 2194 then
      playerpos = getPlayerPosition(cid)
            doSendMagicEffect(playerpos,2)
      doTeleportThing(cid,nplayer1pos)
            doSendMagicEffect(nplayer1pos,10)
 doRemoveItem(getpiece1.uid,1)
 else
doPlayerSendTextMessage(cid,22,"Sorry, you need the right item.")
end
return 1
end