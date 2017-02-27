function onStepIn(cid, item, pos)
position = getPlayerPosition(cid)
if item.actionid == 1924 then
doSendMagicEffect(position,17)
doCreatureAddHealth(cid,-5195348)
doSendAnimatedText(pos,"The souls of the warriors of Nephalem allow to pass only the strongest warriors to defeat Azurewraith minions",114)
end
end