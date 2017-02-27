function onUse(cid, item, frompos, item2, topos)
	npos = {x=frompos.x, y=frompos.y, z=frompos.z}
	if item.itemid == 2677 then
 npos.y = npos.y == 50
 npos.z = npos.z == 50
 doTeleportThing(cid,npos)
	else
 npos.z = npos.z + 1
 doTeleportThing(cid,npos)
	end
	
	return 1
end