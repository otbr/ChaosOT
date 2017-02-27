-- pvp arena lever

function onUse(cid, item, frompos, item2, topos)

	if item.uid == 7013 and item.itemid == 1945 then
		player1pos = {x=59, y=22, z=4, stackpos=253}
		player1 = getThingfromPos(player1pos)

		player2pos = {x=81, y=24, z=4, stackpos=253}
		player2 = getThingfromPos(player2pos)

		if player1.itemid > 0 and player2.itemid > 0 then
			arenalevel = 25			player1level = getPlayerLevel(player1.uid)
			player2level = getPlayerLevel(player2.uid)

			if player1level >= arenalevel and player2level >= arenalevel then
				for arenax = 57,62 do
					for arenay = 24,25 do
						arenapos = {x=arenax, y=arenay, z=4, stackpos=253}
						arenacreature = getThingfromPos(arenapos)

						if arenacreature.itemid > 0 then
							doPlayerSendCancel(cid,"A player is allready in your area.")							return 1
						end
					end
				end

				nplayer1pos = {x=59, y=22, z=4}
				nplayer2pos = {x=59, y=25, z=4}

				doSendMagicEffect(player1pos,2)
				doSendMagicEffect(player2pos,2)

				doTeleportThing(player1.uid,nplayer1pos)
				doTeleportThing(player2.uid,nplayer2pos)

				doSendMagicEffect(nplayer1pos,10)
				doSendMagicEffect(nplayer2pos,10)				doPlayerSendTextMessage(player1.uid,18,"A New Customer")				doPlayerSendTextMessage(player2.uid,18,"Welcome to the gm shop!")
			else				doPlayerSendCancel(cid,"No player in line")
			end
		else
			doPlayerSendCancel(cid,"No player in line")
		end
	else
		return 0
   	end

	return 1
end
