---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 16.01.2020 23:40
---
GetPlayerMouseX={0,0,0,0}
GetPlayerMouseY={0,0,0,0}
function InitMouseMoveTrigger()
	local MouseMoveTrigger = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		--if GetPlayerSlotState(player) == PLAYER_SLOT_STATE_PLAYING and GetPlayerController(player) == MAP_CONTROL_USER then
			TriggerRegisterPlayerEvent(MouseMoveTrigger, player, EVENT_PLAYER_MOUSE_MOVE)
		--end
	end
		TriggerAddAction(MouseMoveTrigger, function()
			--print("ismove")
			--print("x="..BlzGetTriggerPlayerMouseX().." y="..BlzGetTriggerPlayerMouseY())
			local id=GetPlayerId(GetTriggerPlayer())
			HERO[id].IsMouseMove=true
			local xs,ys=GetUnitXY(HERO[id].UnitHero)
			--HERO[id].LastMouseX=BlzGetTriggerPlayerMouseX()
			GetPlayerMouseX[id]=BlzGetTriggerPlayerMouseX()
			GetPlayerMouseY[id]=BlzGetTriggerPlayerMouseY()
			HERO[id].AngleMouse=AngleBetweenXY(xs, ys, GetPlayerMouseX[id], GetPlayerMouseY[id])/bj_DEGTORAD

		end)
end


