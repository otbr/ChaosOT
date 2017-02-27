function onUse(cid, item, frompos, item2, topos)
posp = getPlayerPosition(cid)
mozna = getTilePzInfo(posp)
newpos = getPlayerMasterPos(cid)
if mozna == 0 then
npos = {x=frompos.x, y=frompos.y, z=frompos.z}
if item.itemid == 2307 then
if item.actionid == 0 then
doSetItemSpecialDescription(item.uid,"Teleport scroll. Looks like new")
doSetItemActionId(item.uid,200)
doPlayerSay(cid,"Puffff",16)
doSendMagicEffect(topos,1)
doTeleportThing(cid,newpos)
doPlayerSay(cid,"Bzzzzzzt",16)
elseif item.actionid <= 200 then
if item.actionid <= 175 then
if item.actionid <= 150 then
if item.actionid <= 125 then
if item.actionid <= 100 then
doRemoveItem(item.uid,1)
doPlayerSay(cid,"Puffff",16)
doSendMagicEffect(topos,1)
npos.x = 137
npos.y = 41
npos.z = 7
doTeleportThing(cid,newpos)
doPlayerSay(cid,"Bzzzzzzt",16)
else
doSetItemSpecialDescription(item.uid,"Teleport rune. Near out of power.")
doSetItemActionId(item.uid,item.actionid - 1)
doPlayerSay(cid,"Puffff",16)
doSendMagicEffect(topos,1)

doTeleportThing(cid,newpos)
doPlayerSay(cid,"Bzzzzzzt",16)
end
else
doSetItemSpecialDescription(item.uid,"Teleport rune. Less and less power")
doSetItemActionId(item.uid,item.actionid - 1)
doPlayerSay(cid,"Puffff",16)
doSendMagicEffect(topos,1)

doTeleportThing(cid,newpos)
doPlayerSay(cid,"Bzzzzzzt",16)
end
else
doSetItemSpecialDescription(item.uid,"Teleport rune. Little broken.")
doSetItemActionId(item.uid,item.actionid - 1)
doPlayerSay(cid,"Puffff",16)
doSendMagicEffect(topos,1)

doTeleportThing(cid,newpos)
doPlayerSay(cid,"Bzzzzzzt",16)
end
else
doSetItemSpecialDescription(item.uid,"Teleport rune. Looks like new.")
doSetItemActionId(item.uid,item.actionid - 1)
doPlayerSay(cid,"Puffff",16)
doSendMagicEffect(topos,1)

doTeleportThing(cid,newpos)
doPlayerSay(cid,"Bzzzzzzt",16)
end
end



end



else
doPlayerSendCancel(cid,"Not in PZ !!!.")
end
return 1
end