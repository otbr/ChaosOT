attackType = ATTACK_NONE
 animationEffect = NM_ANI_NONE
 
 hitEffect = NM_ME_NONE
 damageEffect = NM_ME_MAGIC_ENERGIE
 animationColor = GREEN
 offensive = false
 drawblood = false
 
 UltimateHealingObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, 0, 0)
 
 function onCast(cid, creaturePos, level, maglv, var)
 	centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}
    -- n = tonumber(var)   -- try to convert it to a number
    	-- if n ~= nil then
    		-- bugged
    		-- UltimateHealingObject.minDmg = var+0
    		-- UltimateHealingObject.maxDmg = var+0
    		-- UltimateHealingObject.minDmg = 0
    		-- UltimateHealingObject.maxDmg = 0
    	-- else
    		--UltimateHealingObject.minDmg = (level * 35 + maglv * 15) * 15
    		--UltimateHealingObject.maxDmg = (level * 35 + maglv * 15) * 15.8
 
 if UltimateHealingObject.minDmg < 250 then
 	UltimateHealingObject.minDmg = 250
 end
 
 UltimateHealingObject.maxDmg = (level * 15 + maglv * 35) * 15
 if UltimateHealingObject.maxDmg < 250 then
 	UltimateHealingObject.maxDmg = 250
 end
    	-- end
 
 return doTargetMagic(cid, centerpos, UltimateHealingObject:ordered())
 end