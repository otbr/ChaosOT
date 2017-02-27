area = {
 {1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 1},
 {0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
 {0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
 {0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
 {0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
 {1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1},
 {0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
 {0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
 {0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
 {0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
 {1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 1}
 }
 
 attackType = ATTACK_POISON
 needDirection = false
 areaEffect = NM_ME_POISEN_RINGS
 animationEffect = NM_ANI_NONE
 
 hitEffect = NM_ME_POISEN
 damageEffect = NM_ME_POISEN_RINGS
 animationColor = GREEN
 offensive = true
 needDirection = false
 drawblood = false
 minDmg = 20
 maxDmg = 20
 
 PoisonStormObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, minDmg, maxDmg)
 SubPoisonStormObject1 = MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 15000, 15000)
 SubPoisonStormObject2 = MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 10000, 10000)
 SubPoisonStormObject3 = MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 5000, 5000)
 
 function onCast(cid, creaturePos, level, maglv, var)
 	centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}	PoisonStormObject.minDmg = (level * 5 + maglv * 5) * 4.5 - 30
 	PoisonStormObject.maxDmg = (level * 5 + maglv * 5) * 4
 
 	return doAreaExMagic(cid, centerpos, needDirection, areaEffect, area, PoisonStormObject:ordered(),
 		2000, 1, SubPoisonStormObject1:ordered(),
 		2000, 2, SubPoisonStormObject2:ordered(),
 		2000, 10, SubPoisonStormObject3:ordered(),
 		3)
 end
 
