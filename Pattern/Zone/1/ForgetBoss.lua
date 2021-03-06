---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 11.03.2020 1:03
FirstEnterBoss=false

function BossZoneInit()
	ThisTriggerBoss1 = CreateTrigger()
	TriggerRegisterEnterRectSimple(ThisTriggerBoss1, gg_rct_BossZone1)
	--local FirstEnter=false
	TriggerAddAction(ThisTriggerBoss1, function()
		local hero=GetTriggerUnit()
		if IsUnitType(hero,UNIT_TYPE_HERO) then
			--print("Запускаем Триггер")
			local boss=Kraken--FindUnitOfType(FourCC('n004')) -- определение босса
			CreateFogModifierRectBJ(true, GetOwningPlayer(hero), FOG_OF_WAR_VISIBLE, gg_rct_BossZone1)
			BlzSetUnitMaxHP(boss,10000)
			HealUnit(boss,10000)
			--DisableTrigger(GetTriggeringTrigger())
			EnumDestructablesInRectAll(gg_rct_Boss1Gate, function()	DestructableRestoreLife(GetEnumDestructable(), GetDestructableMaxLife(GetEnumDestructable()), true) end)
			if not FirstEnterBoss then
				FirstEnterBoss=true
				StartTentacleBossAI(boss)
			--	print("Запускаем ИИ босса")
			end
		end
	end)
end
faze=0
function StartTentacleBossAI(hero)
	--local faze=0
	local bossX,bossY=GetUnitXY(hero)
	local p=GetOwningPlayer(hero)



	TimerStart(CreateTimer(), 10, true, function()
		faze=faze+1
		--print("Фаза "..faze)
		if not AnyHeroContainInRect(gg_rct_BossZone1) then
			--print("Все герои вышли из зоны, восстановление зоны")
			FirstEnterBoss=false
			faze=0
			DestroyTimer(GetExpiredTimer())
			EnumDestructablesInRectAll(gg_rct_Boss1Gate, function()	KillDestructable(GetEnumDestructable())	end)
			CreateFogModifierRectBJ(false, GetOwningPlayer(HERO[0].UnitHero), FOG_OF_WAR_VISIBLE, rect)

		end
		if faze==1 then -- тентакли из воды
			TimerStart(CreateTimer(), 2, true, function()
				--print("Маркер оплетения точки")
				local e=nil
				GroupEnumUnitsInRange(perebor, bossX, bossY,1200,nil)
				while true do
					e = FirstOfGroup(perebor)
					if e == nil then break end
					if UnitAlive(e) and IsUnitEnemy(e,p) then
						local nx,ny=0,0
						for i=0,5 do
							nx,ny=MoveXY(GetUnitX(e),GetUnitY(e),200,60*i)
							CreateTorrent(nx,ny,2)
							CreateTentacle(hero,nx,ny,5,1)
						end
					end
					GroupRemoveUnit(perebor,e)
				end
				if faze~=1 or not UnitAlive(hero)  then
					DestroyTimer(GetExpiredTimer())
				end
			end)
		elseif faze==2 then
			TimerStart(CreateTimer(), 1, true, function()
				--print("Попытки притянуть героев")
				local e=nil
				GroupEnumUnitsInRange(perebor, bossX, bossY,1300,nil)
				while true do
					e = FirstOfGroup(perebor)
					if e == nil then break end
					if UnitAlive(e) and IsUnitEnemy(e,p) then
						local angle=-180+AngleBetweenXY(GetUnitX(hero),GetUnitY(hero),GetUnitX(e),GetUnitY(e))/bj_DEGTORAD
						UnitAddVectorForce(e,angle,5,DistanceBetweenXY(GetUnitX(hero),GetUnitY(hero),GetUnitX(e),GetUnitY(e)))
					end
					GroupRemoveUnit(perebor,e)
				end
				if faze~=2  then -- тут так задумано or not UnitAlive(hero)
				--	print("конец фазы притягивания")
					DestroyTimer(GetExpiredTimer())
				end
			end)
		elseif faze==3 then --большая шупальца
			--Units\Creeps\ForgottenOne\ForgottenOneTent
			local big=AddSpecialEffect("Units\\Creeps\\ForgottenOne\\ForgottenOneTent",bossX,bossY)
			BlzSetSpecialEffectScale(big,1.7)
			BlzPlaySpecialEffect(big,ANIM_TYPE_ATTACK)
			local k=GetRandomInt(0,11)
			TimerStart(CreateTimer(), 0.7, false, function()--задержка
				TimerStart(CreateTimer(), 1, true, function()-- анимация ударов
					--print("play")
					BlzPlaySpecialEffect(big,ANIM_TYPE_ATTACK)
					if faze~=3 or not UnitAlive(hero)  then
						DestroyTimer(GetExpiredTimer())
						DestroyEffect(big)
					end
				end)
			end)
			TimerStart(CreateTimer(), 1, true, function()--удары
				BlzSetSpecialEffectYaw(big,math.rad(k*30))
				local ax,ay=MoveXY(bossX,bossY,330,k*30)
				CreateTorrent(ax,ay,3)
				UnitDamageArea(hero,250,ax,ay,150)

				--BlzPlaySpecialEffect(big,ANIM_TYPE_ATTACK)

				k=k+1
				--print(k)
				if faze~=3 or not UnitAlive(hero)  then
					DestroyTimer(GetExpiredTimer())
					DestroyEffect(big)
				end
			end)
		elseif faze==4 then-- буллет хелл
			faze=0
			TimerStart(CreateTimer(), 1, true, function()
				--local angle=GetRandomInt(0,360)
				local factor= GetRandomInt(30,50)
				for i=1,12 do
					SingleCannon(hero,factor*i,"Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl")
				end
				if faze~=0 or not UnitAlive(hero)  then
					DestroyTimer(GetExpiredTimer())
				end
			end)
		end
		if not UnitAlive(hero) then
			print("Босс умер")
			faze=0
			local new=CreateUnit(GetOwningPlayer(boss), FourCC('o000'),bossX ,bossY , GetRandomInt(0,360))
			SetUnitTimeScale(new,-1)
			SetUnitAnimation(new,"Death")
			DestroyTrigger(ThisTriggerBoss1)
			EnumDestructablesInRectAll(gg_rct_Boss1Gate, function()	KillDestructable(GetEnumDestructable())	end)
			EnumDestructablesInRectAll(gg_rct_Boss1Gate1, function() KillDestructable(GetEnumDestructable()) end)
			DestroyTimer(GetExpiredTimer())

		end
	end)
end

function CreateTentacle(boss,x,y,time, delay)
	local new
	TimerStart(CreateTimer(), delay, false, function()
		new=CreateUnit(GetOwningPlayer(boss), FourCC('nfgt'), x ,y, GetRandomInt(0,360))
		SetUnitAnimation(new,"birth")
		UnitApplyTimedLife(new,GetUnitTypeId(new),time)
	end)

	return new
end


function AnyHeroContainInRect(rect)
	local contain=false
	local PIG=1--Player In Game
	for i=0,PIG-1 do
		if  RectContainsUnit(rect,HERO[i].UnitHero) then
			contain=true
		else
			CreateFogModifierRectBJ(false, GetOwningPlayer(HERO[i].UnitHero), FOG_OF_WAR_VISIBLE, rect)
			CreateFogModifierRectBJ(true, GetOwningPlayer(HERO[i].UnitHero), FOG_OF_WAR_MASKED, rect)
			CreateFogModifierRectBJ(true, GetOwningPlayer(HERO[i].UnitHero), FOG_OF_WAR_FOGGED, rect)
		end
	end
	return contain
end

function TentacleInFog()
	TimerStart(CreateTimer(), 10,true, function()
		--print("период")
		if not UnitAlive(Kraken) then
			DestroyTimer(GetExpiredTimer())
		end
		for i=0,3 do
			local hero=HERO[i].UnitHero
			--print("i="..i..GetUnitName(hero))
			if not Kraken then print("Кракен не определён") end
			if IsUnitInRange(Kraken,hero,2800) or RectContainsCoords(gg_rct_TestFog,GetUnitXY(hero)) then
				--print("призыв")
				CreateTorrent(GetUnitXY(hero))
				CreateTentacle(Kraken,GetUnitX(hero),GetUnitY(hero),10,0.5)
			end
		end
	end)
end