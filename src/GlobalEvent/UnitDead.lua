---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 23.01.2020 20:11
function InitUnitDeath()
	local gg_trg_DEADGUI = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(gg_trg_DEADGUI, EVENT_PLAYER_UNIT_DEATH)--меня полностью устраивает это событие
	TriggerAddAction(gg_trg_DEADGUI, function()

		local DeadUnit=GetTriggerUnit()--умерший

		local Killer=GetKillingUnit()--убийца
		--print("EventDead "..GetUnitName(DeadUnit).." "..GetUnitName(Killer))
		if GetUnitTypeId(Killer)==FourCC('o006')  then --волк убил
			--print("волк убил")
			BlzSetUnitBaseDamage(Killer,BlzGetUnitBaseDamage(Killer,0)+1,0)
			Killer=HERO[GetPlayerId(GetOwningPlayer(Killer))].UnitHero

		end

		if IsUnitType(DeadUnit,UNIT_TYPE_HERO) then --герой умер
			local x,y=GetUnitXY(DeadUnit)
			local PD=GetOwningPlayer(DeadUnit)
			local pid=GetPlayerId(PD)
			local data=HERO[pid]

			--data.CartUnit=nil
			--SetUnitOwner(data.CartUnit,Player(PLAYER_NEUTRAL_PASSIVE),true)
			--SetUnitAnimationByIndex(data.CartUnit,0)
			if data.Perk15 then -- взрыв от смерти
				SetUnitExploded(DeadUnit, true)
				DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\Mortar\\MortarMissile",x,y))
				UnitDamageArea(DeadUnit,200,x,y,250)
			end
			data.Dies=data.Dies+1
			if data.Dies==15 then
				if not data.Perk3 then
					BlzSetUnitMaxHP(DeadUnit,GetUnitState(DeadUnit,UNIT_STATE_MAX_LIFE)+100)
				end
				data.Perk3=true
				PerkUnlocker(data,3)
			end
			if data.IsWood then
				CreateFreeWood(x,y)
			end
			TimerStart(CreateTimer(), 2.5, false, function()

				--data.Alive=true
				if data.Perk15 then
					if data.ReviveOnBase then
						ReviveHero(DeadUnit,GetPlayerStartLocationX(PD),GetPlayerStartLocationY(PD),true)
						data.ReviveOnBase=false
					else
						ReviveHero(DeadUnit,x,y,true)
						data.ReviveOnBase=true
					end

				else
					ReviveHero(DeadUnit,GetPlayerStartLocationX(PD),GetPlayerStartLocationY(PD),true)
				end
				SelectUnitForPlayerSingle(DeadUnit,PD)
				data.IsWood=false
				--data.ReleaseLMB=false
				--data.ReleaseRMB=false
				MakeUnitAllAlly(DeadUnit)
				data.RevoltSec=0
				data.Perk2=false
				DestroyTimer(GetExpiredTimer())
			end)
		end

		if IsUnitType(Killer,UNIT_TYPE_HERO)  and true then --герои убил кого-то
			--print("герой убил")
			local PD=GetOwningPlayer(Killer)
			local pid=GetPlayerId(PD)
			local data=HERO[pid]

			if data.Perk7A and DistanceBetweenXY(GetUnitX(Killer),GetUnitY(Killer),GetUnitXY(DeadUnit))<=150 then
				local amount=BlzGetUnitMaxHP(Killer)*0.03
				HealUnit(Killer,amount)
			end

			if data.Perk15 then
				SetUnitExploded(DeadUnit, true)
				local x,y=GetUnitXY(DeadUnit)
				DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\Mortar\\MortarMissile",x,y))
				--UnitDamageArea(Killer,200,x,y,250)-- доп урон при убийстве
			end


			data.Kills=data.Kills+1
			data.RevoltSec=0
			if data.Kills==5 then
				if not data.Perk5 then
					BlzSetUnitBaseDamage(Killer,BlzGetUnitBaseDamage(Killer,0)*2,0)
				end
				data.Perk5=true
				PerkUnlocker(data,5)
			end
			if GetUnitTypeId(DeadUnit)==FourCC('n002') then--голем
					--перенесено в спеллкаст
			end
			if GetUnitTypeId(DeadUnit)==FourCC('n001') then--овцы овца

				data.SheepCount=data.SheepCount+1
				if data.SheepCount==40 then
					data.Perk15=true
					UnitAddAbility(Killer,FourCC('A00J'))
					PerkUnlocker(data,15)
				end
			end
			if GetUnitTypeId(DeadUnit)==FourCC('e001') then-- убил энта
				CreateFreeWood(GetUnitXY(DeadUnit))
			end
			if GetUnitTypeId(DeadUnit)==FourCC('n000') then--волк
				data.WolfCount=data.WolfCount+1

				if data.WolfCount==5 then
					--UnitAddAbility(Killer,FourCC('A007'))
					AddSpecialEffectTarget("Wolf Cap by Sunchips",Killer,"head")
					data.WolfHelper=CreateUnit(PD,FourCC('o006'),GetUnitX(Killer),GetUnitY(Killer),0)
					UnitAddAbility(data.WolfHelper,FourCC('Aloc'))

					if not data.Perk13 then
						data.Perk13=true
						PerkUnlocker(data,13)
					end

					TimerStart(CreateTimer(), 1, true, function()
						local x,y=GetUnitXY(Killer)
						local distance=DistanceBetweenXY(x,y,GetUnitX(data.WolfHelper),GetUnitY(data.WolfHelper))
						if distance>600 then
							local effmodel="Abilities\\Spells\\NightElf\\Blink\\BlinkCaster"
							DestroyEffect(AddSpecialEffect(effmodel,GetUnitXY(data.WolfHelper)))
							DestroyEffect(AddSpecialEffect(effmodel,x,y))
							local r=GetRandomInt(-50,50)
							SetUnitPosition(data.WolfHelper,x+r,y+r)
						else
							if GetUnitCurrentOrder(data.WolfHelper)~=String2OrderIdBJ("attack") then
								local rx,ry=x+GetRandomInt(-500,500),y+GetRandomInt(-500,500)
								IssuePointOrder(data.WolfHelper,"attack", rx,ry)
							end
						end
					end)


					--if GetLocalPlayer()==PD and GetLocalON then
					--	BlzFrameSetVisible(PerkIsLock[13],false)
					--end
				end
			end
		end
		----------------- смерть простых типов юнитов
		---FourCC('e003')
		--break --[[
		--Humans=CreateGroup()
		if GetUnitTypeId(DeadUnit)==FourCC('hpea') then--Крестьянин
		--	print("Погиб крестьянин")
			local x,y=GetUnitXY(DeadUnit)
			local lum=FindUnitOfType(FourCC('hlum'),1200,x,y)
			if lum then
				TimerStart(CreateTimer(), 5, false, function()
				--	print("создан новый рабочий")
					local xlim,ylum=GetUnitXY(lum)
					local new=CreateUnit(Player(10), FourCC('hpea'),xlim, ylum, 0)
					IssueImmediateOrder(new,"autoharvestlumber")
					DestroyTimer(GetExpiredTimer())
				end)
			end

		end
		if GetUnitTypeId(DeadUnit)==FourCC('e003') then--Злое дерево, , большой энт
			local x,y=GetUnitXY(DeadUnit)
			for _=1,7 do
				local r=GetRandomInt(-100,100)
				local r2=GetRandomInt(-100,100)
				CreateFreeWood(x+r,y+r2)
			end
		end

		if GetUnitTypeId(DeadUnit)==FourCC('o001') and not Ending then--лесопилка орков
			--print("О нет, лесопилка разрушена, теперь пеонам никогда не выбраться с острова")
			if BlzGetLocale()=="ruRU" then
				print("|cff8080ffСистема: |r".."О нет, лесопилка разрушена, теперь пеонам никогда не выбраться с острова")
			else
				print("|cff8080ffSystem: |r".."Oh no, the sawmill is destroyed, now the peons never get out of the island")
			end
			TimerStart(CreateTimer(), 5, false, function()
				CustomDefeatBJ(Player(0),"Вы проиграли")
				CustomDefeatBJ(Player(1),"Вы проиграли")
				CustomDefeatBJ(Player(2),"Вы проиграли")
				CustomDefeatBJ(Player(3),"Вы проиграли")
				DestroyTimer(GetExpiredTimer())
			end)
		end
		if GetUnitTypeId(DeadUnit)==FourCC('h001') then--лесопилка орков
			local x,y=GetUnitX(DeadUnit)
			ShowUnit(DeadUnit,false)
			DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\Mortar\\MortarMissile",x,y))
		end

		if GetUnitTypeId(DeadUnit)==FourCC('hlum') then -- лесопилка людей
			for i=0,3 do
				local data=HERO[i]
				local hero=data.UnitHero
				local distance=DistanceBetweenXY(GetUnitX(hero),GetUnitY(hero),GetUnitX(DeadUnit),GetUnitY(DeadUnit))
				if distance<=500 then
					if not data.Perk11 then
						--Действие перка погрома
						AddSpecialEffectTarget("GearAura",hero,"origin")
						TimerStart(CreateTimer(), 1, true, function()
							local e=nil
							local x,y=GetUnitXY(hero)
							GroupEnumUnitsInRange(perebor,x,y,400,nil)
							while true do
								e = FirstOfGroup(perebor)
								if e == nil then break end

								--ремонт
								if true and UnitAlive(e) and IsUnitAlly(e,GetOwningPlayer(hero)) and (IsUnitType(e,UNIT_TYPE_STRUCTURE) or IsUnitType(e,UNIT_TYPE_MECHANICAL)) then
									local amount=HealUnit(e,10)
									data.Repairs=data.Repairs+amount
								end
								GroupRemoveUnit(perebor,e)
							end
						end)

						data.Perk11=true
						PerkUnlocker(data,11)
					end
				end
			end
		end

	end)
end