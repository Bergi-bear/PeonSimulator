---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 10.01.2020 22:05
--
---Глобалки
TIMER_PERIOD = 0.03125
HERO = {}
GetLocalON=true--отключает и выключает полностью возможности гетлокалплеер
do
	local InitGlobalsOrigin = InitGlobals -- записываем InitGlobals в переменную
	function InitGlobals()
		InitGlobalsOrigin() -- вызываем оригинальную InitGlobals из переменной
		perebor=CreateGroup()
		ConeImage=nil
		InitGameCore()
		InitMouseMoveTrigger()
		InitDamage()
		InitUnitDeath()
		InitAllZones()
		LeavePlayer()
		HeroEnterSaws()
		InitTrig_Entire()
		InitSpellTrigger()

		--Trig_Nahkampf_Initialisierung_Actions()
		InitCDSystem()
		--StartFrameCD(10)
	end

end

--[[do
	local IssueImmediateOrder_Original = IssueImmediateOrder
	function IssueImmediateOrder (whichUnit, order)
		-- some actions
		local success=IssueImmediateOrder_Original(whichUnit, order)
		if not success then
			print("Error "..GetUnitName(whichUnit))
		end
		return success
	end
end]]

--DestroyTimer
do
	local DestroyTimer_Original = DestroyTimer
	function DestroyTimer(whichTimer)
		PauseTimer(whichTimer)
		DestroyTimer_Original(whichTimer)
	end
end




function InitGameCore()
	--создаём героев
	--BlzEnableSelections(false,false)
	--EnableSelect(false,false)
	--EnableDragSelect(false, false)
	CreateWoodFrame()
	HideEverything()
	DontMove()
	TimerStart(CreateTimer(), 0.5, false, function()
		--ButtonPress()
		--CreateLanguageDialog()
		for i=0,3 do
			--if GetPlayerSlotState(Player(i)) == PLAYER_SLOT_STATE_PLAYING and GetPlayerController(Player(i)) == MAP_CONTROL_USER then
				PerkButtonLineNonLocal(i,0)
				--CreateStatusBar(i)
		--	end
		end
	end)
	TimerStart(CreateTimer(), 1, false, function()
		CreateMouseHelper()
		CreateLocalImages()
		--CreateVisualPointer()
		--PlayerPlaying()
		--PerkButtonLineNonLocal()-- табличка перков новая
	end)
	--TestFrame()
	--VisualUnlock()--убирание выделение каждые 10 сек

	CreateAndStartClock()
	-----Настоящая инициализация
	for i = 0, 3 do
		-- Число игроков
		HERO[i] = {
			Lang=0, --0 русский , 1 английский
			ReleaseW = false,
			ReleaseS = false,
			ReleaseA = false,
			ReleaseD = false,
			Acceleration = 0,
			ReleaseLMB = false,
			ReleaseRMB = false,
			SpeedBase = 9,
			UnitHero = CreateUnit(Player(i), FourCC('H000'), GetPlayerStartLocationX(Player(i)), GetPlayerStartLocationY(Player(i)), GetRandomReal(0, 360)),
			CurrentSpeed = 0,
			WeaponIndex = 1,
			AngleForce = 0, --типа какой-то уго для отталкивания
			IsDisabled = false,
			pid = i,
			legs = CreateUnit(Player(i), FourCC('o000'), GetPlayerStartLocationX(Player(i)), GetPlayerStartLocationY(Player(i)), 0),
			isattack = false,
			AttackTime = 0,
			IsWood = false,
			ForcesCount = 0,
			sec = 0, --костылики
			sec2 = 0, -- для анимаций
			IsMouseMove = false,
			LastMouseX = 0,
			LastTurn = 0,
			ForceRemain = {},
			ForceAngle = {},
			ForceSpeed = {},
			IsForce = {},
			CartUnit = nil,
			CartAngle = 0,
			WalkCart = false,
			ChargeIsReady = true,
			FrozenShield = 0,
			ReviveOnStay = false,
			ReviveOnBase = true,
			ShieldForce = true, -- толчек щитом
			ShieldOnCD=false,
			PlayerIsLeave = false,
			AngleMouse=0,
			--ChargeEff=nil,
			---накопление перков
			SingleWoodCount = 0,
			RevoltSec = 0,
			temRevolt=0,
			Dies = 0,
			TotalWay = 0,
			Kills = 0,
			Repairs = 0,
			Heals = 0,
			KodoCount = 0,
			FireCount = 0,
			HaveAFire = false,
			FirePointer=false,
			StoneCount = 0,
			WolfCount = 0,
			WolfHelper = nil,
			TreeCountOnTB = 0,
			SheepCount = 0,
			Thor=true,
			FBIsReady=true,
			---открытие перков
			Perk1 = false, --Работник месяца
			Perk1A = false, -- Автоматическая добычка
			Perk2 = false, -- Бунт
			Perk3 =  false, -- Суицидник
			Perk4 = false, -- Лесной болван
			Perk5 = false, -- Убийца
			Perk6 = false, -- Ученика кузнеца
			Perk7 = false, -- Ожирение
			Perk7A = false, -- Ожирение 2 степени
			Perk8 = false, -- Кодой
			Perk9 = false, -- Кирка
			Perk10 = false, -- парирование
			Perk11 = false, -- Технологии людей
			Perk12 = false, -- ледяной щит
			Perk13 = false, -- волк
			Perk14 = true, -- Щит 50 всегда ВКл, а то щит сломается
			Perk14A = false, -- щит 100
			Perk15 = false, -- овечья болезнь
			Perk16 = false, -- Фаерболы
			Perk17 = true, --Рывок
			----
			MHoldSec = 0, -- удержания мыши для подсказки
			Reflection = false, --время на отражение снаряда
			--- ИИ
			RangeDesMove = 0,
			--- заморозка
			IsFrizzyDisabled = false,
			FrozenTime = 0,
			FrizzyEff = nil,
			--фреймы
			ToolTip = {},
			PekFrame = {},
			LockFrame = {},
			VisualSelectorFrame = {},
			ReloadIco={},
			SelfFrame={},
			HeroIco=nil,
			CircleImage=nil,
			cx=0,
			cy=0,
			ShowSplat=false,
			Wagon=nil,
			Turret=nil,
			TurretArrow=nil,
			EnterInTurret=false,
			Compass=nil,
			CompassX=0,
			CompassY=0,
		}

		if HERO[i] then
			local hero = HERO[i].UnitHero
			SelectUnitForPlayerSingle(hero, GetOwningPlayer(hero))
			RegisterCollision(hero)
			MakeUnitAllAlly(hero)
			HealthBarAdd(hero)
			BlzPauseUnitEx(hero,true)
			AddSpecialEffectTarget("GeneralHeroGlow", hero, "origin")
			SetUnitColor(hero, ConvertPlayerColor(i))
			PatchTest(hero)
			--UnitAddAbility(hero,FourCC('A00O')) --Режим бАгов
			--UnitAddItemById(hero,FourCC('I002'))
			--UnitAddItemById(hero,FourCC('I002'))
			--UnitAddItemById(hero,FourCC('I002'))
			--UnitAddItemById(hero,FourCC('I002'))
			--UnitAddItemById(hero,FourCC('I002'))
			--UnitAddItemById(hero,FourCC('I002'))

			if GetPlayerController(GetOwningPlayer(hero)) == MAP_CONTROL_COMPUTER or GetPlayerSlotState(GetOwningPlayer(hero)) ~= PLAYER_SLOT_STATE_PLAYING  then
				StartPeonAI(hero)
			end

			--if(i>0) then
			--	StartPeonAI(hero)
			--end

			--print("111111")
		end
	end

	-----------------------------------------------------------------OSKEY_W
	local gg_trg_EventUpW = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		BlzTriggerRegisterPlayerKeyEvent(gg_trg_EventUpW, Player(i), OSKEY_W, 0, true)
		BlzTriggerRegisterPlayerKeyEvent(gg_trg_EventUpW, Player(i), OSKEY_UP, 0, true)
	end
	TriggerAddAction(gg_trg_EventUpW, function()
		local pid = GetPlayerId(GetTriggerPlayer())
		local data = HERO[pid]
		if not data.ReleaseW and not data.IsFrizzyDisabled and UnitAlive(data.UnitHero) then
			data.ReleaseW = true
			if not data.OnCharge then
				UnitAddVectorForce(data.UnitHero, 90, 10, 30)
			end
			SetUnitAnimationByIndex(data.legs, PeonIndexWalk)
		end
	end)
	local TrigDepressW = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		BlzTriggerRegisterPlayerKeyEvent(TrigDepressW, Player(i), OSKEY_W, 0, false)
		BlzTriggerRegisterPlayerKeyEvent(TrigDepressW, Player(i), OSKEY_UP, 0, false)
	end
	TriggerAddAction(TrigDepressW, function()
		local pid = GetPlayerId(GetTriggerPlayer())
		local data = HERO[pid]
		data.ReleaseW = false
	end)
	-----------------------------------------------------------------OSKEY_S
	local gg_trg_EventUpS = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		BlzTriggerRegisterPlayerKeyEvent(gg_trg_EventUpS, Player(i), OSKEY_S, 0, true)
		BlzTriggerRegisterPlayerKeyEvent(gg_trg_EventUpS, Player(i), OSKEY_DOWN, 0, true)
	end
	TriggerAddAction(gg_trg_EventUpS, function()
		local pid = GetPlayerId(GetTriggerPlayer())
		local data = HERO[pid]
		if not data.ReleaseS and not data.IsFrizzyDisabled and UnitAlive(data.UnitHero) then
			data.ReleaseS = true
			if not data.OnCharge then
				UnitAddVectorForce(data.UnitHero, 270, 10, 30)
			end
			SetUnitAnimationByIndex(data.legs, PeonIndexWalk)
		end
	end)
	local TrigDepressS = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		BlzTriggerRegisterPlayerKeyEvent(TrigDepressS, Player(i), OSKEY_S, 0, false)
		BlzTriggerRegisterPlayerKeyEvent(TrigDepressS, Player(i), OSKEY_DOWN, 0, false)
	end
	TriggerAddAction(TrigDepressS, function()
		local pid = GetPlayerId(GetTriggerPlayer())
		local data = HERO[pid]
		data.ReleaseS = false
	end)
	-----------------------------------------------------------------OSKEY_D
	local TrigPressD = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		BlzTriggerRegisterPlayerKeyEvent(TrigPressD, Player(i), OSKEY_D, 0, true)
		BlzTriggerRegisterPlayerKeyEvent(TrigPressD, Player(i), OSKEY_RIGHT, 0, true)
	end
	TriggerAddAction(TrigPressD, function()
		local pid = GetPlayerId(GetTriggerPlayer())
		local data = HERO[pid]
		if not data.ReleaseD and not data.IsFrizzyDisabled and UnitAlive(data.UnitHero) then
			data.ReleaseD = true
			if not data.OnCharge then
				UnitAddVectorForce(data.UnitHero, 0, 10, 30)
			end
			SetUnitAnimationByIndex(data.legs, PeonIndexWalk)
		end
	end)
	local TrigDePressD = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		BlzTriggerRegisterPlayerKeyEvent(TrigDePressD, Player(i), OSKEY_D, 0, false)
		BlzTriggerRegisterPlayerKeyEvent(TrigDePressD, Player(i), OSKEY_RIGHT, 0, false)
	end
	TriggerAddAction(TrigDePressD, function()
		local pid = GetPlayerId(GetTriggerPlayer())
		local data = HERO[pid]
		data.ReleaseD = false
	end)
	-----------------------------------------------------------------OSKEY_A
	local TrigPressA = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		BlzTriggerRegisterPlayerKeyEvent(TrigPressA, Player(i), OSKEY_A, 0, true)
		BlzTriggerRegisterPlayerKeyEvent(TrigPressA, Player(i), OSKEY_LEFT, 0, true)
	end
	TriggerAddAction(TrigPressA, function()
		local pid = GetPlayerId(GetTriggerPlayer())
		local data = HERO[pid]
		if not data.ReleaseA and not data.IsFrizzyDisabled and UnitAlive(data.UnitHero) then
			if not data.OnCharge then
				UnitAddVectorForce(data.UnitHero, 180, 10, 30)
			end
			data.ReleaseA = true
			SetUnitAnimationByIndex(data.legs, PeonIndexWalk)
		end
	end)
	local TrigDePressA = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		BlzTriggerRegisterPlayerKeyEvent(TrigDePressA, Player(i), OSKEY_A, 0, false)
		BlzTriggerRegisterPlayerKeyEvent(TrigDePressA, Player(i), OSKEY_LEFT, 0, false)
	end
	TriggerAddAction(TrigDePressA, function()
		local pid = GetPlayerId(GetTriggerPlayer())
		local data = HERO[pid]
		data.ReleaseA = false
	end)
	-----------------------------------------------------------------LMB SWAP RMB
	local TrigPressLMB = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		TriggerRegisterPlayerEvent(TrigPressLMB, Player(i), EVENT_PLAYER_MOUSE_DOWN)
	end
	TriggerAddAction(TrigPressLMB, function()
		--print("any")
		if BlzGetTriggerPlayerMouseButton() == MOUSE_BUTTON_TYPE_RIGHT then
			--это леваый клик всё внутри LMB

			local pid = GetPlayerId(GetTriggerPlayer())
			local data = HERO[pid]
			if  UnitAlive(data.UnitHero) then
				if not data.ReleaseLMB then
					data.ReleaseLMB = true
				end
				if data.ReleaseRMB and data.ShieldForce then
					-- толчек щитом
					--print("mini force")
					data.ShieldForce = false
					local x, y = MoveXY(GetUnitX(data.UnitHero), GetUnitY(data.UnitHero), 55, GetUnitFacing(data.UnitHero))
					local _, DamagingUnit= UnitDamageArea(data.UnitHero, 1, x, y, 100)
					local angleU = AngleBetweenUnits(data.UnitHero, DamagingUnit)
					local eff = AddSpecialEffect("DefendCaster", x, y)
					BlzSetSpecialEffectYaw(eff, math.rad(GetUnitFacing(data.UnitHero)))
					DestroyEffect(eff)

					if IsUnitType(DamagingUnit, UNIT_TYPE_HERO) then
						UnitAddVectorForce(DamagingUnit, angleU, 10, 50, false)
					else
						if GetUnitTypeId(DamagingUnit) ~= FourCC('o007') then
							UnitAddForce(DamagingUnit, angleU, 10, 50)
						end
					end

					TimerStart(CreateTimer(), 0.3, false, function()
						data.ShieldForce = true
						DestroyTimer(GetExpiredTimer())
					end)
				end
				--local hero=data.UnitHero
				data.AttackTime = 0.0
				if data.Perk14 then
					if data.Perk14A then
						UnitAddAbility(data.UnitHero, FourCC('A00P'))
					else
						UnitAddAbility(data.UnitHero, FourCC('A007'))
					end
					if data.Perk12 then
						UnitAddAbility(data.UnitHero, FourCC('A00I'))--эффект мороза
					end
					if data.IsWood then
						local x, y = GetUnitXY(data.UnitHero)
						CreateFreeWood(MoveXY(x, y, -60, data.LastTurn))
						data.IsWood = false
					end
				end
			end
		end
	end)
	local TrigDePressLMB = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		TriggerRegisterPlayerEvent(TrigDePressLMB, Player(i), EVENT_PLAYER_MOUSE_UP)
	end

	TriggerAddAction(TrigDePressLMB, function()
		--print("any")
		if BlzGetTriggerPlayerMouseButton() == MOUSE_BUTTON_TYPE_RIGHT then
			local pid = GetPlayerId(GetTriggerPlayer())
			local data = HERO[pid]
			data.ReleaseLMB = false
			UnitRemoveAbility(data.UnitHero, FourCC('A007'))
			UnitRemoveAbility(data.UnitHero, FourCC('A00P'))
			UnitRemoveAbility(data.UnitHero, FourCC('A00I'))
		end
	end)
	-----------------------------------------------------------------RMB swap LMB
	local TrigPressRMB = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		TriggerRegisterPlayerEvent(TrigPressRMB, Player(i), EVENT_PLAYER_MOUSE_DOWN)
	end

	TriggerAddAction(TrigPressRMB, function()
		--print("any")
		--if GetLocalPlayer() == GetTriggerPlayer() and GetLocalON  then
		--	EnableUserControl(true)
			--print("клик левой")
		--end
		if BlzGetTriggerPlayerMouseButton() == MOUSE_BUTTON_TYPE_LEFT then

			-- это правая кнопка
			local pid = GetPlayerId(GetTriggerPlayer())
			local data = HERO[pid]
			if  UnitAlive(data.UnitHero) then
				if not data.ReleaseRMB then
					data.ReleaseRMB = true
				end
				if data.ReleaseLMB and data.ChargeIsReady and data.Perk17 then
					-- И талант на рывок
					local cd=2
					UnitAddVectorForce(data.UnitHero, data.LastTurn, 30, 300, false)
					StartFrameCD(cd, data,17)
					--data.ChargeEff=AddSpecialEffectTarget("Valiant Charge",data.UnitHero,"origin")
					data.OnCharge = true
					data.ChargeIsReady = false
					if data.Perk12 then
						--ледяной щит
						if not UnitAddAbility(data.UnitHero, FourCC('A00F')) then
							--print("error")
						end --Синий
						--print("синий")
					else
						UnitAddAbility(data.UnitHero, FourCC('A00E')) --красный
						--print("красный")
					end

					--

					TimerStart(CreateTimer(), cd, false, function()
						data.ChargeIsReady = true
						UnitRemoveAbility(data.UnitHero, FourCC('A00E')) --красный
						UnitRemoveAbility(data.UnitHero, FourCC('A00F')) --Синий
						DestroyTimer(GetExpiredTimer())
					end)
				end

				if not data.IsFrizzyDisabled then
					--if not data.ReleaseA and not data.IsFrizzyDisabled then
					data.ReleaseRMB = true
					data.Reflection = true
				end
			end
		end
	end)
	local TrigDePressRMB = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do

		TriggerRegisterPlayerEvent(TrigDePressRMB, Player(i), EVENT_PLAYER_MOUSE_UP)
	end
	TriggerAddAction(TrigDePressRMB, function()
		--print("any")
		if BlzGetTriggerPlayerMouseButton() == MOUSE_BUTTON_TYPE_LEFT then
			local pid = GetPlayerId(GetTriggerPlayer())
			local data = HERO[pid]
			local hero = data.UnitHero
			data.ReleaseRMB = false
			data.Reflection = false
			if UnitAlive(hero) then

				if data.IsWood then
					SetUnitAnimationByIndex(hero, PeonIndexStandLumber)
				else
					ResetPeonAnimation(hero)
				end
			end
		end
	end)

	-----------------------------------------------------------------Lock
	TimerStart(CreateTimer(), 0.01, true, function()
		for i = 0, 3 do
			local data = HERO[i]
			local hero = data.UnitHero
			if UnitAlive(hero) then
				--SelectUnitForPlayerSingle(hero,GetOwningPlayer(hero))
				ForceUIKeyBJ(GetOwningPlayer(hero), "M")
				--IssueImmediateOrder(hero, "stop")
			end
		end
	end)

	------------------------------ТЕСТ АНИМАЦИЙ
	local ai = 0
	TimerStart(CreateTimer(), 2, true, function()
		local data = HERO[0]
		local hero = data.legs
		--SetUnitAnimationByIndex(hero,ai)
		--SetUnitAnimationByIndex(hero,ai)
		--print(ai)
		ai = ai + 1
	end)



	--local sec=0
	--local sec2=0
	--local secattack=0
	--local temRevolt=0
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		--for i, data in pairs(HERO) do
		for i=0,3 do
			local data=HERO[i]
			--print(i.." pairs")
			local hero = data.UnitHero
			local id = data.pid
			local p = GetOwningPlayer(hero)
			local angle = 0
			local mBonus = 21
			if data.ReleaseLMB then
				mBonus = mBonus * 1.5
			end
			if data.Perk4 then
				mBonus = mBonus * 0.7--=15 и это быстрее
			end
			local speed = GetUnitMoveSpeed(hero) / mBonus--data.SpeedBase
			local x, y = GetUnitXY(hero)
			local IiMoving = false
			local walk = false
			local startwalk = false
			local standanim = false
			local walkattack = false
			PeonIndexWalk=1
			PeonIndexAttack=3
			PeonIndexAttackLumber=5
			PeonIndexWalkLumber=13
			PeonIndexStandLumber=8
			PeonIndexStand= 0
			--local WalkCart = false

			local turn = 0
			--if  GetPlayerSlotState(GetOwningPlayer(hero)) == PLAYER_SLOT_STATE_PLAYING then --GetPlayerController(GetOwningPlayer(hero)) == MAP_CONTROL_USER and
			if true then
				--print(1)
				if not data.IsFrizzyDisabled then
				--	print("2 x="..x.." y= "..y)
					turn = AngleBetweenXY(x, y, GetPlayerMouseX[id], GetPlayerMouseY[id]) / bj_DEGTORAD
				--	print(3)
					--print(turn)
				end

				if data.LastMouseX == GetPlayerMouseX[id] then
					--print("курсор не движется "..data.LastMouseX)
					--turn=GetUnitFacing(hero)
					data.IsMouseMove = false

				else
					data.LastTurn = turn
					--print("движется")
				end
				data.LastMouseX = GetPlayerMouseX[id]
			end
			--print("eeeee")
			local Vector3 = wGeometry.Vector3



			--Камера
			if UnitAlive(hero) then
				SetCameraQuickPosition(GetUnitX(hero), GetUnitY(hero))
				SetCameraTargetControllerNoZForPlayer(p, hero, 10, 10, true) -- не дергается
			else
				--print("x"..GetUnitX(hero))
				--SetCameraQuickPosition(GetUnitX(hero), GetUnitY(hero))
				--SetCameraPosition(GetUnitXY(hero))
				--SetCameraTargetControllerNoZForPlayer( GetOwningPlayer(hero), hero, 10, 10, true) -- не дергается
				--print(GetPlayerName(GetOwningPlayer(hero)))
			--	SetCameraQuickPosition(GetUnitX(data.legs), GetUnitY(data.legs))
			--	SetCameraTargetControllerNoZForPlayer(GetOwningPlayer(data.legs), data.legs, 10, 10, true)
			end

			if data.ReleaseLMB and data.Perk14 and UnitAlive(hero) then
				SetUnitAnimation(hero, "stand defend")
				--print("Стоит с щитом")
				--SetUnitAnimationByIndex(hero,20)
			end

			data.sec = data.sec + TIMER_PERIOD--анимация движения
			if data.sec >= 1 then
				data.sec = 0
				walk = true
				standanim = true

			end

			data.sec2 = data.sec2 + TIMER_PERIOD -- анимация атаки
			if data.sec2 >= 1 then
				data.sec2 = 0
				walkattack = true
			end
			if not data.sec3 then
				data.sec3 = 0
			end
			data.sec3 = data.sec3 + TIMER_PERIOD -- движения карта
			if data.sec3 >= 1 then
				data.sec3 = 0
				data.WalkCart = true
			end


			-- таланты просчеты
			data.RevoltSec = data.RevoltSec + TIMER_PERIOD-- считаем бездействие
			data.temRevolt=data.temRevolt+TIMER_PERIOD

			if data.temRevolt>=10 then
				data.temRevolt=0
				FrameBigSize(data.SelfFrame[2],0.2,2) --это надо делать каждую целую секунду
			end
			if not data.Perk2 then
				if data.RevoltSec >= 100 then --Вернуть 100
					data.Perk2 = true
					PerkUnlocker(data, 2)
					--print("Рабочий поднял бунт")
					AddAxe(data)
					MakeUnitAllEnemy(hero)
				end
			end
			if data.ReleaseRMB then
				data.MHoldSec = data.MHoldSec + TIMER_PERIOD
			end

			local aSpeed = 0.7
			if data.EnterInTurret then aSpeed=999999 end
			data.AttackTime = data.AttackTime + TIMER_PERIOD
			if data.AttackTime >= aSpeed then
				data.AttackTime = 0
				if data.ReleaseRMB then
					data.isattack = true
					--print("time attack")

					if not data.ReleaseLMB then
						AfterAttack(hero, 0.4)
					end
					--SingleCannon(hero)
				end
			end

			if data.ReleaseW and data.ReleaseD == false and data.ReleaseA == false then
				--print("only w")
				angle = 90
				IiMoving = true
			end
			if data.ReleaseW and data.ReleaseD then
				--print("w+d")
				angle = 90 - 45
				IiMoving = true
			end
			if data.ReleaseW and data.ReleaseA then
				--print("w+s")
				angle = 90 + 45
				IiMoving = true
			end

			if data.ReleaseS and data.ReleaseD == false and data.ReleaseA == false then
				angle = 270
				IiMoving = true
			end
			if data.ReleaseS and data.ReleaseD then
				angle = 270 + 45
				IiMoving = true
			end
			if data.ReleaseS and data.ReleaseA then
				angle = 270 - 45
				IiMoving = true
			end

			if data.ReleaseD and data.ReleaseW == false and data.ReleaseS == false then
				angle = 0
				IiMoving = true
			end

			if data.ReleaseA and data.ReleaseW == false and data.ReleaseS == false then
				angle = 180
				IiMoving = true
			end

			if data.IsMouseMove then
				--print("да")
				if turn < 0 and turn > -180 then
					turn = turn + 360
				end
				if data.EnterInTurret then
					if turn<=150 then
						turn=150
					end
					if turn>=210 then
						turn=210
					end
				end
				--print(turn)
				data.LastTurn = turn
			else
				turn = data.LastTurn
				--print("нет")
			end

			if GetPlayerController(GetOwningPlayer(hero)) == MAP_CONTROL_COMPUTER or data.PlayerIsLeave or GetPlayerSlotState(GetOwningPlayer(hero)) ~= PLAYER_SLOT_STATE_PLAYING then
				angle = data.LastTurn
				if data.RangeDesMove > 100 then
					IiMoving = true
				end
			end

			local dif = 100
			if angle + dif > turn and angle - dif < turn  then
				SetUnitTimeScale(data.legs, speed * .1)
				if GetOwningPlayer(hero)==Player(0) then
				--	print("прямое движение ног "..turn)
				end

			else
				if data.ReleaseD and turn>=270 then --костыль по исправлению бага OK!
					SetUnitTimeScale(data.legs, speed * .1)
				else
					SetUnitTimeScale(data.legs, -1 * (speed * .1))
				end

				if GetOwningPlayer(hero)==Player(0) then
				--	print("обратное движение ног "..turn)
				end
			end



			--Любой тик движения
			local k = data.ForcesCount
			local WASDMoving = Vector3:copyFromUnit(hero)
			local newPos = WASDMoving

			if data.AfterMoving then
				-- вектор внешней силы if false then--
				--print("true")
				local f = 0
				for i2 = 1, k do
					if data.ForceRemain[i2] > 0 then
						--print("Внешняя сила="..data.ForceRemain[i])

						f = f + 1
						newPos = newPos + WASDMoving:yawPitchOffset(data.ForceSpeed[i2], data.ForceAngle[i2] * (math.pi / 180), 0.0)
						--newPos=newPos+Vector3:new(-5, 0, 0)
						--newPos=WASDMoving+WASDMoving:yawPitchOffset( speed, angle * ( math.pi / 180 ), 0.0 )
						--newPos=Vector3:copyFromUnit(hero)+Vector3:new(data.ForceSpeed[i], data.ForceAngle[i] * ( math.pi / 180 ), 0)
						data.ForceRemain[i2] = data.ForceRemain[i2] - data.ForceSpeed[i2]
					else
						if data.IsForce[i2] then
							data.IsForce[i2] = false
						end
					end
				end
				if f == 0 then
					data.ForcesCount = 0
					data.IsDisabled = false
					SetUnitPathing(hero, true)

				end
			end

			--анимации
			if UnitAlive(hero) then
				if IiMoving then
					if not data.IsFrizzyDisabled then
						data.TotalWay = data.TotalWay + speed-- считаем бездействие
						if not data.Perk4 then
							if data.TotalWay >= 200000 then
								data.Perk4 = true
								PerkUnlocker(data, 4)
								--print("Лесной болван")
							end
						end

						if startwalk == false then
							data.sec = 1
							startwalk = true
						end
						if data.isattack == false then
							if walkattack then

								if data.ReleaseRMB == false and not data.ReleaseLMB and UnitAlive(hero) then
									--	print("reset in walk")
									SetUnitAnimation(hero, "Stand")
								end
							end
						end

						if walk and walkattack and UnitAlive(hero) then
							BlzSetUnitFacingEx(data.legs, angle)
							SetUnitAnimationByIndex(data.legs, PeonIndexWalk)
							SetUnitTimeScale(data.legs, speed * .1)
							walk = false

							--print("перебирай ногами"..GetUnitName(data.legs))
						end
						------------------------------Движение


						newPos = WASDMoving + WASDMoving:yawPitchOffset(speed, angle * (math.pi / 180), 0.0)

					end
				else
					--не двигается

					if GetOwningPlayer(hero) == Player(0) then
						--	print("не двигается")
					end
					if data.CartUnit then
						SetUnitAnimationByIndex(data.CartUnit, 0)
					end
					if standanim then
						SetUnitAnimationByIndex(data.legs, PeonIndexStand)
					end
					startwalk = false
					BlzSetUnitFacingEx(data.legs, turn)
				end
			end

			if data.AfterMoving == false then
				-- вектор внешней силы
				--print("false")
				local f = 0
				for i2 = 1, k do
					if data.ForceRemain[i2] > 0 then
						--print("Внешняя сила="..data.ForceRemain[i])
						if data.OnCharge then
							--print("В процессе толкания")
							local _, DamagingUnit = UnitDamageArea(hero, 1, GetUnitX(hero), GetUnitY(hero), 150)
							local angleU = AngleBetweenUnits(hero, DamagingUnit)
							--print(angleU)
							if not DamagingUnit then
								--print("толкаемый герой не определён")
							end

							if data.Perk12 and GetUnitAbilityLevel(DamagingUnit,FourCC('Bfro'))==0 and IsUnitEnemy(DamagingUnit,GetOwningPlayer(hero)) and DamagingUnit then
								--
								local x12, y12 = GetUnitXY(DamagingUnit)
								--print("замораживаем "..GetUnitName(caster))
								local dummy = CreateUnit(GetOwningPlayer(hero), DummyID, x12, y12, 0)--
								UnitAddAbility(dummy, FourCC('A00H'))
								UnitApplyTimedLife(dummy, FourCC('BTLF'), 0.1)
								if Cast(dummy, 0, 0, DamagingUnit) then
									--	print("успех")
								else
									--	print("провел")
								end
								SetUnitTimeScale(DamagingUnit, 0)
								SetUnitVertexColor(DamagingUnit, 60, 200, 255, 240)
								BlzPauseUnitEx(DamagingUnit, true)
								TimerStart(CreateTimer(), 3, false, function()
									SetUnitTimeScale(DamagingUnit, 1)
									SetUnitVertexColor(DamagingUnit, 255, 255, 255, 255)
									BlzPauseUnitEx(DamagingUnit, false)
									DestroyTimer(GetExpiredTimer())
								end)
							end

							if IsUnitType(DamagingUnit, UNIT_TYPE_HERO) then
								--print("попытка толкнуть"..GetUnitName(DamagingUnit))
								UnitAddVectorForce(DamagingUnit, angleU, 10, 50, false)
							else
								if GetUnitTypeId(DamagingUnit) ~= FourCC('o007') then
									UnitAddForce(DamagingUnit, angleU, 10, 50)
								end
							end
						end

						f = f + 1
						newPos = newPos + WASDMoving:yawPitchOffset(data.ForceSpeed[i2], data.ForceAngle[i2] * (math.pi / 180), 0.0)
						--newPos=newPos+Vector3:new(-5, 0, 0)
						--newPos=WASDMoving+WASDMoving:yawPitchOffset( speed, angle * ( math.pi / 180 ), 0.0 )
						--newPos=Vector3:copyFromUnit(hero)+Vector3:new(data.ForceSpeed[i], data.ForceAngle[i] * ( math.pi / 180 ), 0)
						data.ForceRemain[i2] = data.ForceRemain[i2] - data.ForceSpeed[i2]
					else
						if data.IsForce[i2] then
							data.IsForce[i2] = false
						end
					end
				end
				if f == 0 then
					data.ForcesCount = 0
					data.IsDisabled = false
					SetUnitPathing(hero, true)
					if data.OnCharge then-- место где окончился рывок и сплеш урон
						data.OnCharge = false
						UnitRemoveAbility(hero, FourCC('A00E')) --красный
						UnitRemoveAbility(hero, FourCC('A00F')) --Синий
						UnitDamageArea(hero, BlzGetUnitBaseDamage(hero,0)*4, GetUnitX(hero), GetUnitY(hero), 150) -- удар после рывка
						--DestroyEffect(data.ChargeEff)
						--data.ChargeEff=nil
						--print("нет больше сил")
					end

				end
			end

			if not data.ReleaseLMB then
				if data.isattack then
					walkattack = false
					--SetUnitAnimationByIndex(hero,7) --проигрываем анимацию атаки
					if UnitAlive(hero) then
						if data.IsWood then
							SetUnitAnimationByIndex(hero, PeonIndexAttackLumber)

						else
							SetUnitAnimationByIndex(hero, PeonIndexAttack)
						end
					end
					--print("play attack")
					data.isattack = false
				else
					if standanim then
						standanim = false
						if IiMoving == false and data.ReleaseRMB == false then
							--print("Анимация Stand")
							if UnitAlive(hero) then
								if data.IsWood then
									SetUnitAnimationByIndex(hero, PeonIndexStandLumber)

								else
									ResetPeonAnimation(hero)

								end
							end
						end
					end
				end
			end
			---дополнительный сборс
			if not data.ReleaseLMB then
				if data.ReleaseRMB == false and data.isattack == false and IiMoving then
					if IiMoving then
						if walkattack then
							walkattack = false
							--print("анимация движения без атаки")
							if UnitAlive(hero) then
								if data.IsWood then
									SetUnitAnimationByIndex(hero, PeonIndexWalkLumber)

								else
									SetUnitAnimationByIndex(hero, PeonIndexWalk)

								end
							end
						end
					else
						print("total reset")
						SetUnitAnimation(hero, "Stand")
					end
				end
			end
			--каждый тик
			if data.IsWood then
				UnitAddAbility(hero,FourCC('A00R'))
			else
				UnitRemoveAbility(hero,FourCC('A00R'))
			end

			if RectContainsCoords(gg_rct_Winter, GetUnitXY(hero)) then
				--
				newPos = newPos + Vector3:new(-5, 0, 0)

				if not data.HaveAFire and not data.Perk16 then
					data.FrozenTime = data.FrozenTime + TIMER_PERIOD

					data.FrozenShield = data.FrozenShield + TIMER_PERIOD
					if data.FrozenShield >= 60 and not data.Perk12 then
						data.Perk12 = true
						PerkUnlocker(data, 12)
					end

					if not data.IsFrizzyDisabled then
						if data.FrozenTime >= 15 then
							--and not data.FrizzyEff then
							data.FrizzyEff = AddSpecialEffectTarget("ice cube", hero, "origin")
							--print("обморожение "..data.FrozenTime)
							data.IsFrizzyDisabled = true
						end
					end

					if data.FrozenTime >= 30 then
						data.IsFrizzyDisabled = false
						DestroyEffect(data.FrizzyEff)
						KillUnit(hero)
						data.FrozenTime = 0
					end
				end

			else
				--print("в тёплой зоне")
				if data.FrozenTime >= 0 then
					data.FrozenTime = data.FrozenTime - TIMER_PERIOD * 5
				end
				if data.IsFrizzyDisabled then
					--print("Таем "..data.FrozenTime)
					--data.FrozenTime=data.FrozenTime-TIMER_PERIOD*5

					if data.FrozenTime <= 0 then
						DestroyEffect(data.FrizzyEff)
						--print("Оттаял "..data.FrozenTime)
						data.IsFrizzyDisabled = false
					end
				end

			end

			if UnitAlive(hero) and not data.EnterInTurret then
				SetUnitPositionSmooth(hero, newPos.x, newPos.y)
				--Синхронизация ног
				SetUnitX(data.legs, GetUnitX(hero))
				SetUnitY(data.legs, GetUnitY(hero))

				-- УБерсплаты
				if data.CircleImage then --есть уберсплат
					data.cx,data.cy=GetUnitX(hero)-64-16,GetUnitY(hero)-64-16
					--local angleSplat=data.LastTurn
					data.cx,data.cy=MoveXY(data.cx,data.cy,70,GetUnitFacing(hero))
					SetImagePosition(data.CircleImage,data.cx,data.cy,0)
					if GetLocalPlayer()==p then
						if  data.ShowSplat then
							ShowImage(data.CircleImage,true)
						else
							ShowImage(data.CircleImage,false)
						end
					end
				end
			end
			-- карт сзади юнита
			if data.CartUnit then
				if not data.ReleaseW and not data.ReleaseD and not data.ReleaseA and data.ReleaseA then
					IiMoving = false
					print("alldepress")
				end
				local rangeCart = DistanceBetweenXY(GetUnitX(hero), GetUnitY(hero), GetUnitX(data.CartUnit), GetUnitY(data.CartUnit))
				--print(rangeCart)
				if rangeCart >= 81 then
					--print("угол пеона ="..angle.." тележки "..data.CartAngle)

					data.CartAngle = -180 + AngleBetweenXY(GetUnitX(hero), GetUnitY(hero), GetUnitX(data.CartUnit), GetUnitY(data.CartUnit)) / bj_DEGTORAD
					local cx, cy = MoveXY(GetUnitX(hero), GetUnitY(hero), -80, data.CartAngle)
					SetUnitPositionSmooth(data.CartUnit, cx, cy)

					if IiMoving then
						--print("111")
						local ac = data.CartAngle   --+AngleBetweenXY(GetUnitX(hero),GetUnitY(hero),GetUnitX(data.CartUnit),GetUnitY(data.CartUnit))/bj_DEGTORAD
						SetUnitFacing(data.CartUnit, ac)
						if data.WalkCart then
							--  print("тележка движется")
							data.WalkCart = false
							--SetUnitAnimation(data.CartUnit,"Walk")
							SetUnitAnimationByIndex(data.CartUnit, 1)
						end
					else
						--	print("у этого события нет детекта")
					end

					if not IiMoving then
						--	print("баг попался")
					end
				else
					SetUnitFacing(data.CartUnit, -180 + AngleBetweenXY(GetUnitX(hero), GetUnitY(hero), GetUnitX(data.CartUnit), GetUnitY(data.CartUnit)) / bj_DEGTORAD)
				end
				if rangeCart >= 115 or not UnitAlive(hero) then
					SetUnitOwner(data.CartUnit, Player(PLAYER_NEUTRAL_PASSIVE), true)
					SetUnitAnimationByIndex(data.CartUnit, 0)
					data.CartUnit = nil
				end
			end

			if data.Wagon then -- вагонетка с турелью

				local rangeCart = DistanceBetweenXY(GetUnitX(hero), GetUnitY(hero), GetUnitX(data.Wagon), GetUnitY(data.Wagon))
				--print(rangeCart)
				local range=110
				if rangeCart >= range then
					--print("пеон выходит из тележки тележки")

				else --толкаем


					if  GetUnitX(hero)>=11600 and data.ReleaseA and not data.EnterInTurret then-- МОМЕНТ ВХОДА В ТЕЛЕЖКУ
						data.EnterInTurret=true
						--ShowUnit(hero,false)
						--ShowUnit(data.legs,false)
						--SetUnitX(hero)
						SetUnitOwner(data.Wagon, Player(PLAYER_NEUTRAL_PASSIVE), true)
						data.Wagon = nil
						StartTurretMoving(data)
						--print("вход в тележку "..GetUnitX(hero))
					end
					local cx,cy=0,0
					BlzSetUnitFacingEx(data.Wagon,90)
					if GetUnitY(hero)>= GetUnitY(data.Wagon) then
						data.CartAngle = AngleBetweenXY(GetUnitX(hero), GetUnitY(hero), GetUnitX(data.Wagon), GetUnitY(data.Wagon)) / bj_DEGTORAD
						--print("толкаему сверху вниз"..data.CartAngle)
						cx,cy=MoveXY(GetUnitX(hero), GetUnitY(hero), range, data.CartAngle)

					else
						--print("толкаему снизу вверх вверх")
						data.CartAngle = -180 + AngleBetweenXY(GetUnitX(hero), GetUnitY(hero), GetUnitX(data.Wagon), GetUnitY(data.Wagon)) / bj_DEGTORAD
						cx,cy=MoveXY(GetUnitX(hero), GetUnitY(hero), -range, data.CartAngle)

					end
					if cy<=4541-70 and cy>=1630+70 then
						SetUnitY(data.Wagon,cy)
						SetUnitY(data.Turret,cy)
						BlzSetSpecialEffectPosition(data.TurretArrow,MoveX(cx,100,0/bj_DEGTORAD),MoveY(cy,100,0/bj_DEGTORAD),170)
					else

					end
					--print(GetUnitX(data.Wagon))
					SetUnitX(data.Wagon,11532.25+5)
					SetUnitX(data.Turret,11532.25-25)
				end
				if rangeCart >= 115 or not UnitAlive(hero) then
					--print("отрыв вагонетки")
					SetUnitOwner(data.Wagon, Player(PLAYER_NEUTRAL_PASSIVE), true)
					data.Wagon = nil
					--SetUnitAnimationByIndex(data.CartUnit, 0)
					data.Turret = nil
				end
			end--конец блока вагонетка

			if data.Compass then
				local z=GetUnitZ(hero)
				local xc,yc=GetUnitX(hero),GetUnitY(hero)
				local Angle=AngleBetweenXY(xc,yc,data.CompassX,data.CompassY)
				BlzSetSpecialEffectPosition(data.Compass,MoveX(xc,130,Angle/bj_DEGTORAD),MoveY(yc,130,Angle/bj_DEGTORAD),z+50)
				BlzSetSpecialEffectYaw(data.Compass,Angle)

				if IsUnitInRangeXY(hero,data.CompassX,data.CompassY,300) then
					--DestroyTimer(GetExpiredTimer())
					DestroyEffect(data.Compass)
					data.Compass=nil
				end
			end

			if data.HaveAFire and not data.FirePointer then
				data.FirePointer=true
				CreateVisualPointerForUnitBySplat(hero,1,1000//10,10)
			end

			if UnitAlive(hero) then
				SetUnitFacing(hero, turn)
			else
				ResetUnitAnimation(data.legs)
			end
		end
	end)
end
