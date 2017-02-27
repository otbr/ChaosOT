area = {
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
    {0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
    {0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0},
    {0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 0},
    {0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0},
    {0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 0},
    {0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0},
    {0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
    {0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    }

attackType = ATTACK_PHYSICAL
needDirection = false
areaEffect = NM_ME_LOOSE_ENERGY
animationEffect = NM_ANI_NONE

hitEffect = NM_ME_LOOSE_ENERGY
damageEffect = NM_ME_LOOSE_ENERGY
animationColor = RED
offensive = true
drawblood = false

BubbleWaveObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, 0, 0)

function onCast(cid, creaturePos, level, maglv, var)
centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}
BubbleWaveObject.minDmg = 8000
BubbleWaveObject.maxDmg = 13000

return doAreaMagic(cid, centerpos, needDirection, areaEffect, area, BubbleWaveObject:ordered())
end  

