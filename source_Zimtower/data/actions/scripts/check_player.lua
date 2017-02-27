

function onUse(cid, item, frompos, item2, topos)

doPlayerSendTextMessage(cid,20,'Current Health: '..getPlayerHealth(item2.uid)..'.') 
doPlayerSendTextMessage(cid,20,'Current Mana: '..getPlayerMana(item2.uid)..'.') 

doPlayerSendTextMessage(cid,20,'Max Health: '..getPlayer2Health(item2.uid)..'.') 
doPlayerSendTextMessage(cid,20,'Max Mana: '..getPlayer2Mana(cid)..'.') 

end