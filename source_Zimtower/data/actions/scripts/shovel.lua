function onUse(cid, item, frompos, item2, topos)
	if (item2.itemid == 293 or item2.itemid == 468 or item2.itemid == 481 or item2.itemid == 483) then
		doTransformItem(item2.uid,item2.itemid + 1)
	else
		return 0
	end
	doDecayItem(item2.uid)

	return 1
end