---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 10.01.2020 22:05
--
---Глобалки
TIMER_PERIOD = 0.03125
HERO={}
do
	local InitGlobalsOrigin = InitGlobals -- записываем InitGlobals в переменную
	function InitGlobals()
		InitGlobalsOrigin() -- вызываем оригинальную InitGlobals из переменной
		InitGameCore()
		InitMouseMoveTrigger()
		InitDamage()
		InitUnitDeath()
		InitAllZones()
	end

end

function InitGameCore()
	--создаём героев
	--BlzEnableSelections(false,false)
	EnableDragSelect(false,false)
	CreateWoodFrame()
	HideEverything()
	PerkButtonLine()-- табличка перков
	CreateMouseHelper(10)
	--CreateStatusBar()
	-----Настоящая инициализация
	for i=0,3 do
		HERO[i]={
			ReleaseW=false,
			ReleaseS=false,
			ReleaseA=false,
			ReleaseD=false,
			Acceleration=0,
			ReleaseLMB=false,
			ReleaseRMB=false,
			SpeedBase=9,
			UnitHero=CreateUnit(Player(i), FourCC('H000'), GetPlayerStartLocationX(Player(i)), GetPlayerStartLocationY(Player(i)), GetRandomReal(0,360)),
			CurrentSpeed=0,
			WeaponIndex=1,
			AngleForce=0, --типа какой-то уго для отталкивания
			IsDisabled=false,
			pid=i,
			legs=CreateUnit(Player(i), FourCC('o000'), GetPlayerStartLocationX(Player(i)), GetPlayerStartLocationY(Player(i)), 0),
			isattack=false,
			AttackTime=0,
			IsWood=false,
			ForcesCount=0,
			sec=0,--костылики
			sec2=0, -- для анимаций
			IsMouseMove=false,
			LastMouseX=0,
			LastTurn=0,
			---накопление перков
			SingleWoodCount=0,
			RevoltSec=0,
			Dies=0,
			TotalWay=0,
			Kills=0,
			Repairs=0,
			Heals=0,
			KodoCount=0,
			---открытие перков
			Perk1=false, --Работник
			Perk2=false, -- Бунт
			Perk3=false,-- Суицидник
			Perk4=false, -- Лесной болван
			Perk5=false, -- Убийца
			Perk6=false, -- Ученика кузнеца
			Perk7=false, -- Ожирение
			Perk8=false, -- Кодой
			----
			MHoldSec=0,
			Reflection=false,
		}

		if HERO[i] then
			local hero=HERO[i].UnitHero
			SelectUnitForPlayerSingle(hero,GetOwningPlayer(hero))
			RegisterCollision(hero)
			HealthBarAdd(hero)
			--print("111111")
		end
	end


	-----------------------------------------------------------------OSKEY_W
	local gg_trg_EventUpW = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(gg_trg_EventUpW,Player(i),OSKEY_W,0,true)
	end
	TriggerAddAction(gg_trg_EventUpW, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		data.ReleaseW=true
		SetUnitAnimationByIndex(data.legs,16)
	end)
	local TrigDepressW = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(TrigDepressW,Player(i),OSKEY_W,0,false)
	end
	TriggerAddAction(TrigDepressW, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		data.ReleaseW=false
	end)
	-----------------------------------------------------------------OSKEY_S
	local gg_trg_EventUpS = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(gg_trg_EventUpS,Player(i),OSKEY_S,0,true)
	end
	TriggerAddAction(gg_trg_EventUpS, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		data.ReleaseS=true
		SetUnitAnimationByIndex(data.legs,16)
	end)
	local TrigDepressS = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(TrigDepressS,Player(i),OSKEY_S,0,false)
	end
	TriggerAddAction(TrigDepressS, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		data.ReleaseS=false
	end)
	-----------------------------------------------------------------OSKEY_D
	local TrigPressD = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(TrigPressD,Player(i),OSKEY_D,0,true)
	end
	TriggerAddAction(TrigPressD, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		data.ReleaseD=true
		SetUnitAnimationByIndex(data.legs,16)
	end)
	local TrigDePressD = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(TrigDePressD,Player(i),OSKEY_D,0,false)
	end
	TriggerAddAction(TrigDePressD, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		data.ReleaseD=false
	end)
	-----------------------------------------------------------------OSKEY_A
	local TrigPressA = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(TrigPressA,Player(i),OSKEY_A,0,true)
	end
	TriggerAddAction(TrigPressA, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		data.ReleaseA=true
		SetUnitAnimationByIndex(data.legs,16)
	end)
	local TrigDePressA = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(TrigDePressA,Player(i),OSKEY_A,0,false)
	end
	TriggerAddAction(TrigDePressA, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		data.ReleaseA=false
	end)
	-----------------------------------------------------------------LMB
	local TrigPressLMB=CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		TriggerRegisterPlayerEvent(TrigPressLMB, Player(i), EVENT_PLAYER_MOUSE_DOWN)
	end
	TriggerAddAction(TrigPressLMB, function()
		--print("any")
		if BlzGetTriggerPlayerMouseButton() == MOUSE_BUTTON_TYPE_LEFT then
			local pid=GetPlayerId(GetTriggerPlayer())
			local data=HERO[pid]
			data.ReleaseLMB=true
			local hero=data.UnitHero
		end
	end)
	local TrigDePressLMB=CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		TriggerRegisterPlayerEvent(TrigDePressLMB, Player(i), EVENT_PLAYER_MOUSE_UP)
	end

	TriggerAddAction(TrigDePressLMB, function()
		--print("any")
		if BlzGetTriggerPlayerMouseButton() == MOUSE_BUTTON_TYPE_LEFT then
			local pid=GetPlayerId(GetTriggerPlayer())
			local data=HERO[pid]
			data.ReleaseLMB=false
		end
	end)
	-----------------------------------------------------------------RMB
	local TrigPressRMB=CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		TriggerRegisterPlayerEvent(TrigPressRMB, Player(i), EVENT_PLAYER_MOUSE_DOWN)
	end
	TriggerAddAction(TrigPressRMB, function()
		--print("any")
		if BlzGetTriggerPlayerMouseButton() == MOUSE_BUTTON_TYPE_RIGHT then
			local pid=GetPlayerId(GetTriggerPlayer())
			local data=HERO[pid]
			data.ReleaseRMB=true
			data.Reflection=true
			local hero=data.UnitHero
			data.AttackTime=0.7
			randomeffect=GetRandomInt(1,15)
		end
	end)
	local TrigDePressRMB=CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		TriggerRegisterPlayerEvent(TrigDePressRMB, Player(i), EVENT_PLAYER_MOUSE_UP)
	end
	TriggerAddAction(TrigDePressRMB, function()
		--print("any")
		if BlzGetTriggerPlayerMouseButton() == MOUSE_BUTTON_TYPE_RIGHT then
			local pid=GetPlayerId(GetTriggerPlayer())
			local data=HERO[pid]
			local hero=data.UnitHero
			data.ReleaseRMB=false
			data.Reflection=false
			if data.IsWood then
				SetUnitAnimationByIndex(hero,11)
			else
				ResetPeonAnimation(hero)
			end
		end
	end)

	-----------------------------------------------------------------Lock
	TimerStart(CreateTimer(), 0.01, true, function()
		for i=0,3 do
			local data=HERO[i]
			local hero=data.UnitHero
			ForceUIKeyBJ(GetOwningPlayer(hero),"M")
			IssueImmediateOrder(hero,"stop")
		end
	end)

------------------------------ТЕСТ АНИМАЦИЙ
	local ai=0
	TimerStart(CreateTimer(), 2, true, function()
		local data=HERO[0]
		local hero=data.legs
		--SetUnitAnimationByIndex(hero,ai)
		--SetUnitAnimationByIndex(hero,8)
		--print(ai)
		ai=ai+1
	end)



	--local sec=0
	--local sec2=0
	--local secattack=0
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		for i, data in pairs(HERO) do
			--print(i.." pairs")
			local hero= data.UnitHero
			local id=data.pid
			local p=GetOwningPlayer(hero)
			local angle=0
			local mBonus=21
			if data.Perk4 then
				mBonus=16
			end
			local speed=GetUnitMoveSpeed(hero)/mBonus--data.SpeedBase
			local x,y=GetUnitXY(hero)
			local IiMoving=false
			local walk=false
			local startwalk=false
			local standanim=false
			local walkattack=false

			local turn=0
			if GetPlayerController(GetOwningPlayer(hero)) == MAP_CONTROL_USER and GetPlayerSlotState(GetOwningPlayer(hero)) == PLAYER_SLOT_STATE_PLAYING then
				turn=AngleBetweenXY(x,y,GetPlayerMouseX[id],GetPlayerMouseY[id])/bj_DEGTORAD

				if data.LastMouseX==GetPlayerMouseX[id] then
					--print("курсор не движется "..data.LastMouseX)
					--turn=GetUnitFacing(hero)
					data.IsMouseMove=false

				else
					data.LastTurn=turn
					--print("движется")
				end
				data.LastMouseX=GetPlayerMouseX[id]
			end

			local aSpeed=0.7
			local Vector3 = wGeometry.Vector3



			--Камера
			SetCameraQuickPosition(GetUnitX(hero),GetUnitY(hero))
			SetCameraTargetControllerNoZForPlayer(p,hero, 10,10,true) -- не дергается

			data.sec=data.sec+TIMER_PERIOD
			if data.sec>=1 then
				data.sec=0
				walk=true
				standanim=true

			end

			data.sec2=data.sec2+TIMER_PERIOD
			if data.sec2>=1 then
				data.sec2=0
				walkattack=true
			end
			-- таланты просчеты
			data.RevoltSec=data.RevoltSec+TIMER_PERIOD-- считаем бездействие
			if not data.Perk2 then
				if data.RevoltSec>=30 then
					data.Perk2=true
					if GetLocalPlayer()==GetOwningPlayer(hero) then
						BlzFrameSetVisible(PerkIsLock[2],false)
					end
					print("Рабочий поднял бунт")
					--Allian
				end
			end
			if data.ReleaseRMB then
				data.MHoldSec=data.MHoldSec+TIMER_PERIOD
			end


			data.AttackTime=data.AttackTime+TIMER_PERIOD
			if data.AttackTime>=aSpeed then
				data.AttackTime=0
				if data.ReleaseRMB then
					data.isattack=true
					--print("time attack")
					data.Reflection=true
					AfterAttack(hero,0.4)
					--SingleCannon(hero)
				end
			end


			if data.ReleaseW and data.ReleaseD==false and data.ReleaseA==false then
				--print("only w")
				angle=90
				IiMoving=true
			end
			if data.ReleaseW and data.ReleaseD then
				--print("w+d")
				angle=90-45
				IiMoving=true
			end
			if data.ReleaseW and data.ReleaseA then
				--print("w+s")
				angle=90+45
				IiMoving=true
			end


			if data.ReleaseS and data.ReleaseD==false and data.ReleaseA==false then
				angle=270
				IiMoving=true
			end
			if data.ReleaseS and data.ReleaseD  then
				angle=270+45
				IiMoving=true
			end
			if data.ReleaseS and data.ReleaseA  then
				angle=270-45
				IiMoving=true
			end


			if data.ReleaseD and data.ReleaseW==false and data.ReleaseS==false then
				angle=0
			    IiMoving=true
			end

			if data.ReleaseA and data.ReleaseW==false and data.ReleaseS==false then
				angle=180
				IiMoving=true
			end
			if data.IsMouseMove then
				--print("да")
				if turn<0 and turn>-180 then
					turn=turn+360
				end
			else
				turn=data.LastTurn
				--print("нет")
			end


			local dif=100
			if angle+dif>turn and angle-dif<turn then
				SetUnitTurnSpeed(data.legs,1)
			else
				SetUnitTurnSpeed(data.legs,-1)
			end

			--Любой тик движения
			local k=data.ForcesCount
			local WASDMoving = Vector3:copyFromUnit(hero)
			local newPos=WASDMoving


			if true then
				local f=0
				for i=1,k do
					if data.ForceRemain[i]>0 then
						--print("Внешняя сила="..data.ForceRemain[i])
						f=f+1
						newPos=newPos+newPos:yawPitchOffset( data.ForceSpeed[i], data.ForceAngle[i] * ( math.pi / 180 ), 0.0 )
						--newPos=Vector3:copyFromUnit(hero)+Vector3:new(data.ForceSpeed[i], data.ForceAngle[i] * ( math.pi / 180 ), 0)
						data.ForceRemain[i]=data.ForceRemain[i]-data.ForceSpeed[i]
					else
						if data.IsForce[i] then
							data.IsForce[i]=false
						end
					end
				end
				if f==0 then
					data.ForcesCount=0
					data.IsDisabled=false
					SetUnitPathing(hero,true)
					--print("нет больше сил")
				end
			end
			--анимации
			if IiMoving then

				data.TotalWay=data.TotalWay+speed-- считаем бездействие
				if not data.Perk4 then
					if data.TotalWay>=400000 then
						data.Perk4=true
						if GetLocalPlayer()==GetOwningPlayer(hero) then
							BlzFrameSetVisible(PerkIsLock[4],false)
						end
						print("Лесной болван")
					end
				end


				if startwalk==false then
					data.sec=1
					startwalk=true
				end
				if data.isattack==false then
					if walkattack then

						if data.ReleaseRMB==false then
						--	print("reset in walk")
							SetUnitAnimation(hero,"Stand")
						end
					end
				end


				if walk and walkattack then
					BlzSetUnitFacingEx(data.legs,angle)
					SetUnitAnimationByIndex(data.legs,16)
					walk=false
					--print("перебирай ногами"..GetUnitName(data.legs))
				end
				------------------------------Движение


					newPos=WASDMoving+WASDMoving:yawPitchOffset( speed, angle * ( math.pi / 180 ), 0.0 )



			else--не двигается
				if standanim then
					SetUnitAnimationByIndex(data.legs,11)
				end
				startwalk=false
				BlzSetUnitFacingEx(data.legs,turn)
			end

			if data.isattack then
				walkattack=false
				--SetUnitAnimationByIndex(hero,7) --проигрываем анимацию атаки
				if data.IsWood then
					SetUnitAnimationByIndex(hero,7)
				else
					SetUnitAnimationByIndex(hero,3)
				end
				--print("play attack")
				data.isattack=false
			else
				if standanim then
					standanim=false
					if IiMoving==false and data.ReleaseRMB==false then
						--print("Анимация Stand")
						if data.IsWood then
							SetUnitAnimationByIndex(hero,11)
						else
							ResetPeonAnimation(hero)
						end
					end
				end
			end
			---дополнительный сборс
			if data.ReleaseRMB==false and data.isattack==false and IiMoving then
				if IiMoving then
					if walkattack then
						walkattack=false
						--print("анимация движения без атаки")
						if data.IsWood then
							SetUnitAnimationByIndex(hero,16)
						else
							SetUnitAnimationByIndex(hero,1)
						end
					end
				else
					print("total reset")
					SetUnitAnimation(hero,"Stand")
				end
			end
			--каждый тик
			if RectContainsCoords(gg_rct_Winter,GetUnitXY(hero)) then
				newPos=newPos+Vector3:new(-5, 0, 0)
				--print("поток")
			end

			SetUnitPositionSmooth(hero,newPos.x,newPos.y)
			--Синхронизация ног
			SetUnitX(data.legs,newPos.x)
			SetUnitY(data.legs,newPos.y)
			SetUnitFacing(hero,turn)
		end
	end)
end