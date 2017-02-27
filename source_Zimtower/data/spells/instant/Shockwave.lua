area = {
 {0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
 {0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
 {0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
 {0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
 {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
 {1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1},
 {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
 {0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
 {0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
 {0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
 {0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
 }
 
 attackType = ATTACK_PHYSICAL
 needDirection = false
 areaEffect = NM_ME_LOOSE_ENERGY
 animationEffect = NM_ANI_NONE
 
 hitEffect = NM_ME_ENERGY_AREA
 damageEffect = NM_ME_ENERGY_DAMAGE
 animationColor = GREEN
 offensive = true
 drawblood = true
 
 UltimateExplosionObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, 0, 0)
 
 function onCast(cid, creaturePos, level, maglv, var)
 centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}
 n = tonumber(var)   -- try to convert it to a number
 if n ~= nil then
 	-- bugged
 	-- ultimateExplosionObject.minDmg = var+0
 	-- UltimateExplosionObject.maxDmg = var+0
 
 	UltimateExplosionObject.minDmg = 500
 	UltimateExplosionObject.maxDmg = 4500
 else
 	UltimateExplosionObject.minDmg = (level * 4 + maglv * 5) * 5.0
 	UltimateExplosionObject.maxDmg = (level * 6 + maglv * 5) * 8.5
 end 
 
 return doAreaMagic(cid, centerpos, needDirection, areaEffect, area, UltimateExplosionObject:ordered())
 end  

