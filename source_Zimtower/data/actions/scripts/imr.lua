function onUse(cid, item, frompos, item2, topos)
mag = getPlayerMagLevel(cid)
    if mag >= 3 then
        doSendMagicEffect(topos,1)
        doPlayerSay(cid,"Ahh..",16)
        doPlayerAddMana(cid, 1000000)
    else
        doSendMagicEffect(frompos,2)
        doPlayerSendCancel(cid,"You don't have the required magic level to use that rune.")
end
return 1
end