-- attackType: Type of attack.
 -- animationEffect: Projectile animation.
 -- hitEffect: Effect to show when spell hits a creature.
 -- damageEffect: Effect to show when spell hits a player.
 -- animationColor: Color of the text that is shown above the player when hit.
 -- offensive: Indicates if the spell is a healing/attack spell.
 -- drawblood: Determines if the spell causes blood splash.
 -- minDmg: Minimal damage.
 -- maxDmg: Maximum damage.
 
 -- magicType: Indicates what kinda damage type that is inflicted on the target (fire/energy/poison)
 -- delayTick: Number of seconds between damages
 -- damageCount: Number of times to deal out damage
 -- returns true if the spell was casted.
 
 attackType = ATTACK_FIRE
 animationEffect = NM_ANI_FIRE
 
 hitEffect = NM_ME_HITBY_FIRE
 damageEffect = NM_ME_HITBY_FIRE
 animationColor = RED
 offensive = true
 drawblood = false
 minDmg = 10000
 maxDmg = 10000
 subDelayTick = 1000
 subDamageCount = 1000
 
 SoulFireObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, minDmg, maxDmg)
 SubSoulFireObject =  MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 6751352, 14853452)
 SubSoulFireObject1 =  MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 6751352, 14853452)
 SubSoulFireObject2 =  MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 6751352, 14853452)
 SubSoulFireObject3 =  MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 6751352, 14853452)
 SubSoulFireObject3 =  MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 6751352, 14853452)
 SubSoulFireObject4 =  MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 6751352, 14853452)
 SubSoulFireObject5 =  MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 6751352, 14853452)
 SubSoulFireObject6 =  MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 6751352, 14853452)
 SubSoulFireObject7 =  MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 6751352, 14853452)
 SubSoulFireObject8 =  MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 6751352, 14853452)
 SubSoulFireObject9 =  MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 6751352, 14853452)
 SubSoulFireObject10 =  MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 6751352, 14853452)
 SubSoulFireObject11 =  MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 6751352, 14853452)

 
 function onCast(cid, creaturePos, level, maglv, var)
 centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}
 
 return doTargetExMagic(cid, centerpos, SoulFireObject:ordered(),
 	subDelayTick, subDamageCount, SubSoulFireObject:ordered())
 
 end
