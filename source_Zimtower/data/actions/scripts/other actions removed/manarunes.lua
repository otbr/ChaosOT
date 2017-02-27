function onUse(cid, item, frompos, item2, topos)
if item.itemid == 2297 then

  	doPlayerAddMana(cid,1000)

     elseif item.itemid == 2298 then

  	doPlayerAddMana(cid,10000)

     elseif item.itemid == 2299 then

  	doPlayerAddMana(cid,100000)


end
  	doSendMagicEffect(topos,12)
	doPlayerSay(cid,"Aaaaah... thats the stuff",1)
  	doRemoveItem(item.uid,1)
end
