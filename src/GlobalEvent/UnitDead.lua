---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 23.01.2020 20:11
function InitUnitDeath()
	local gg_trg_DEADGUI = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(gg_trg_DEADGUI, EVENT_PLAYER_UNIT_DEATH)--меня полностью устраивает это событие
	TriggerAddAction(gg_trg_DEADGUI, function()
		local DeadUnit=GetTriggerUnit()--умерший
		--print("EventDead")
		local Killer=GetKillingUnit()--убийца
		if IsUnitType(DeadUnit,UNIT_TYPE_HERO) then --герои
			local x,y=GetUnitXY(DeadUnit)
			local PD=GetOwningPlayer(DeadUnit)
			local pid=GetPlayerId(PD)
			local data=HERO[pid]
			data.Dies=data.Dies+1
			if data.Dies==15 then
				if not data.Perk3 then
					BlzSetUnitMaxHP(DeadUnit,GetUnitState(DeadUnit,UNIT_STATE_MAX_LIFE)+100)
				end
				data.Perk3=true
				if GetLocalPlayer()==PD then
					BlzFrameSetVisible(PerkIsLock[3],false)
				end
			end
			if data.IsWood then
				CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), FourCC('e002'), x,y, 0)--дровишко
			end
			TimerStart(CreateTimer(), 0.5, false, function()

				--data.Alive=true

				ReviveHero(DeadUnit,GetPlayerStartLocationX(PD),GetPlayerStartLocationY(PD),true)
				SelectUnitForPlayerSingle(DeadUnit,PD)
				data.IsWood=false
				MakeUnitAllAlly(DeadUnit)
				data.RevoltSec=0
				data.Perk2=false
			end)
		end

		if IsUnitType(Killer,UNIT_TYPE_HERO) then --герои
			--print("герой убил")
			local PD=GetOwningPlayer(Killer)
			local pid=GetPlayerId(PD)
			local data=HERO[pid]
			data.Kills=data.Kills+1
			data.RevoltSec=0
			if data.Kills==1 then
				if not data.Perk5 then
					BlzSetUnitBaseDamage(Killer,BlzGetUnitBaseDamage(Killer,0)*2,0)
				end
				data.Perk5=true
				if GetLocalPlayer()==PD then
					BlzFrameSetVisible(PerkIsLock[5],false)
				end
			end
			if GetUnitTypeId(DeadUnit)==FourCC('n002') then--голем
				data.StoneCount=data.StoneCount+1

				if data.StoneCount==1 then
					--UnitAddAbility(Killer,FourCC('A007'))
					data.Perk14=true
					if GetLocalPlayer()==PD then
						BlzFrameSetVisible(PerkIsLock[14],false)
					end
				end
			end
		end

		if GetUnitTypeId(DeadUnit)==FourCC('o001') then
			print("О нет, лесопилка разрушена, теперь пеонам никогда не выбраться с острова")
			TimerStart(CreateTimer(), 5, false, function()
				CustomDefeatBJ(Player(0),"Вы проиграли")
				CustomDefeatBJ(Player(1),"Вы проиграли")
				CustomDefeatBJ(Player(2),"Вы проиграли")
				CustomDefeatBJ(Player(3),"Вы проиграли")
			end)
		end
	end)
end