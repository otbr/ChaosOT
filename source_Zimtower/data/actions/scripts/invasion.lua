--Town Scroll by Dionisos
function onUse(cid, item, frompos, item2, topos)
doPlayerSay(cid,"Im outta here! Chaos City Here I come",1)
player1pos = getPlayerPosition(cid)
player1 = getThingfromPos(player1pos)
if player1.itemid > 0 then
temple = {x=137, y=77, z=7}
doSendMagicEffect(topos,12)
doTeleportThing(player1.uid,temple)
doSendMagicEffect(temple,12)
doPlayerSendTextMessage(player1.uid,22,"You have used a key of power.")

end
end