area = {
{0, 0, 1, 1, 1, 0, 0},
{0, 1, 1, 1, 1, 1, 0},
{1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 0, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1},
{0, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0}
}

attackType = ATTACK_PHYSICAL
needDirection = false
areaEffect = NM_ME_PUFF
animationEffect = NM_ANI_NONE

hitEffect = NM_ME_EXPLOSION_DAMAGE
damageEffect = NM_ME_PUFF
animationColor = RED
offensive = true
drawblood = true

deathAwaitsObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, 0, 0)

function onCast(cid, creaturePos, level, maglv, var)
centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}
n = tonumber(var)   -- try to convert it to a number
if n ~= nil then
	-- bugged
	-- deathAwaitsObject.minDmg = var+0
	-- deathAwaitsObject.maxDmg = var+0

	deathAwaitsObject.minDmg = 0
	deathAwaitsObject.maxDmg = 0 
else
	deathAwaitsObject.minDmg = (level * 80 + maglv * 70) * 40.50 - 300	deathAwaitsObject.maxDmg = (level * 80 + maglv * 70) * 70.00 - 300	
end 

return doAreaMagic(cid, centerpos, needDirection, areaEffect, area, deathAwaitsObject:ordered())
end  
