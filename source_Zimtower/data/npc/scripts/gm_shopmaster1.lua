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
 
  	if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
  		selfSay('Hiho ' .. creatureGetName(cid) .. '! Welcome to the gm shop, here you can buy more hp, mana, or change your outfit.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

  	if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
  		selfSay('Hiho ' .. creatureGetName(cid) .. '! Welcome to the gm shop, here you can buy more hp, mana, or change your outfit.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

	if msgcontains(msg, 'health') or msgcontains(msg, 'hp') then
		if pay(cid,10000000) then
			selfSay('/health ' .. creatureGetName(cid) .. '')
		end
	elseif msgcontains(msg, 'mana') then
		if pay(cid,10000000) then
			selfSay('/mana ' .. creatureGetName(cid) .. '')
		end

		elseif msgcontains(msg, '1') then
			monsterName = 'orc warlord'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

		elseif msgcontains(msg, '2') then
			monsterName = 'war wolf'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
			end

		elseif msgcontains(msg, '3') then
			monsterName = 'orc raider'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

		elseif msgcontains(msg, '4') then
			monsterName = 'orc'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

		elseif msgcontains(msg, '5') then
			monsterName = 'orc shaman'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '6') then
	        monsterName = 'orc warrior'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '7') then
	        monsterName = 'orc berserker'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '8') then
	        monsterName = 'necromancer'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, 'novayellow') then
	        monsterName = 'yellow'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '9') then
	        monsterName = 'black sheep'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '10') then
	        monsterName = 'sheep'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '11') then
	        monsterName = 'troll'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '12') then
	        monsterName = 'bear'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '13') then
	        monsterName = 'beholder'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '14') then
	        monsterName = 'ghoul'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '15') then
	        monsterName = 'slime'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '16') then
	        monsterName = 'rat'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '17') then
	        monsterName = 'cyclops'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '18') then
	        monsterName = 'minotaur mage'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '19') then
	        monsterName = 'minotaur archer'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '20') then
	        monsterName = 'minotaur'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '21') then
	        monsterName ='rotworm'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '22') then
	        monsterName = 'wolf'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '23') then
	        monsterName = 'snake'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '24') then
	        monsterName ='minotaur guard'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '25') then
	        monsterName = 'spider'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '26') then
	        monsterName = 'deer'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '27') then
	        monsterName = 'dog'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '28') then
	        monsterName = 'skeleton'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '29') then
	        monsterName = 'dragon'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '30') or msgcontains(msg, 'orshabaal') then
			monsterName = 'demon';
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '31') then
	        monsterName = 'poison spider'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '32') then
	        monsterName = 'demon skeleton'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '33') then
	        monsterName = 'giant spider'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '34') then
	        monsterName = 'dragon lord'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '35') then
	        monsterName = 'fire devil'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '36') then
	        monsterName = 'lion'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '37') then
		    monsterName = 'polar bear'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '38') then
	        monsterName = 'scorpion'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, 'wasp') then  
	        monsterName = 'wasp'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '39') then
	        monsterName = 'bug'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '40') then
	        monsterName = 'ghost'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '41') then
	        monsterName = 'fire elemental'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '42') then
	        monsterName = 'orc spearman'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '43') then
	        monsterName = 'green djinn'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '44') then
	        monsterName = 'winter wolf'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '45') then
	        monsterName = 'frost troll'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '46') then
	        monsterName = 'witch'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '47') then
	        monsterName = 'behemoth'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '48') then
	        monsterName = 'cave rat'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '49') then
	        monsterName = 'monk'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '50') then
	        monsterName = 'priestess'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '51') then
	        monsterName = 'orc leader'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '52') then
	        monsterName = 'pig'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '53') then
	        monsterName = 'goblin'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '54') then
	        monsterName = 'elf'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '55') then
	        monsterName = 'elf arcanist'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '56') then
	        monsterName = 'elf scout'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '57') then
	        monsterName = 'mummy'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '58') then
	        monsterName = 'dwarf geomancer'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '59') then
	        monsterName = 'stone golem'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '60') then
	        monsterName = 'vampire'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '61') then 
	        monsterName = 'dwarf'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '62') then
	        monsterName = 'dwarf guard'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '63') then
	        monsterName = 'dwarf soldier'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '64') then
	        monsterName = 'hero'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '65') then
	        monsterName = 'rabbit'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '66') then
	        monsterName = 'swamp troll'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '67') then
	        monsterName = 'banshee'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '68') then
	        monsterName = 'ancient scarab'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '69') then  
	        monsterName = 'blue djinn'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '70') then
	        monsterName = 'cobra'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '71') then
	        monsterName = 'larva'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '72') then
	        monsterName = 'scarab'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '73') then
	        monsterName = 'mimic'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '74') then
	        monsterName = 'hyena'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '75') then 
	        monsterName = 'gargoyle'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '76') then
	        monsterName = 'lich'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '77') then
	        monsterName = 'crypt shambler'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '78') then
	        monsterName = 'bone beast'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '79') then
	        monsterName = 'deathslicer'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '80') then
	        monsterName = 'efreet'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '81') then
	        monsterName = 'marid'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '82') then
	        monsterName = 'badger'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '83') then
	        monsterName = 'skunk'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '84') then
	        monsterName = 'elder beholder'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '85') then
	        monsterName = 'gazer'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '86') then
	        monsterName = 'yeti'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '87') then
	        monsterName = 'chicken'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '88') then
	        monsterName = 'crab'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '89') then
	        monsterName = 'lizard templar'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '90') then
	        monsterName = 'lizard sentinel'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '91') then
	        monsterName = 'lizard snake charmer'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '92') then
	        monsterName = 'kongra'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '93') then
	        monsterName = 'merklin'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '94') then
	        monsterName = 'sibang'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '95') then
	        monsterName = 'crocodile'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '96') then
	        monsterName = 'carniphila'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '97') then
	        monsterName = 'hydra'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '98') then
	        monsterName = 'bat'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '99') then
	        monsterName = 'panda'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '100') then
	        monsterName = 'centipede'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '101') then
	        monsterName = 'tiger'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '102') then
	        monsterName = 'elephant'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '103') then
	        monsterName = 'flamingo'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '104') then
	        monsterName = 'dworc voodoomaster'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '105') then
	        monsterName = 'dworc fleshhunter'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '106') then
	        monsterName = 'dwarc venomsniper'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '107') then
	        monsterName = 'parrot'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '108') then
	        monsterName = 'terror bird'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '109') then 
	        monsterName = 'tarantula'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '110') then
	        monsterName = 'serpent spawn'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '')
		end

	    elseif msgcontains(msg, '111') then
	        monsterName = 'spit nettle'
		if pay(cid,40000000) then
			selfSay('/outfit ' .. creatureGetName(cid) .. ', ' .. monsterName .. '') 
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