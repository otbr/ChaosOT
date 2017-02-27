function onUse(cid, item, frompos, item2, topos)
	if item2.itemid == 2739  then
		doTransformItem(item2.uid, item2.itemid-2)
	elseif item2.itemid == 2782 then
		doTranformItem(item2.uid, item2.itemid-1)
		return 0
	end
	doDecayItem(item2.uid)

	return 1
end