-- Jail rune by Colandus.

function onUse(cid, item, frompos, item2, topos)

JailPosX = 192 -- Enter position X of the jail.
JailPosY = 40 -- Enter position Y of the jail.
JailPosZ = 6 -- Enter position Z of the jail.

if getThingfromPos({x=topos.x, y=topos.y, z=topos.z, stackpos=253}).uid > 0 then
if getPlayerAccess(cid) >= 3 then
if (topos.x ~= getPlayerPosition(cid).x or topos.y ~= getPlayerPosition(cid).y or topos.z ~= getPlayerPosition(cid).z) then
doPlayerSendTextMessage(getThingfromPos({x=topos.x, y=topos.y, z=topos.z, stackpos=253}).uid,18,"You got jailed by " .. getPlayerName(cid) .. ".")
doPlayerSendTextMessage(cid, 17, "You jailed " .. getPlayerName(item2.uid) .. ".")
doPlayerSay(getThingfromPos({x=topos.x, y=topos.y, z=topos.z, stackpos=253}).uid, "Jailed ",16)
jailstatus = getPlayerStorageValue(item2.uid, 9354)
if jailstatus == -1 then
doPlayerSendTextMessage(cid,19,"" .. getPlayerName(item2.uid) .. " has never been jailed before.")
newjailstatus = getPlayerStorageValue(item2.uid, 9354) + 3
setPlayerStorageValue(item2.uid, 9354, newjailstatus)
else
doPlayerSendTextMessage(cid,19,"" .. getPlayerName(item2.uid) .. " has been jailed " .. getPlayerStorageValue(item2.uid, 9354) .. " times.")
newjailstatus = getPlayerStorageValue(item2.uid, 9354) + 1
setPlayerStorageValue(item2.uid, 9354, newjailstatus)
end
doTeleportThing(getThingfromPos({x=topos.x, y=topos.y, z=topos.z, stackpos=253}).uid, {x=JailPosX, y=JailPosY, z=JailPosZ})
doSendMagicEffect(topos, 2)
doSendMagicEffect({x=JailPosX, y=JailPosY, z=JailPosZ}, 10) 		    
else
doPlayerSendTextMessage(cid, 17, "You jailed yourself.")
doPlayerSay(getThingfromPos({x=topos.x, y=topos.y, z=topos.z, stackpos=253}).uid,"Jailed!",16)
doTeleportThing(getThingfromPos({x=topos.x, y=topos.y, z=topos.z, stackpos=253}).uid, {x=JailPosX, y=JailPosY, z=JailPosZ})
doSendMagicEffect(topos, 2)
doSendMagicEffect({x=JailPosX, y=JailPosY, z=JailPosZ}, 10)
end
else
doSendMagicEffect(getPlayerPosition(cid), 2)
doPlayerSendCancel(cid, "You cannot use this rune.")
end
else
doSendMagicEffect(getPlayerPosition(cid), 2)
doPlayerSendCancel(cid, "You can only use this rune on players.")
end
return 1
end