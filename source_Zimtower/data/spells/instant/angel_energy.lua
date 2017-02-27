area = {
 {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
 {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
 {0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0},
 {0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0},
 {0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0},
 {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
 {0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
 {0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0},
 {0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0},
 {0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0},
 {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
 }
 
 attackType = ATTACK_ENERGY
 needDirection = false
 areaEffect = NM_ME_ENERGY_AREA
 animationEffect = NM_ANI_NONE
 
 hitEffect = NM_ME_EXPLOSION_DAMAGE
 damageEffect = NM_ME_ENERGY_DAMAGE
 animationColor = RED
 offensive = true
 drawblood = false
 
 GreatFireballObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, 0, 0)
 
 function onCast(cid, creaturePos, level, maglv, var)
 centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}
 
 GreatFireballObject.minDmg = (level * 2 + maglv *3) * 1.00
 GreatFireballObject.maxDmg = (level * 2 + maglv *3) * 1.80
 
 return doAreaMagic(cid, centerpos, needDirection, areaEffect, area, GreatFireballObject:ordered())
 end
