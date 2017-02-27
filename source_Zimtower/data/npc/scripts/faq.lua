-- the id of the creature we are attacking, following, etc.

 
 focus = 0
 talk_start = 0
 target = 0
 following = false
 attacking = false
 
 function onThingMove(creature, thing, oldpos, oldstackpos)
 
 end
 
 
 function onCreatureAppear(creature)
 
 end
 
 
 function onCreatureDisappear(cid, pos)
 	if focus == cid then
         selfSay('Good bye then.')
         focus = 0
         talk_start = 0
 	end
 end
 
 
 function onCreatureTurn(creature)
 
 end

function msgcontains(txt, str)
 	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
 end
 
 
 function onCreatureSay(cid, type, msg)
 	msg = string.lower(msg)
 
 	if ((string.find(msg, '(%a*)hi(%a*)')) and (focus == 0)) and getDistanceToCreature(cid) < 3 then
 		selfSay('Hello ' .. creatureGetName(cid) .. '! Welcome to the Chaos server, do you need some help? (For more options say "help")')
 		focus = cid
 		talk_start = os.clock()
 	end

	if string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 3 then
 		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')
 	end
if msgcontains(msg, 'runes') and focus == cid then
  		selfSay('You can buy runes from Frodo.')
  		talk_start = os.clock()
  	end

 	if msgcontains(msg, 'frodo') and focus == cid then
  		selfSay('Frodo sells runes, he is on the second floor of the building just west of here.')
  		talk_start = os.clock()
  	end

  	if msgcontains(msg, 'heal') and focus == cid then
  		selfSay('exura sio "' .. creatureGetName(cid) .. '')
  		talk_start = os.clock()
  	end

  	if msgcontains(msg, 'spells') and focus == cid then
  		selfSay('You can find a list of all the spells on the chaos website.')
  		talk_start = os.clock()
  	end



  	if msgcontains(msg, 'website') and focus == cid then
  		selfSay('The chaos website is http://otschaospage.no-ip.info/')
  		talk_start = os.clock()
  	end


  	if msgcontains(msg, 'gmshop') and focus == cid then
  		selfSay('The gm shop opens when ever the admins decide, asking leads to very bad things.')
  		talk_start = os.clock()
  	end


  	if msgcontains(msg, 'crafting') and focus == cid then
  		selfSay('To craft stuff you must first mine crafting ores, after that take the ores to a nearby crafting station.')
 
  		talk_start = os.clock()
  	end

  	if msgcontains(msg, 'crafting station') and focus == cid then
  		selfSay('The closest crafting station is on teh second floor of the building south of here, put your ore on the stone and pull the lever.')
  		talk_start = os.clock()
  	end


  	if msgcontains(msg, 'mad') and focus == cid then
  		selfSay('Mad buys all loot, to sell stuff to him just say the "Mad Number" found on the item you wish to sell.')
  		talk_start = os.clock()
  	end
  

  	if msgcontains(msg, 'donation') and focus == cid then
  		selfSay('If you enjoy the Chaos server you can donate money by paypal for more information visit the chaos website.')
  		talk_start = os.clock()
  	end
  	


  	if msgcontains(msg, 'donate') and focus == cid then
  		selfSay('If you enjoy the Chaos server you can donate money by paypal for more information visit the chaos website.')
  		talk_start = os.clock()
  	end
  	

  	if msgcontains(msg, 'admin') and focus == cid then
  		selfSay('Admins and gms are very busy people who do not have time to answer minor questions, please contact a counsellor before contacting a gm/admin.')

  		talk_start = os.clock()
  	end  	


  	if msgcontains(msg, 'gm') and focus == cid then
  		selfSay('Admins and gms are very busy people who do not have time to answer minor questions, please contact a counsellor before contacting a gm/admin.')
  		talk_start = os.clock()
  	end
  	


  	if msgcontains(msg, 'mining') and focus == cid then
  		selfSay('To mine you must first buy a pick and have at least 20 clubbing and level 20, then head east of the depot to the mine.')
 
  		talk_start = os.clock()
  	end  	



  	if msgcontains(msg, 'pick') and focus == cid then
  		selfSay('Picks are bought from the seller southwest of here, be warned they do have a chance of breaking.')
  		talk_start = os.clock()
  	end
  	
  	if msgcontains(msg, 'prayers') and focus == cid then
  		selfSay('Prayers heal a small bit over a period of time.')
  		talk_start = os.clock()
  	end
  	


  	if msgcontains(msg, 'prayer') and focus == cid then
  		selfSay('Prayers heal a small bit over a period of time.')

  		talk_start = os.clock()
  	end  	

  	if msgcontains(msg, 'train') and focus == cid then
  		selfSay('There is a portal to training chickens west of here, afk train at your own risk!.')
  		talk_start = os.clock()
  	end
  	

  	if msgcontains(msg, 'training') and focus == cid then
  		selfSay('There is a portal to training chickens west of here, afk train at your own risk!.')
  	

  		talk_start = os.clock()
  	end

  	if msgcontains(msg, 'level') and focus == cid then
  		selfSay('There is a portal west of here to a low level hunting area.')

  		talk_start = os.clock()
  	end
  	if msgcontains(msg, 'hunt') and focus == cid then
  		selfSay('There is a portal west of here to a low level hunting area.')
  		talk_start = os.clock()
  	end
  	

  	if msgcontains(msg, 'monsters') and focus == cid then
  		selfSay('There are many custom monsters on chaos server be careful!')

  		talk_start = os.clock()
  	end  	

  	if msgcontains(msg, 'bosses') and focus == cid then
  		selfSay('Most boss monsters on Chaos is ment for high levels! (1000+)')

  		talk_start = os.clock()
  	end  	

  	if msgcontains(msg, 'items') and focus == cid then
  		selfSay('There are tons of custom items on the chaos server.')

  	
  		talk_start = os.clock()
  	end 

  	if msgcontains(msg, 'help') and focus == cid then
  		selfSay('I can help you in many catagories like, low leveling places to hunt, monsters, bosses, items, training, prayers, mining, crafting...more.')

  	
  		talk_start = os.clock()
  	end
 	if msgcontains(msg, 'houses') and focus == cid then
  		selfSay('To buy a house, just say !buyhouse infront of the door of the house.')

  		talk_start = os.clock()
  	end
 	if msgcontains(msg, 'house commands') and focus == cid then
  		selfSay('aleta sio = invite, aleta som = co-owner, aleta gom = transfer house to another player.')

  	
  		talk_start = os.clock()
  	end
 	if msgcontains(msg, 'aol') and focus == cid then
  		selfSay('You can buy AoLs from Dufi under the depot south of here.')

  		talk_start = os.clock()
  	end  	

  	if msgcontains(msg, 'more') and focus == cid then
  		selfSay('admins, donation, spells, runes, gmshop, healing, houses, house commands, aol, and the Chaos website.')

  		talk_start = os.clock()
  	end

  	elseif string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 3 then
  		selfSay('Good bye, ' .. creatureGetName(cid) .. '!')
  		focus = 0
  		talk_start = 0
  	end  	
 end
 
 
 function onCreatureChangeOutfit(creature)
 
 end
 
 
 function onThink()
 	if (os.clock() - talk_start) > 30 then
 		if focus > 0 then
 			selfSay('Next Please...')
 		end
 			focus = 0
 	end
 end