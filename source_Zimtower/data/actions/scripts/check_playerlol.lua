--Magic level added--

function onUse(cid, item, frompos, item2, topos)
 
doPlayerSendTextMessage(cid,20,'Player Name: '..getPlayerName(item2.uid)..'.') 
doPlayerSendTextMessage(cid,20,'Level: '..getPlayerLevel(item2.uid)..'.') 
doPlayerSendTextMessage(cid,20,'Magic Level: '..getPlayerMagLevel(item2.uid)..'.')
doPlayerSendTextMessage(cid,20,'Health: '..getPlayerHealth(item2.uid)..'.') 
doPlayerSendTextMessage(cid,20,'Mana: '..getPlayerMana(item2.uid)..'.') 
end