---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 28.03.2020 1:00
---
TotalStones=0 --подсчет камней для тиника
function RegisterCollision(hero)
	local ThisTrigger = CreateTrigger()
	local IsWork=false
	if  hero then
		IsWork=true
	end
	TriggerRegisterUnitInRangeSimple(ThisTrigger, 80, hero)
	TriggerAddAction(ThisTrigger, function()
		local CollisionUnit=GetTriggerUnit()
		local data=HERO[GetPlayerId(GetOwningPlayer(hero))]
		--hero - юнит к которому подошли
		--print("any reg "..GetUnitName(CollisionUnit))
		--Общее условие
		if UnitAlive(CollisionUnit) then

			if GetUnitTypeId(CollisionUnit)==FourCC('o008')  then --Таурен
				--print("защищайте кодоев")
				SetUnitFacing(CollisionUnit,AngleBetweenUnits(CollisionUnit,hero))
				local location tl = Location(GetUnitXY(CollisionUnit))
				PlaySoundAtPointBJ( gg_snd_SaveKodo, 100, tl, 0 )
				RemoveLocation(tl)
			end


			if GetUnitTypeId(CollisionUnit)==FourCC('e009')  and GetUnitAbilityLevel(CollisionUnit,FourCC('A00L'))>0 then --Тини

				--FlyTextTagManaBurn(CollisionUnit,TotalStones,GetOwningPlayer(hero))
				if TotalStones>=30 then --30
					UnitRemoveAbility(CollisionUnit,FourCC('A00L'))
					StartTinyAI(GetUnitXY(CollisionUnit))
					--print("тут должна быть эпичная битва но её ещё нет")
				else
					if BlzGetLocale()=="ruRU" then
						print("|cff8080ffТиник: |r".."Уничтожьте камни для нашей битвы "..TotalStones.."/30")
					else
						print("|cff8080ffTinyc: |r".."Destroy stones for battle")
					end
				end
			end


			if GetUnitTypeId(CollisionUnit)==FourCC('oshy')  then --ферфь
				if GetUnitAbilityLevel(CollisionUnit,FourCC('A00L'))>0 then
				if GTotalWood>=100 then
					UnitRemoveAbility(CollisionUnit,FourCC('A00L'))
					if BlzGetLocale()=="ruRU" then
						print("|cff8080ffСистема: |r".."Приступайте к строительсву корабля")
					else
						print("|cff8080ffSystem: |r".."Repair the ship")
					end

				end
					if Ending then
						UnitRemoveAbility(CollisionUnit,FourCC('A00L'))
						if BlzGetLocale()=="ruRU" then
							print("|cff8080ffСистема: |r".."Помогайте строить корабль, чего стоите")
						else

						end
					else
						if BlzGetLocale()=="ruRU" then
							print("|cff8080ffСистема: |r".."Добудьте 100 древисины чтобы построить корабль")
						else
							print("|cff8080ffСистема: |r".."You need 100 timber to build a ship")
						end
					end

				end
			end

			if GetUnitTypeId(CollisionUnit)==FourCC('n006')  then--тускарец с восклицательным знаком
				if GetUnitAbilityLevel(CollisionUnit,FourCC('A00L'))>0 then
				UnitRemoveAbility(CollisionUnit,FourCC('A00L'))
					--print("Тускарец: где-то винзу есть рычаг")
					if BlzGetLocale()=="ruRU" then
						print("|cff8080ffТускарец: |r".." Где-то внизу есть рычаг")
					else
						print("|cff8080ffWalrus: |r".." Below there is a lever from this gate")
					end

				end
			end

			if GetUnitTypeId(CollisionUnit)==FourCC('o005')  and not data.CartUnit then--тележка
				if GetOwningPlayer(CollisionUnit)==Player(PLAYER_NEUTRAL_PASSIVE) then
					SetUnitInvulnerable(CollisionUnit,true)
					SetUnitOwner(CollisionUnit,GetOwningPlayer(hero),true)
					data.CartUnit=CollisionUnit
				end
			end
			if GetUnitTypeId(CollisionUnit)==FourCC('n007') then-- свинка лечилка свинья
				if GetLosingHP(hero)>1 then
					HealUnit(hero,GetUnitState(CollisionUnit,UNIT_STATE_LIFE))
					KillUnit(CollisionUnit)
				end
			end
			if GetUnitTypeId(CollisionUnit)==FourCC('e007') then--Сфрера огня
				--print("Подобрана сфера огня, учим героя метать фаер болы")
				KillUnit(CollisionUnit)
				if not data.Perk16 then
					data.Perk16=true
					UnitAddAbility(hero,FourCC('A006'))--огонёк
					PerkUnlocker(data,16)
				end
			end
			if GetUnitTypeId(CollisionUnit)==FourCC('o001') then--дрова на лесопилке
				local k=1
				if data.Perk1 then
					k=k+1
				end
				if data.IsWood then
					if GetLosingHP(hero)<=5 then-- Техника безопасности
						--print("Полное хп")
						data.TreeCountOnTB=k+data.TreeCountOnTB
						if data.TreeCountOnTB>=10 and not data.Perk10 then
							data.Perk10=true
							PerkUnlocker(data,10)
						end
					end
					data.IsWood=false
					--рывок перемещён в другое место в интерфейс
					data.SingleWoodCount=data.SingleWoodCount+k
					--print("дерево в личном зачете "..data.SingleWoodCount)
					if data.SingleWoodCount>=25  and not data.Perk1 then -- Перкс работник месяца
						data.Perk1=true
						PerkUnlocker(data,1)
					end
					--print(data.SingleWoodCount)

					HealUnit(hero,1000)
					AddLumber(k,hero)
					MoveWoodAsFarm(hero,k)
					UnitAddItemById(hero,FourCC('I000'))-- ускорение
					data.RevoltSec=0
				end
				if data.CartUnit  and GetUnitUserData(data.CartUnit)>0 then -- дрова из тележки на лесопилке
					local wc=GetUnitUserData(data.CartUnit)
					--k=wc*k

					if GetLosingHP(hero)<=5 then-- Техника безопасности
						--print("Полное хп")
						data.TreeCountOnTB=k+data.TreeCountOnTB
						if data.TreeCountOnTB>=10 and not data.Perk10 then
							data.Perk10=true
							PerkUnlocker(data,10)
						end
					end


					HealUnit(hero,1000)
					AddLumber(k,hero)
					UnitAddItemById(hero,FourCC('I000'))-- ускорение
					TimerStart(CreateTimer(), 0.1, true, function()
						MoveWoodAsFarm(hero,k)
						data.SingleWoodCount=data.SingleWoodCount+k
						--print("дерево в личном зачете "..data.SingleWoodCount)
						if data.SingleWoodCount>=25  and not data.Perk1 then -- Перкс работник месяца
							data.Perk1=true
							BlzFrameSetVisible(data.LockFrame[1],false)
							BlzFrameSetVisible(data.VisualSelectorFrame[1],true)
							TimerStart(CreateTimer(), 10, true, function()
								BlzFrameSetVisible(data.VisualSelectorFrame[1],false)
							end)
						end
						data.RevoltSec=0
						SetUnitUserData(data.CartUnit,GetUnitUserData(data.CartUnit)-1)
						SetVisualWood(data.CartUnit,GetUnitUserData(data.CartUnit))
						if GetUnitUserData(data.CartUnit)==0 then
							DestroyTimer(GetExpiredTimer())
						end
					end)
				end
			end
			if GetUnitTypeId(CollisionUnit)==FourCC('e002') then-- дрова у юнита
				if data.CartUnit then
					local wc=GetUnitUserData(data.CartUnit)
					if wc<=5 then
						SetUnitUserData(data.CartUnit,wc+1)
						wc=wc+1
						--print("Всего дерева в тачке="..wc)
						local tl = Location(GetUnitXY(hero))
						PlaySoundAtPointBJ( gg_snd_Load, 100, tl, 0 )
						RemoveLocation(tl)
						KillUnit(CollisionUnit)
						SetVisualWood(data.CartUnit,wc)
					end
				else
					if not data.IsWood then
						--print("звук подбора")
						if not data.ReleaseLMB then
							local tl = Location(GetUnitXY(hero))
						PlaySoundAtPointBJ( gg_snd_Load, 100, tl, 0 )
						RemoveLocation(tl)
							KillUnit(CollisionUnit)
							data.IsWood=true
						end
					end
				end




			end
			if GetUnitTypeId(CollisionUnit)==FourCC('n001') then -- овца
					data.SheepCount=data.SheepCount+1
					if data.SheepCount==40 then
						data.Perk15=true
						UnitAddAbility(hero,FourCC('A00J'))
						PerkUnlocker(data,15)
					end

				SetUnitExploded(CollisionUnit,true)
				local nx,ny=GetUnitXY(CollisionUnit)
				UnitDamageArea(CollisionUnit,100,nx,ny,150) -- взрыв овцы
				DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\Mortar\\MortarMissile",nx,ny))
				KillUnit(CollisionUnit)
				local data=AnyData[GetHandleId(CollisionUnit)]
				local x,y=data.x,data.y
				TimerStart(CreateTimer(), 30, false, function()
					local new =CreateUnit(Player(10), FourCC('n001'), x, y, 0)
					AnyData[GetHandleId(new)]={
						x=x,
						y=y,
					}
					DestroyTimer(GetExpiredTimer())
				end)
			end

		end

	end)
	return IsWork
end

function AddLumber (ttk,caster)
	local data=HERO[GetPlayerId(GetOwningPlayer(caster))]
	local ownplayer=GetOwningPlayer(caster)



	if ttk>0 and data.IsWood then
		FlyTextTagLumberBounty(caster,"+"..ttk,ownplayer)
		AdjustPlayerStateBJ(ttk, ownplayer, PLAYER_STATE_RESOURCE_LUMBER )

		--print("Опыт добавлен")
	end
end

function SetVisualWood(CartUnit,wc)
	UnitRemoveAbility(CartUnit,FourCC('A008'))--1
	UnitRemoveAbility(CartUnit,FourCC('A009'))--2
	UnitRemoveAbility(CartUnit,FourCC('A00A'))--3
	UnitRemoveAbility(CartUnit,FourCC('A00B'))--4
	UnitRemoveAbility(CartUnit,FourCC('A00C'))--5
	UnitRemoveAbility(CartUnit,FourCC('A00D'))--6
	if wc==1 then
		UnitAddAbility(CartUnit,FourCC('A008'))--1
	elseif wc==2  then
		UnitAddAbility(CartUnit,FourCC('A008'))--1
		UnitAddAbility(CartUnit,FourCC('A009'))--2
	elseif wc==3  then
		UnitAddAbility(CartUnit,FourCC('A008'))--1
		UnitAddAbility(CartUnit,FourCC('A009'))--2
		UnitAddAbility(CartUnit,FourCC('A00A'))--3
	elseif wc==4  then
		UnitAddAbility(CartUnit,FourCC('A008'))--1
		UnitAddAbility(CartUnit,FourCC('A009'))--2
		UnitAddAbility(CartUnit,FourCC('A00A'))--3
		UnitAddAbility(CartUnit,FourCC('A00B'))--4
	elseif wc==5  then
		UnitAddAbility(CartUnit,FourCC('A008'))--1
		UnitAddAbility(CartUnit,FourCC('A009'))--2
		UnitAddAbility(CartUnit,FourCC('A00A'))--3
		UnitAddAbility(CartUnit,FourCC('A00B'))--4
		UnitAddAbility(CartUnit,FourCC('A00C'))--5
	elseif wc==6  then
		UnitAddAbility(CartUnit,FourCC('A008'))--1
		UnitAddAbility(CartUnit,FourCC('A009'))--2
		UnitAddAbility(CartUnit,FourCC('A00A'))--3
		UnitAddAbility(CartUnit,FourCC('A00B'))--4
		UnitAddAbility(CartUnit,FourCC('A00C'))--5
		UnitAddAbility(CartUnit,FourCC('A00D'))--6
	end
end