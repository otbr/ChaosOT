------Reputation System by Colex------
function onUse(cid, item, frompos, item2, topos)

if item2.itemid == cid then
days = 1800                    ---thats in seconds
number = 8971               ---waiting time'll be saved there
name = getPlayerName(item2.uid)
name2 = getPlayerName(cid)
playername = getPlayerName(cid)
lvl = getPlayerLevel(cid)
lvl2 = getPlayerLevel(item2.uid)
level = 1000                      ---lvl needed to give rep
level2 = 1000                    ---lvl needed to receive rep
rep = getPlayerStorageValue(item2.uid,8905)


if name2 == name then
doPlayerSendTextMessage(cid,22,"You cannot use this rune on your self punk ass.") 
else
  if lvl >= level then
    if lvl2 >= level2 then
      if waiting(cid, number, days) == -1 then
        if rep == -1 then
          setPlayerStorageValue(item2.uid,8905,0)
        end
        rep = getPlayerStorageValue(item2.uid,8905)
        setPlayerStorageValue(item2.uid,8905,rep+1)   
        result = rep + 1
        doPlayerSendTextMessage(cid,22,"You gave 1 bitch point to "..name..", now he/she has "..result.." points.")
        doPlayerSendTextMessage(item2.uid,22,"You've received 1 bitch point from "..name2..", now you have "..result.." points.")
      else
        doPlayerSendCancel(cid,"You need to wait more time before start to give more bitch points.") 
      end
    else
      doPlayerSendCancel(cid,"The player need level "..level2.." to receive bitch points.")    
    end
  else
    doPlayerSendCancel(cid,"You need level "..level.." to give bitch points.") 
  end
end
else
  doPlayerSendCancel(cid,"You can not use this rune there noob.") 
end

return 1
end




function waiting(player,number,time)

now = os.time()
before = getPlayerStorageValue(player,number)

exhaust = os.difftime(now,before)

if before == -1 then
setPlayerStorageValue(player,number,now)
return -1
else
if exhaust >= time then
setPlayerStorageValue(player,number,now)
return -1
else
return 1
end
end
end