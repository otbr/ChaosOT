function onUse(cid, item, frompos, item2, topos)
	if exhaust(cid,10002,1) > 0 then
		if ((item2.itemid >= 4608 and item2.itemid <= 4625) or (item2.itemid >= 4664 and item2.itemid <= 4666) or (item2.itemid >= 4820 and item2.itemid <= 4825)) then
			if (doPlayerRemoveItem(cid, 3976, 1) == 1) then
				formula = (getPlayerSkill(cid, 6) / 200 + 0.85* math.random())
				if formula > 0.70 then
					doTransformItem(item2.uid,4610)
					doDecayItem(item2.uid)
					doSendMagicEffect(topos,1)
					doPlayerAddSkillTry(cid,6,2)
					doPlayerAddItem(cid,2667,1)
				else
					doSendMagicEffect(topos,1)
					doPlayerAddSkillTry(cid,6,1)
				end
			else
				doSendMagicEffect(topos,1)
			end
		end
	else
		return 1
	end
	return 1
end