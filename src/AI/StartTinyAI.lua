---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 02.05.2020 2:43
---
stoneEffModel = "Abilities\\Weapons\\RockBoltMissile\\RockBoltMissile"
Special = "Abilities\\Weapons\\ProcMissile\\ProcMissile"
function StartTinyAI(xs, ys)
	local boss = FindUnitOfType(FourCC('e009'))

	local BossFight=true
	UnitAddAbility(boss, FourCC('Abun'))
	SetUnitPosition(boss, 1420, 2597)
	SetUnitOwner(boss, Player(10), true)
	local range = 1000
	local x, y = GetUnitXY(boss)
	SetRect(GlobalRect, x - range, y - range, x + range, y + range)
	EnumDestructablesInRect(GlobalRect, nil, function()
		local d = GetEnumDestructable()
		local dx, dy = GetDestructableX(d), GetDestructableY(d)
		if IsUnitInRangeXY(boss, dx, dy, range) then
			KillDestructable(d)
			--print("очистка зоны")
		end
	end)

	--перенос героев в случайную точку
	for i = 0, 3 do
		local hero = HERO[i].UnitHero
		if IsUnitInRangeXY(hero, xs, ys, 300) then
			--print("герои перенесены")
			SetUnitPosition(hero, 1420 + GetRandomInt(-1, 1) * 400, 2597 + GetRandomInt(-1, 1) * 400)
		end
	end

	local FW = CreateFogModifierRectBJ(false, Player(0), FOG_OF_WAR_VISIBLE, GlobalRect)
	FogModifierStart(FW)

	--print("создаём каменный круг")
	local newd = {}
	local maxd = 72
	for i = 1, maxd do
		local angle = 360 / maxd
		local dx, dy = MoveXY(x, y, range * .8, angle * i)
		newd[i] = CreateDestructable(FourCC('LTrc'), dx, dy, 0, GetRandomInt(1, 1), GetRandomInt(1, 5))
		SetDestructableInvulnerable(newd[i], true)
		--print("создан элемент "..i)
	end

	local phase = 2 --стартовая фаза
	local sec = 0
	local PhaseOn = true
	local OnAttack=true
	TimerStart(CreateTimer(), 1, true, function() --каждую секунду
		local bx,by=GetUnitXY(boss)

		if not UnitAlive(boss) then-- Место где босс умер тиник
			StartSound(bj_questCompletedSound)
			for i = 1, maxd do
				KillDestructable(newd[i])
			end
			DestroyTimer(GetExpiredTimer())
			phase = 0
			--print("Дайм нарграду")
			for _=1,14 do
				local r=GetRandomInt(-100,100)
				local r2=GetRandomInt(-100,100)
				CreateFreeWood(bx+r,by+r2)
			end
		else --Проверяем есть ли живые герои, когда тиник жив
			if BossFight then
				local k=0
				for i = 0, 3 do
					local hero = HERO[i].UnitHero
					if IsUnitInRange(hero, boss, 1000) then
						k=k+1
					end

					--print("Отталкивание для особо умных")
					if OnAttack then
						if IsUnitInRange(hero, boss, 250) then
							--SetUnitTimeScale(boss,-1)
							OnAttack=false
							local angle=AngleBetweenUnits(boss,hero)
							SetUnitFacing(boss,angle)
							--SetUnitAnimation(boss,"Attack")

							SetUnitAnimationByIndex(boss,3)
							UnitAddVectorForce(hero,angle,30,300,false)
							TimerStart(CreateTimer(), 1, false, function()
								OnAttack=true
								SetUnitAnimation(boss,"stand")
								SetUnitTimeScale(boss,1)
							end)
						end

					end
				end
				if k==0 then
					BossFight=false
					phase=0
					--print("Нет героев ломаем стену")
					for i = 1, maxd do
						KillDestructable(newd[i])
					end
				end
			end
		end
		local xb, yb = GetUnitXY(boss)
		if BossFight then -- если идёт бой
			sec = sec + 1
			if sec >= 10 then
				sec = 0
				phase = phase + 1
				PhaseOn = true
				--print("phase " .. phase)
				if phase >= 4 then
					phase = 0
				end
			end
			--фазы
			if phase == 1 and PhaseOn then
				PhaseOn = false
				--print("стреляем камнями")
				TimerStart(CreateTimer(), 1.5, true, function()
					if UnitAlive(boss) then
						SetUnitAnimationByIndex(boss,2)
					end
					if phase ~= 1 or not UnitAlive(boss) then
						DestroyTimer(GetExpiredTimer())
					end
				end)

				TimerStart(CreateTimer(), .1, true, function()
					local angle = GetRandomInt(0, 359)
					local eff = stoneEffModel
					if GetRandomInt(1, 5) == 1 then
						eff = Special
					end
					CreateAndForceBullet(boss, angle, 15, eff, xb, yb, 50)
					if phase ~= 1 or not UnitAlive(boss) then
						DestroyTimer(GetExpiredTimer())
					end
				end)
			end
			if phase == 2 and PhaseOn then
				PhaseOn = false
				--print("Падающие камни")
				local effmodel = "Doodads\\LordaeronSummer\\Terrain\\LoardaeronRockChunks\\LoardaeronRockChunks3"
				TimerStart(CreateTimer(), .5, true, function() -- случайные

					SetUnitAnimationByIndex(boss,3)
					local rx,ry=GetRandomInt(-500,500),GetRandomInt(-500,500)
					MarkAndFall(bx+rx,by+ry,effmodel,boss)
					SetUnitFacing(boss,AngleBetweenXY(GetUnitX(boss),GetUnitY(boss),bx+rx,by+ry)/bj_DEGTORAD)
					if phase ~= 2 then
						DestroyTimer(GetExpiredTimer())
						ResetUnitAnimation(boss)
					end
				end)
				TimerStart(CreateTimer(), 1.5, true, function()--по героям
					for i = 0, 3 do
						local hero = HERO[i].UnitHero
						if IsUnitInRange(hero, boss, 1000) then
							MarkAndFall(GetUnitX(hero),GetUnitY(hero),effmodel,boss)
						end
					end


					if phase ~= 2 then
						DestroyTimer(GetExpiredTimer())
					end
				end)
			end
			if phase == 3 and PhaseOn and sec==5 then -- оживление големов
				PhaseOn = false
				SetRect(GlobalRect, x - range, y - range, x + range, y + range)
				EnumDestructablesInRect(GlobalRect, nil, function()
					local d = GetEnumDestructable()
					local dx, dy = GetDestructableX(d), GetDestructableY(d)
					if IsUnitInRangeXY(boss, dx, dy, range*.5) then
						if GetDestructableLife(d)>1 then
							local  new=CreateUnit(Player(10), FourCC('n002'), dx, dy, 0)

							TimerStart(CreateTimer(),10,false, function()
								KillUnit(new)
								DestroyTimer(GetExpiredTimer())
							end)
							KillDestructable(d)
						end
					end
				end)

				if phase ~= 3 then
					DestroyTimer(GetExpiredTimer())
				end
			end

		else-- перезапуск боссфайта
			local k=0
			for i = 0, 3 do
				local hero = HERO[i].UnitHero
				if IsUnitInRange(hero, boss, 300) then
					k=k+1
				end
			end
			if k>=1 then
				--print("повторно камни")
				BossFight=true
				for i = 1, maxd do
					local angle = 360 / maxd
					local dx, dy = MoveXY(x, y, range * .8, angle * i)
					newd[i] = CreateDestructable(FourCC('LTrc'), dx, dy, 0, GetRandomInt(1, 1), GetRandomInt(1, 5))
					SetDestructableInvulnerable(newd[i], true)
					--print("создан элемент "..i)
				end
			end
		end--конец
	end)
end

function MarkAndFall(x,y,effModel,hero)
	local mark=AddSpecialEffect("Snipe Target",x,y)
	BlzSetSpecialEffectScale(mark,5)
	TimerStart(CreateTimer(), 2, false, function()

		local FallenEff=AddSpecialEffect(effModel,x,y)
		BlzSetSpecialEffectZ(FallenEff,1000)
		BlzSetSpecialEffectYaw(FallenEff, math.rad(GetRandomReal(0,360)))
		TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
			local z=BlzGetLocalSpecialEffectZ(FallenEff)
			BlzSetSpecialEffectZ(FallenEff,z-50)
			if z<=GetTerrainZ(x,y) then
				DestroyEffect(mark)
				BlzSetSpecialEffectPosition(mark,5000,5000,0)
				DestroyTimer(GetExpiredTimer())
				DestroyEffect(FallenEff)
				local nd=CreateDestructable(FourCC('LTrc'), x, y, 0, GetRandomInt(1, 1), GetRandomInt(1, 5))
				SetDestructableInvulnerable(nd,true)
				DestroyEffect(AddSpecialEffect("ThunderclapCasterClassic",x,y))
				UnitDamageArea(hero,100,x,y,150) --при падении камня
				for i = 0, 3 do
					local herod = HERO[i].UnitHero
					if IsUnitInRangeXY(herod, x,y, 150) then
						HealUnit(herod,-200)
					end
				end


				TimerStart(CreateTimer(), 5, false, function()
					KillDestructable(nd)
				end)
			end
		end)
	end)
end