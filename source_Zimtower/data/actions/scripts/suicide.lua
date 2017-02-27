-- Suicide System V1.0
-- Coded by Roman
function onUse(cid, item, frompos, item2, topos)
access = getPlayerAccess(cid)
newplayerpos = {x=152, y=63, z=15}	-- set the coordinates of the place the player should be teleported too

if item.uid == 7777 and item.itemid == 1945 and access <= 2 then	-- set unique on map and then here on the lever
 doPlayerSendTextMessage(cid,22,"You got owned badly CRUEL WORLD!!")	-- messege to player
 doTeleportThing(cid,newplayerpos)
 doTransformItem(item.uid,item.itemid+1)
 doSendMagicEffect(newplayerpos,5)	-- magic effect
 doPlayerAddHealth(cid,-99999999999)		-- how much hp to remove from player, keep at what it is
 doPlayerSay(cid,"Goodbye cruel world!",1)	-- messege by player
 elseif item.uid == 7777 and item.itemid == 1946 then
 doTransformItem(item.uid,item.itemid-1)
 else
doPlayerSendTextMessage(cid,22,"Sorry, not possible.")
end
return 1
end