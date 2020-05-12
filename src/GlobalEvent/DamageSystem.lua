---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 08.02.2020 12:24


function OnPostDamage()
	local damage     = GetEventDamage() -- число урона
	local damageType = BlzGetEventDamageType()
	if damage < 1 then return end

	local target          = GetTriggerUnit() -- тот кто получил урон
	local targetHandleId  = GetHandleId(target)

	local caster          = GetEventDamageSource() -- тот кто нанёс урон
	local casterOwner     = GetOwningPlayer(caster)

	--print(GetUnitName(caster).." нанёс урон - "..GetUnitName(target))
	if IsUnitType(target,UNIT_TYPE_HERO) then
		--print("Герой получил урон")
		local data=HERO[GetPlayerId(GetOwningPlayer(target))]

		local AngleUnitRad = math.rad(GetUnitFacing(target))  -- data.LastTurn
		local AngleSource = math.deg(AngleBetweenXY(GetUnitX(caster), GetUnitY(caster), GetUnitX(target), GetUnitY(target)))
		local Vector3 = wGeometry.Vector3
		local UnitFacingVector = Vector3:new(math.cos(AngleUnitRad), math.sin(AngleUnitRad), 0)  -- вектор поворота юнита
		local AngleSourceVector = Vector3:new(GetUnitX(caster) - GetUnitX(target), GetUnitY(caster) - GetUnitY(target), 0)  -- вектор получения от урона (by Doc)
		AngleSourceVector = AngleSourceVector:normalize()
		local dot = UnitFacingVector:dotProduct(AngleSourceVector)
		local dist=damage

		if GetUnitAbilityLevel(target,FourCC('BPSE'))>0 then  -- голем валун
			UnitRemoveAbility(target,FourCC('BPSE'))
			BlzSetEventDamage(0)
			if data.ReleaseLMB then
				data.StoneCount=data.StoneCount+1
				if data.StoneCount==5 then
					data.Perk14A=true
					PerkUnlocker(data,14)
				end
			end
			--print("урон от голема")
		end
		if GetUnitAbilityLevel(caster,FourCC('A005'))>0 then -- обледенение
			DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\FrostNova\\FrostNovaTarget",GetUnitXY(target)))
		end

		if data.Reflection and data.Perk10 then -- парирование с талантом
			--print("Урон парирован")
			if 0 < dot then
				local eff=AddSpecialEffect("DefendCasterNoSound",GetUnitXY(target))
				local tl = Location(GetUnitXY(target))
				PlaySoundAtPointBJ( gg_snd_Reflect, 100, tl, 0 )
				RemoveLocation(tl)
				BlzSetSpecialEffectYaw(eff,math.rad(GetUnitFacing(target)))
				DestroyEffect(eff)
				BlzSetEventDamage(0)
			end
		end


		if data.ReleaseLMB and data.Perk14 then  -- Зажата левая кнопка мыши и есть щит --Prometheus Прометей
			if dist >=25 then dist=25 end
			if 0 < dot then
				local eff=AddSpecialEffect("DefendCaster",GetUnitXY(target))
				BlzSetSpecialEffectYaw(eff,math.rad(AngleSource-180))
				DestroyEffect(eff)
				UnitAddVectorForce(target, AngleSource, dist / 3, dist, false)  -- отталкивание
				if data.Perk14A then
					FlyTextTagShieldXY(GetUnitX(target),GetUnitY(target),R2I(damage),GetOwningPlayer(target))
					BlzSetEventDamage(0)
				else
					FlyTextTagShieldXY(GetUnitX(target),GetUnitY(target),R2I(damage/2),GetOwningPlayer(target))
					BlzSetEventDamage(damage/2)
					--print("факт поглощения урона ™")
				end
			else
				DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Human\\HumanBlood\\HumanBloodFootman",GetUnitXY(target)))

				--print("boold")
				if GetUnitTypeId(caster)==DummyID or GetUnitTypeId(caster)==FourCC('e004') then
					--DestroyEffect(BlzSetSpecialEffectScale(AddSpecialEffect("D9_blood_effect1",GetUnitXY(target))),0.1)
					DestroyEffect(BlzSetSpecialEffectScale(AddSpecialEffect("D9_blood_effect1",GetUnitXY(caster))),0.1)
				end
			end
			if data.Perk12 and dot>0 then--
				if DistanceBetweenXY(GetUnitX(target),GetUnitY(target),GetUnitXY(caster))<=200 then
					local x,y=GetUnitXY(caster)
					--print("замораживаем "..GetUnitName(caster))
					local dummy=CreateUnit(GetOwningPlayer(target), DummyID, x, y, 0)--
					UnitAddAbility(dummy,FourCC('A00H'))
					UnitApplyTimedLife(dummy,FourCC('BTLF'),0.1)
					if Cast(dummy,0,0,caster) then
						--	print("успех")
					else
						--	print("провел")
					end
					SetUnitTimeScale(caster,0)
					SetUnitVertexColor(caster,60,200,255,240)
					BlzPauseUnitEx(caster, true)
					TimerStart(CreateTimer(), 3, false, function()
						SetUnitTimeScale(caster,1)
						SetUnitVertexColor(caster,255,255,255,255)
						BlzPauseUnitEx(caster, false)
						DestroyTimer(GetExpiredTimer())
					end)
				end
			end
		else
			--print("anydamage")
			if GetUnitTypeId(caster)==DummyID or GetUnitTypeId(caster)==FourCC('e004') then
			--	DestroyEffect(BlzSetSpecialEffectScale(AddSpecialEffect("D9_blood_effect1",GetUnitXY(target))),0.1)
				DestroyEffect(BlzSetSpecialEffectScale(AddSpecialEffect("D9_blood_effect1",GetUnitXY(caster))),0.1)
			end
		end
	end
	--любой получил урон




	if GetUnitTypeId(target)==FourCC('e009')  then --урон по тинику
		--local x,y=GetUnitXY()
		BlzSetEventDamage(damage*0.1)-- тини получает 10%% урона
		if damage>10 then
			local AngleSource = math.deg(AngleBetweenXY(GetUnitX(caster), GetUnitY(caster), GetUnitX(target), GetUnitY(target)))
			local eff=AddSpecialEffect("DefendCaster",GetUnitXY(target))
			BlzSetSpecialEffectYaw(eff,math.rad(AngleSource-180))
			DestroyEffect(eff)
			local tl = Location(GetUnitXY(caster))
			PlaySoundAtPointBJ( gg_snd_Reflect, 100, tl, 0 )
			RemoveLocation(tl)
		end
	end
	if GetUnitTypeId(target)==FourCC('o002')  and GetOwningPlayer(target)==Player(10) then --урон по кодою
		--print("урон по кодою")
		BlzSetEventDamage(0)
		local endX,endY=GetRectCenterX(gg_rct_KodoZone),GetRectCenterY(gg_rct_KodoZone)
		IssuePointOrder(target,"move",endX,endY)
		if IsUnitInRangeXY(target,endX,endY,120) then
			SetUnitOwner(target,casterOwner,true)
			--print("Ачивка кодоя")
			local data=HERO[GetPlayerId(casterOwner)]
			data.KodoCount=data.KodoCount+1-- считаем бездействие
			if not data.Perk8 then
				if data.KodoCount>=1 then
					data.Perk8=true
					BlzSetUnitArmor(caster,BlzGetUnitArmor(caster)+10)
					PerkUnlocker(data,8)
					--print("Рабочий поднял бунт")
					--Allian
				end
			end
			--Старт ИИ кодоя
			TimerStart(CreateTimer(), 10, true, function()
				if not UnitAlive(target) then DestroyTimer(GetExpiredTimer()) end
				if GetUnitCurrentOrder(target)~=String2OrderIdBJ("move") then
					local rx,ry=GetRandomInt(-500,500),GetRandomInt(-500,500)
					IssuePointOrder(target,"move", rx,ry)
				end
			end)
			TimerStart(CreateTimer(), 1, true, function()
				if not UnitAlive(target) then DestroyTimer(GetExpiredTimer()) end
				local e=nil
				GroupEnumUnitsInRange(perebor,GetUnitX(target),GetUnitY(target),600,nil)
				while true do
					e = FirstOfGroup(perebor)

					if e == nil then break end
					if UnitAlive(e) and IsUnitEnemy(e,GetOwningPlayer(target)) then
						--print("пытаемся скушать врага")
						--if Cast(target,0,0,e) then
						if IssueTargetOrder(target,"devour",e) then
							--print("успешно")
						else

						end
					end
					GroupRemoveUnit(perebor,e)
				end
			end)
		end
		TimerStart(CreateTimer(), 3, false, function()
			IssueImmediateOrder(target,"stop")-- стоп кодоя
			DestroyTimer(GetExpiredTimer())
		end)

	end
end


function InitDamage()
	local DamageTrigger = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		--TriggerRegisterPlayerUnitEvent(DamageTrigger, Player(i), EVENT_PLAYER_UNIT_DAMAGING) -- До вычета брони
		TriggerRegisterPlayerUnitEvent(DamageTrigger, Player(i), EVENT_PLAYER_UNIT_DAMAGED) -- После вычета брони
	end
	TriggerAddAction(DamageTrigger, OnPostDamage)
end





function UnitDamageArea(u,damage,x,y,range,ZDamageSource,EffectModel)
	local isdamage=false
	local e=nil
	local hero=nil



	--print("Поиск целей в на высоте "..ZDamageSource)
	--local mperebor=CreateGroup()
	GroupEnumUnitsInRange(perebor,x,y,range,nil)
	while true do
		e = FirstOfGroup(perebor)
		if e == nil then break end
		if UnitAlive(e) and UnitAlive(u) and IsUnitEnemy(e,GetOwningPlayer(u))  and true then --and IsUnitZCollision(e,ZDamageSource)  -- момент урона
			--print("вызов проблемной функции "..GetPlayerName(GetOwningPlayer(u)).." "..GetUnitName(u).." "..damage)
			if EffectModel~=nil then
				--print("эффеет")
				--local DE=AddSpecialEffect(EffectModel,GetUnitX(e),GetUnitY(e))
				--BlzSetSpecialEffectZ(DE,ZDamageSource)
				--DestroyEffect(DE)
			end
			if IsUnitType(u,UNIT_TYPE_HERO) then
				local data=HERO[GetPlayerId(GetOwningPlayer(u))]
				--if data.

				if data.HaveAFire then --урон от фаербола
					damage=damage*5
					data.HaveAFire=false
					if not data.Perk16 then
						UnitRemoveAbility(u,FourCC('A006'))
					end
					FlyTextTagCriticalStrike(e,I2S(R2I(damage)),GetOwningPlayer(u))
				end

			end
			UnitDamageTarget( u, e, damage, true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
			--print("урон прошёл для "..GetUnitName(e))
			isdamage=true
			hero=e
		end
		--ремонт
		if  true and UnitAlive(e) and IsUnitAlly(e,GetOwningPlayer(u)) and e~=u and IsUnitType(u,UNIT_TYPE_HERO)  then -- момент ремонта

			local data=HERO[GetPlayerId(GetOwningPlayer(u))]
			if GetUnitTypeId(e)==FourCC('n007') and damage>6 then-- попытка ударить свинку лечилку
				if DistanceBetweenXY(GetUnitX(u),GetUnitY(u),GetUnitXY(e))<=70 then
					local x,y=GetUnitXY(u)
					local mes=""
					if BlzGetLocale()=="ruRU" then
						mes="Герой полностью здоров"
					else
						mes="HP is full"
					end
					FlyTextTagHealXY(x,y,mes,GetOwningPlayer(u))
				end
			end
			if DistanceBetweenXY(GetUnitX(u),GetUnitY(u),GetUnitXY(e))<=200 and (IsUnitType(e,UNIT_TYPE_STRUCTURE) or IsUnitType(e,UNIT_TYPE_MECHANICAL)) then
				if GetUnitTypeId(e)==FourCC('n003') then-- костер
					data.FireCount=data.FireCount+1
					if not data.Perk9 then
						if data.FireCount>=5 then
							data.Perk9=true
							--print("разблокировка перка")
							PerkUnlocker(data,9)
						end
					end
					if data.Perk9 then
						UnitAddAbility(u,FourCC('A006'))
						data.HaveAFire=true
					end
				end
				--print("лечим")
				if not data.OnCharge and data.ShieldForce then-- нельзя чинить при рывке щита и при толчке щитом
					local heal=HealUnit(e,BlzGetUnitBaseDamage(u,0))
					data.Repairs=data.Repairs+heal
					data.RevoltSec=0
					if not data.Perk6 then
						if data.Repairs>=1000 then
							data.Perk6=true
							PerkUnlocker(data,6)
						end
					end
				end
			end
			hero=e
		end
		GroupRemoveUnit(perebor,e)
	end
	--DestroyGroup(mperebor)
	--mperebor=nil
	if PointContentDestructable(x,y,range,true,1+damage/4,u) then	isdamage=true	end
	return isdamage, hero
end

function IsUnitZCollision(hero,ZDamageSource)
	local zcollision=false
	local z=GetUnitZ(hero)

	if  ZDamageSource+60>=z and ZDamageSource-60<=z then
		zcollision=true
	else
		--print("Высота снаряда="..ZDamageSource.."Высота юнита="..z)
	end
	return zcollision
end



GlobalRect=Rect(0,0,0,0)
function PointContentDestructable (x,y,range,iskill,damage,hero)
	local content=false
	if range==nil then range=80 end
	if iskill==nil then iskill=false end
	--print(GetUnitName(hero))
	SetRect(GlobalRect, x - range, y - range, x + range, y +range)
	EnumDestructablesInRect(GlobalRect,nil,function ()
		local d=GetEnumDestructable()
		if GetDestructableLife(d)>0 then
			content=true
			local data=HERO[GetPlayerId(GetOwningPlayer(hero))]
			if IsUnitType(hero,UNIT_TYPE_HERO) then
				if data.HaveAFire then
					damage=damage*5
					data.HaveAFire=false
					if not data.Perk16 then
						UnitRemoveAbility(hero,FourCC('A006'))
					end
					--FlyTextTagCriticalStrike(e,I2S(R2I(damage)),GetOwningPlayer(u))
				end
			end


			if iskill then
				if not IsDestructableInvulnerable(d) then
					SetDestructableLife(d,GetDestructableLife(d)-damage)
				end



				if GetDestructableLife(d)>=1 then
					SetDestructableAnimation(d,"Stand Hit")
				else

					if DistanceBetweenXY(GetDestructableX(d), GetDestructableY(d),GetUnitXY(hero))<=200 then
						if data.IsWood then
							--print("Некуда класть звук")
							if GetDestructableTypeId(d)~=FourCC('LTrc') then
								CreateFreeWood(GetDestructableX(d), GetDestructableY(d))
							end
						else
							data.IsWood=true
							--print("Добавляем 1 дерева для "..GetUnitName(hero))
						end
					else
						--print(GetDestructableName(d))
						if GetDestructableTypeId(d)~=FourCC('LTrc') then
							CreateFreeWood(GetDestructableX(d), GetDestructableY(d))
						end
					end

				end
				if GetDestructableTypeId(d)==FourCC('LTrc') and not IsDestructableInvulnerable(d) then --блок голема, камень
					KillDestructable(d)
					TotalStones=TotalStones+1
					local  new=CreateUnit(Player(10), FourCC('n002'), GetDestructableX(d), GetDestructableY(d), 0)

					TimerStart(CreateTimer(),10,false, function()
						KillUnit(new)
						DestroyTimer(GetExpiredTimer())
					end)
				end

				if GetDestructableTypeId(d)==FourCC('LOcg') then -- клетка с мурлоками
					KillDestructable(d)
					local mid={
						FourCC('nmrr'),
						FourCC('nmrm'),
						FourCC('nmrl'),
						FourCC('nmtw')
					}
					local  new=CreateUnit(Player(10), mid[GetRandomInt(1,#mid)], GetDestructableX(d), GetDestructableY(d), 0)
					IssuePointOrder(new,"attack",0,0)
					--print("СОзданный мурлок идёт атаковать базу")

				end

			end
		else
			--local data=HERO(UnitGetPid(hero))
			--print("атака по мертвому "..GetUnitName(hero))
			--data.IsWood=true
		end
	end)
	return content
end

function CreateFreeWood(x,y)
	local  new=CreateUnit(Player(5), FourCC('e002'),x,y , 0)
	UnitAddAbility(new,FourCC('A000'))
	IssueImmediateOrder(new,"WindWalk")
	SetUnitInvulnerable(new,true)
end
