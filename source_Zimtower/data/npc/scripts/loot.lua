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
  		selfSay('Hello ' .. creatureGetName(cid) .. '! I buy lots of things. Check the item for the Mad ID: then just say the number!')
  		focus = cid
  		talk_start = os.clock()

	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')  	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'vnsdfsfamngdfdplsdfd') then
  			sell(cid,8,1,20000)
  		elseif msgcontains(msg, '1') then
  			sell(cid,2383,1,10000)
  		elseif msgcontains(msg, '2') then
  			sell(cid,2390,1,100000)
  		elseif msgcontains(msg, '3') then
  			sell(cid,2391,1,5000)
  		elseif msgcontains(msg, '4') then
  			sell(cid,2392,1,10000)
  		elseif msgcontains(msg, '5') then
  			sell(cid,2393,1,30000)
  		elseif msgcontains(msg, '6') then
  			sell(cid,2396,1,3000)
  		elseif msgcontains(msg, '7') then
  			sell(cid,2400,1,80000)
  		elseif msgcontains(msg, '8') then
  			sell(cid,2407,1,20000)
  		elseif msgcontains(msg, '9') then
  			sell(cid,2409,1,20000)
  		elseif msgcontains(msg, '10') then
  			sell(cid,2414,1,10000)
		elseif msgcontains(msg, '11') then
  			sell(cid,2415,1,100000)
  		elseif msgcontains(msg, '12') then
  			sell(cid,2418,1,10000)
  		elseif msgcontains(msg, '13') then
  			sell(cid,2421,1,80000)
  		elseif msgcontains(msg, '14') then
  			sell(cid,2427,1,10000)
  		elseif msgcontains(msg, '15') then
  			sell(cid,2430,1,50000)
  		elseif msgcontains(msg, '16') then
  			sell(cid,2431,1,100000)
  		elseif msgcontains(msg, '17') then
  			sell(cid,2432,1,10000)
  		elseif msgcontains(msg, '18') then
  			sell(cid,2434,1,10000)
  		elseif msgcontains(msg, '19') then
  			sell(cid,2436,1,10000)
  		elseif msgcontains(msg, '20') then
  			sell(cid,2437,1,60000)
		elseif msgcontains(msg, '21') then
  			sell(cid,2438,1,20000)
  		elseif msgcontains(msg, '22') then
  			sell(cid,2445,1,10000)
  		elseif msgcontains(msg, '23') then
  			sell(cid,2451,1,10000)
  		elseif msgcontains(msg, '24') then
  			sell(cid,2514,1,50000)
  		elseif msgcontains(msg, '25') then
  			sell(cid,2515,1,10000)
  		elseif msgcontains(msg, '26') then
  			sell(cid,2516,1,10000)
  		elseif msgcontains(msg, '27') then
  			sell(cid,2518,1,5000)
  		elseif msgcontains(msg, '28') then
  			sell(cid,2519,1,15000)
  		elseif msgcontains(msg, '29') then
  			sell(cid,2520,1,30000)
  		elseif msgcontains(msg, '30') then
  			sell(cid,2528,1,20000)
		elseif msgcontains(msg, '31') then
  			sell(cid,2532,1,5000)
  		elseif msgcontains(msg, '32') then
  			sell(cid,2534,1,20000)
  		elseif msgcontains(msg, '33') then
  			sell(cid,2536,1,20000)
  		elseif msgcontains(msg, '34') then
  			sell(cid,2537,1,20000)
  		elseif msgcontains(msg, '35') then
  			sell(cid,2539,1,30000)
  		elseif msgcontains(msg, '36') then
  			sell(cid,2540,1,10000)
  		elseif msgcontains(msg, '37') then
  			sell(cid,2542,1,50000)
  		elseif msgcontains(msg, '38') then
  			sell(cid,2123,1,30000)
  		elseif msgcontains(msg, '39') then
  			sell(cid,2124,1,10000)
  		elseif msgcontains(msg, '40') then
  			sell(cid,2125,1,10000)
		elseif msgcontains(msg, '41') then
  			sell(cid,2127,1,10000)
  		elseif msgcontains(msg, '42') then
  			sell(cid,2130,1,20000)
  		elseif msgcontains(msg, '43') then
  			sell(cid,2131,1,20000)
  		elseif msgcontains(msg, '44') then
  			sell(cid,2133,1,10000)
  		elseif msgcontains(msg, '45') then
  			sell(cid,2135,1,10000)
  		elseif msgcontains(msg, '46') then
  			sell(cid,2138,1,20000)
  		elseif msgcontains(msg, '47') then
  			sell(cid,2142,1,20000)
  		elseif msgcontains(msg, '48') then
  			sell(cid,2161,1,10000)
  		elseif msgcontains(msg, '49') then
  			sell(cid,2179,1,20000)
  		elseif msgcontains(msg, '51') then
  			sell(cid,2319,1,10000)
  		elseif msgcontains(msg, '52') then
  			sell(cid,2342,1,20000)
  		elseif msgcontains(msg, '53') then
  			sell(cid,2343,1,30000)
  		elseif msgcontains(msg, '54') then
  			sell(cid,2357,1,30000)
  		elseif msgcontains(msg, '55') then
  			sell(cid,2358,1,20000)
  		elseif msgcontains(msg, '56') then
  			sell(cid,2457,1,1000)
  		elseif msgcontains(msg, '57') then
  			sell(cid,2462,1,10000)
  		elseif msgcontains(msg, '58') then
  			sell(cid,2463,1,10000)
  		elseif msgcontains(msg, '59') then
  			sell(cid,2472,1,50000)
  		elseif msgcontains(msg, '60') then
  			sell(cid,2475,1,10000)
		elseif msgcontains(msg, '61') then
  			sell(cid,2476,1,10000)
  		elseif msgcontains(msg, '62') then
  			sell(cid,2477,1,10000)
  		elseif msgcontains(msg, '63') then
  			sell(cid,2479,1,10000)
  		elseif msgcontains(msg, '64') then
  			sell(cid,2486,1,10000)
  		elseif msgcontains(msg, '65') then
  			sell(cid,2487,1,20000)
  		elseif msgcontains(msg, '66') then
  			sell(cid,2488,1,20000)
  		elseif msgcontains(msg, '67') then
  			sell(cid,2489,1,10000)
  		elseif msgcontains(msg, '68') then
  			sell(cid,2490,1,10000)
  		elseif msgcontains(msg, '69') then
  			sell(cid,2491,1,10000)
  		elseif msgcontains(msg, '70') then
  			sell(cid,2492,1,30000)
		elseif msgcontains(msg, '71') then
  			sell(cid,2493,1,20000)
  		elseif msgcontains(msg, '72') then
  			sell(cid,2494,1,20000)
  		elseif msgcontains(msg, '73') then
  			sell(cid,2495,1,20000)
  		elseif msgcontains(msg, '74') then
  			sell(cid,2496,1,30000)
  		elseif msgcontains(msg, '75') then
  			sell(cid,2497,1,10000)
  		elseif msgcontains(msg, '76') then
  			sell(cid,2498,1,20000)
  		elseif msgcontains(msg, '78') then
  			sell(cid,2642,1,10000)
  		elseif msgcontains(msg, '79') then
  			sell(cid,2644,1,10000)
  		elseif msgcontains(msg, '80') then
  			sell(cid,2645,1,10000)
		elseif msgcontains(msg, '81') then
  			sell(cid,2647,1,10000)
  		elseif msgcontains(msg, '83') then
  			sell(cid,2660,1,50000)
  		elseif msgcontains(msg, '84') then
  			sell(cid,2662,1,10000)
  		
  		elseif msgcontains(msg, '86') then
  			sell(cid,2664,1,10000)
  		elseif msgcontains(msg, '87') then
  			sell(cid,2665,1,10000)
  		elseif msgcontains(msg, '88') then
  			sell(cid,3967,1,10000)
  		elseif msgcontains(msg, '89') then
  			sell(cid,3968,1,10000)
  		elseif msgcontains(msg, '90') then
  			sell(cid,3969,1,10000)
		elseif msgcontains(msg, '91') then
  			sell(cid,3970,1,2000)
  		elseif msgcontains(msg, '92') then
  			sell(cid,3971,1,10000)
  		elseif msgcontains(msg, '93') then
  			sell(cid,3972,1,10000)
  		elseif msgcontains(msg, '94') then
  			sell(cid,2171,1,10000)
  		elseif msgcontains(msg, '95') then
  			sell(cid,2507,1,10000)
  		elseif msgcontains(msg, '96') then
  			sell(cid,2499,1,10000)
  		elseif msgcontains(msg, '97') then
  			sell(cid,2500,1,10000)
 

		elseif msgcontains(msg, '201') then
  			sell(cid,3963,1,200000)
		elseif msgcontains(msg, '202') then
  			sell(cid,2446,1,400000)
		elseif msgcontains(msg, '203') then
  			sell(cid,2408,1,600000)
		elseif msgcontains(msg, '204') then
  			sell(cid,3964,1,200000)
		elseif msgcontains(msg, '205') then
  			sell(cid,3962,1,400000)
		elseif msgcontains(msg, '206') then
  			sell(cid,2443,1,600000)
		elseif msgcontains(msg, '207') then
  			sell(cid,2424,1,200000)
		elseif msgcontains(msg, '208') then
  			sell(cid,2452,1,400000)
		elseif msgcontains(msg, '209') then
  			sell(cid,2444,1,600000)
		elseif msgcontains(msg, '210') then
  			sell(cid,2502,1,200000)
		elseif msgcontains(msg, '696') then
  			sell(cid,2194,1,100000000)
		elseif msgcontains(msg, '211') then
  			sell(cid,2503,1,200000)
		elseif msgcontains(msg, '212') then
  			sell(cid,2504,1,200000)
		elseif msgcontains(msg, '213') then
  			sell(cid,2641,1,200000)
		elseif msgcontains(msg, '214') then
  			sell(cid,2517,1,200000)
		elseif msgcontains(msg, '215') then
  			sell(cid,2471,1,400000)
		elseif msgcontains(msg, '216') then
  			sell(cid,2466,1,400000)
		elseif msgcontains(msg, '217') then
  			sell(cid,2470,1,400000)
		elseif msgcontains(msg, '218') then
  			sell(cid,2646,1,400000)
		elseif msgcontains(msg, '219') then
  			sell(cid,2523,1,400000)
		elseif msgcontains(msg, '220') then
  			sell(cid,2506,1,600000)
		elseif msgcontains(msg, '221') then
  			sell(cid,2505,1,600000)
		elseif msgcontains(msg, '222') then
  			sell(cid,2469,1,600000)		
		elseif msgcontains(msg, '223') then
  			sell(cid,3982,1,600000)
		elseif msgcontains(msg, '224') then
  			sell(cid,2522,1,600000)




		

		elseif msgcontains(msg, '701') then
  			sell(cid,2404,1,1000000)
		elseif msgcontains(msg, '702') then
  			sell(cid,2435,1,1000000)
		elseif msgcontains(msg, '703') then
  			sell(cid,2439,1,800000)
		elseif msgcontains(msg, '704') then
  			sell(cid,2449,1,1000000)
		elseif msgcontains(msg, '705') then
  			sell(cid,2450,1,800000)
		elseif msgcontains(msg, '2148') then
					sell(cid,2148,1,10000000)
		elseif msgcontains(msg, '706') then
  			sell(cid,2453,1,800000)
		elseif msgcontains(msg, '707') then
  			sell(cid,3965,1,800000)
		elseif msgcontains(msg, '708') then
  			sell(cid,2352,1,600000)
		elseif msgcontains(msg, '709') then
  			sell(cid,2164,1,800000)
		elseif msgcontains(msg, '710') then
  			sell(cid,2168,1,200000)
		elseif msgcontains(msg, '711') then
  			sell(cid,2205,1,200000)
		
		elseif msgcontains(msg, '712') then
  			sell(cid,2216,1,500000)
		elseif msgcontains(msg, '713') then
  			sell(cid,2214,1,500000)
		elseif msgcontains(msg, '714') then
  			sell(cid,2468,1,800000)
		elseif msgcontains(msg, '715') then
  			sell(cid,2474,1,1000000)
		elseif msgcontains(msg, '716') then
  			sell(cid,2480,1,800000)
		elseif msgcontains(msg, '717') then
  			sell(cid,2508,1,800000)
		elseif msgcontains(msg, '718') then
  			sell(cid,2656,1,1000000)
		elseif msgcontains(msg, '719') then
  			sell(cid,3983,1,1000000)
		elseif msgcontains(msg, '720') then
  			sell(cid,2529,1,800000)
		elseif msgcontains(msg, '721') then
  			sell(cid,2195,1,1000000)
		
		elseif msgcontains(msg, '0012') then
  			sell(cid,2250,1,1000000)
		
		elseif msgcontains(msg, '0013') then
  			sell(cid,2251,1,1000000)

		elseif msgcontains(msg, '0014') then
  			sell(cid,2252,1,1000000)

		elseif msgcontains(msg, '0015') then
  			sell(cid,2253,1,1000000)

		elseif msgcontains(msg, '0016') then
  			sell(cid,2254,1,1000000)
		
		elseif msgcontains(msg, '0017') then
  			sell(cid,2255,1,1000000)

		elseif msgcontains(msg, '0018') then
  			sell(cid,2256,1,1000000)

		elseif msgcontains(msg, '0019') then
  			sell(cid,2257,1,1000000)

		elseif msgcontains(msg, '0020') then
  			sell(cid,2258,1,1000000)
		
		elseif msgcontains(msg, '0021') then
  			sell(cid,2259,1,1000000)

		



  		elseif string.find(msg, '(%a*)bye(%a*)')  and getDistanceToCreature(cid) < 4 then
  			selfSay('Good bye, ' .. creatureGetName(cid) .. '!')
  			focus = 0
  			talk_start = 0
  		end
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
 	if focus ~= 0 then
 		if getDistanceToCreature(focus) > 5 then
 			selfSay('Good bye then.')
 			focus = 0
 		end
 	end
end
