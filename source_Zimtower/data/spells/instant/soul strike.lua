attackType = ATTACK_NONE
    animationEffect = NM_ANI_NONE
    
    hitEffect = NM_ME_NONE
    damageEffect = NM_ME_MAGIC_ENERGIE
    animationColor = GREEN
    offensive = true
    drawblood = true
    
    HealFriendObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, 0, 0)
    
    function onCast(cid, creaturePos, level, maglv, var)
    centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z} targetpos = getPosition(var)
    HealFriendObject.minDmg = (level * -3 + maglv * -1) * -5
    HealFriendObject.maxDmg = (level * -3 + maglv * -1) * -5 + -20
    
    if targetpos.x ~= nil and targetpos.z ~= nil and targetpos.y ~= nil then
    	if math.abs(targetpos.x - centerpos.x) < 18 and math.abs(targetpos.y - centerpos.y) < 14 and targetpos.z == centerpos.z then
    		return doTargetMagic(cid, targetpos, HealFriendObject:ordered())
    	end
    end
    
    return false
    end  
    
