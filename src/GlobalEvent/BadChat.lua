---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 15.04.2020 21:29
---
player_colors = {}
player_colors[0] = "|cffFF0202"
player_colors[1] = "|cff0041FF"
player_colors[2] = "|cff1BE5B8"
player_colors[3] = "|cff530080"
player_colors[4] = "|cffFFFC00"
player_colors[5] = "|cffFE890D"
player_colors[6] = "|cff1FBF00"
player_colors[7] = "|cffE45AAF"
player_colors[8] = "|cff949596"
player_colors[9] = "|cff7DBEF1"
player_colors[10] = "|cff0F6145"
player_colors[11] = "|cff4D2903"
function printTimed(msg,duration)
	if(duration==nil)then
		duration = 30
	end
	if(msg==nil)then
		msg = "nil"
	end
	DisplayTimedTextToPlayer(GetLocalPlayer(),0.,0.,duration,msg)
	--print("Принт тоже сработал")
end
function onChat()
	printTimed(player_colors[GetPlayerId(GetTriggerPlayer())]..GetPlayerName(GetTriggerPlayer()).."|r: "..GetEventPlayerChatString(),30)
end

function BadChat()
	local trig = CreateTrigger()

	TriggerAddCondition(trig, Condition(onChat))
	for i = 0, 11 do
		TriggerRegisterPlayerChatEvent(trig, Player(i), "", false)
	end
end