function onWalkIn(cid, item, topos)

rand = math.random(1500, 10000)
doTransformItem(item.uid,item.itemid+1)
doPlayerSendTextMessage(cid,20,'You lose ' .. rand .. ' hitpoints in the trap.')
doSendMagicEffect(topos,0)
doSendAnimatedText(topos,rand,180)
doPlayerAddHealth(cid,- rand )

end