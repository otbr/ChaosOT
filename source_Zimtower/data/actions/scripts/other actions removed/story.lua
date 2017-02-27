 
function onUse(cid, item, frompos, item2, topos)
--Shadimar presents: Enforced Storytelling 1.0
	player1pos = {x=topos.x, y=topos.y, z=topos.z, stackpos=253}
	player1 = getThingfromPos(player1pos)
	
	store = cid --change to player1.uid to save story progress in the victim, leave as cid to cause multiple people to tell the story together
	key = 8888 --the storage key ID used to track the story progress
	speech = 16 --set as 1 for regular speech and 16 for orange text (less spam) 
	
--do we need this many random numbers? yes and no. the script will still work with fewer random numbers at the expense of story variety as certain variables would be locked together
	rand = math.random(2,10) --for the sake of grammar, we need a random number higher than 1.  Do not change unless you edit the creatures as well
	rand1 = math.random(10)
	rand2 = math.random(9)
	rand3 = math.random(9)
	rand4 = math.random(10)
	rand5 = math.random(9)
	rand6 = math.random(9)
	rand7 = math.random(4)
	rand8 = math.random(6)
	rand9 = math.random(11)
	rand10 = math.random(6)
	rand11 = math.random(5)

	story = getPlayerStorageValue(store,key)
	time = os.date('%I:%M %p')
	guilty = getPlayerName(cid)
	victim = getPlayerName(player1.uid)
	level = getPlayerLevel(player1.uid)
	age = getPlayerLevel(cid)
	day = os.date('%A')
	lost = (os.date('%M')+2)
	people = (os.date('%S')+2)
	gasp = (getPlayerFood(player1.uid)+1)

--each random variable is easily expanded by adding additional elseif statements before else and adjusting the appropriate random numbers
if rand == 2 then 
	creature = "rabbit"
elseif rand == 3 then 
	creature = "cave rat"
elseif rand == 4 then 
	creature = "swamp troll"
elseif rand == 5 then 
	creature = "rotworm"
elseif rand == 6 then 
	creature = "kitten"
elseif rand == 7 then 
	creature = "lamp shade"
elseif rand == 8 then 
	creature = "goblin"
elseif rand == 9 then 
	creature = "pk"
else
	creature = "NPC"
end

if rand1 == 1 then 
	action = "parcel thiefing"
elseif rand1 == 2 then 
	action = "dying to"
elseif rand1 == 3 then 
	action = "confusing"
elseif rand1 == 4 then 
	action = "ambushing"
elseif rand1 == 5 then 
	action = "carpooling with"
elseif rand1 == 6 then 
	action = "spamming"
elseif rand1 == 7 then 
	action = "reverse engineering"
elseif rand1 == 8 then 
	action = "escorting"
elseif rand1 == 9 then 
	action = "trap pking"
else
	action = "impersonating"
end

if rand2 == 1 then 
	something = "excalibug"
elseif rand2 == 2 then 
	something = "an apple"
elseif rand2 == 3 then 
	something ="an ulterior motive"
elseif rand2 == 4 then 
	something = "my watch"
elseif rand2 == 5 then 
	something = "a studded shield"
elseif rand2 == 6 then 
	something = "a commodore 64"
elseif rand2 == 7 then 
	something = "help"
elseif rand2 == 8 then 
	something = "a potato"
else
	something = "to be spammed"
end

if rand3 == 1 then 
	place = "the basement"
elseif rand3 == 2 then 
	place = "the jungle"
elseif rand3 == 3 then 
	place ="the swamps"
elseif rand3 == 4 then 
	place = "the back yard"
elseif rand3 == 5 then 
	place = "inner mongolia"
elseif rand3 == 6 then 
	place = "the White House"
elseif rand3 == 7 then 
	place = "the beach"
elseif rand3 == 8 then 
	place = "Sweden"
else
	place = "my house"
end

if rand4 == 1 then 
	voc = "adventurer"
elseif rand4 == 2 then 
	voc = "warrior"
elseif rand4 == 3 then 
	voc ="mathematician"
elseif rand4 == 4 then 
	voc = "n00b"
elseif rand4 == 5 then 
	voc = "kid on a computer"
elseif rand4 == 6 then 
	voc = "cherry picker"
elseif rand4 == 7 then 
	voc = "bartender"
elseif rand4 == 8 then 
	voc = "amateur folk singer"
elseif rand4 == 9 then 
	voc = "lua scripter"
else
	voc = "politician"
end

if rand5 == 1 then 
	weapon = "breath is"
elseif rand5 == 2 then 
	weapon = "warriors are"
elseif rand5 == 3 then 
	weapon ="singing is"
elseif rand5 == 4 then 
	weapon = "fingerpainting is"
elseif rand5 == 5 then 
	weapon = "poetry is"
elseif rand5 == 6 then 
	weapon = "home movies are"
elseif rand5 == 7 then 
	weapon = "leisure suits are"
elseif rand5 == 8 then 
	weapon = "amateur folk singers are"
else
	weapon = "politicians are"
end

if rand6 == 1 then 
	anotherthing = "boots of water walking"
elseif rand6 == 2 then 
	anotherthing = "an apple"
elseif rand6 == 3 then 
	anotherthing = "the Mona Lisa"
elseif rand6 == 4 then 
	anotherthing = "my watch"
elseif rand6 == 5 then 
	anotherthing = "a studded shield"
elseif rand6 == 6 then 
	anotherthing = "total self control"
elseif rand6 == 7 then 
	anotherthing = "my respect"
elseif rand6 == 8 then 
	anotherthing = ""..lost.." levels"
else
	anotherthing = "the godblade"
end

if rand7 == 1 then 
	doing = "exploring"
elseif rand7 == 2 then 
	doing = "skydiving in"
elseif rand7 == 3 then 
	doing = "hunting dragons in"
else
	doing = "carpooling in"
end

if rand8 == 1 then 
	skill = "strength"
elseif rand8 == 2 then 
	skill = "reflexes"
elseif rand8 == 3 then 
	skill = "body hair"
elseif rand8 == 4 then 
	skill = "phone numbers"
elseif rand8 == 5 then 
	skill = "alimony payments"
else
	skill = "car keys"
end

if rand9 == 1 then 
	attack = "aimbot"
elseif rand9 == 2 then 
	attack = "light magic missiles"
elseif rand9 == 3 then 
	attack = "reckless abandon"
elseif rand9 == 4 then 
	attack = "extreme caution"
elseif rand9 == 5 then 
	attack = "slight hesitation"
elseif rand9 == 6 then 
	attack = "unforseen consequences"
elseif rand9 == 7 then 
	attackg = "a studded club"
elseif rand9 == 8 then 
	attack = "powerful magic"
elseif rand9 == 9 then 
	attack = "mild apprehension"
elseif rand9 == 10 then 
	attack = "snowballs"
else
	attack = "a pointy stick"
end

if rand10 == 1 then 
	kind = "a young"
elseif rand10 == 2 then 
	kind = "an old"
elseif rand10 == 3 then 
	kind = "an inept"
elseif rand10 == 4 then 
	kind = "a talented"
elseif rand10 == 5 then 
	kind = "a programming"
else
	kind = "an oddly dressed"
end

if rand11 == 1 then 
	crime = "n00b"
elseif rand11 == 2 then 
	crime = "spammer"
elseif rand11 == 3 then 
	crime = "cause of lag"
elseif rand11 == 4 then 
	crime = "power abuser"
else
	crime = "basket case"
end
if player1.itemid > 0 then
--if this is the first time using the rune or the storyline has been reset then story will return -1
	if story == -1 then
doPlayerSay(player1.uid,"Once apon a time there was "..kind.." "..voc.." named "..guilty..".",speech)
setPlayerStorageValue(store,key,1)
--story is set to 1 and increased to track the progress
	elseif story == 1 then
doPlayerSay(player1.uid,""..guilty.." had "..rand.." different ways of "..action.." "..creature.."s.",speech)
setPlayerStorageValue(store,key,2)

	elseif story == 2 then
doPlayerSay(player1.uid,""..victim.." had warned "..guilty.." about the dangers of "..doing.." "..place.." at the age of "..age..".",speech)
setPlayerStorageValue(store,key,3)

	elseif story == 3 then
doPlayerSay(player1.uid,"But "..guilty.." would only talk about having the "..skill.." of "..level.." "..creature.."s.",speech)
setPlayerStorageValue(store,key,4)

	elseif story == 4 then
doPlayerSay(player1.uid,"One "..day.." at around "..time..", "..guilty.." was hunting "..creature.."s with "..attack..".",speech)
setPlayerStorageValue(store,key,5)

	elseif story == 5 then
doPlayerSay(player1.uid,"When suddenly "..gasp.." "..creature.."s  appeared and demanded "..something..".",speech)
setPlayerStorageValue(store,key,6)

	elseif story == 6 then
doPlayerSay(player1.uid,""..guilty.." said not to worry since the "..creature.."s  would come for us once they realized we had "..something..".",speech)
setPlayerStorageValue(store,key,7)

	elseif story == 7 then
doPlayerSay(player1.uid,"Then I said that "..creature.."s  might be a better idea because their "..weapon.." feared throughout "..place..".",speech)
setPlayerStorageValue(store,key,8)

	elseif story == 8 then
doPlayerSay(player1.uid,"But before we get could very far "..guilty.."  fell into a hidden "..creature.." spawn and lost "..anotherthing..".",speech)
setPlayerStorageValue(store,key,9)
--to expand the storyline, simply insert additional statements here with storage values of 10, 11, 12 etc
	else
doPlayerSay(player1.uid,"We took a vote earlier and "..people.." of us agreed that "..guilty.." is the biggest "..crime.." on the server.",speech)
setPlayerStorageValue(store,key,-1) --resets the story progress to the beginning

	end
else
doPlayerSendCancel(cid,"Sorry, you missed.")
end
	return 1
end