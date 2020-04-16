---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 03.04.2020 2:31
function HideEverything()
	BlzFrameSetVisible(BlzGetFrameByName("ConsoleUIBackdrop", 0), false)
	BlzFrameSetAbsPoint(BlzGetFrameByName("ConsoleUI",0), FRAMEPOINT_BOTTOMLEFT, 0.0 ,0.2)

	for i = 1,11 do
		BlzFrameSetVisible(BlzGetFrameByName("CommandButton_"..i, 0), false)
	end
	BlzFrameSetSize(BlzGetFrameByName("CommandButton_0", 0),0,0)--сколлапсировал в точку
	local GAME_UI     = BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0)
	local WORLD_FRAME = BlzGetOriginFrame(ORIGIN_FRAME_WORLD_FRAME, 0)
	BlzHideOriginFrames(true)--скрыть всё
	BlzFrameSetAllPoints(WORLD_FRAME, GAME_UI)
	--BlzFrameSetVisible(BlzGetFrameByName("CinematicPortrait", 0), false)
	--скрываем по одиночке
	BlzFrameSetVisible(BlzGetOriginFrame(ORIGIN_FRAME_PORTRAIT, 0), true)
	local map=BlzGetOriginFrame(ORIGIN_FRAME_MINIMAP, 0)
	BlzFrameClearAllPoints(map)
	BlzFrameSetVisible(map, true)
	BlzFrameSetSize(map, 0.35, 0.35)
	BlzFrameSetAbsPoint(map,FRAMEPOINT_CENTER,0.3,0.4)
	BlzFrameSetVisible(map, false)
	MiniMap[0]=map
	MiniMap[1]=map
	MiniMap[2]=map
	MiniMap[3]=map
end

GTotalWood=0
function CreateWoodFrame ()
	BlzLoadTOCFile("war3mapimported\\BoxedText.toc")
	local wood=BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	BlzFrameSetTexture(wood, "ReplaceableTextures\\CommandButtons\\BTNHumanLumberUpgrade2", 0, true)
	BlzFrameSetSize(wood, 0.04, 0.04)
	BlzFrameSetAbsPoint(wood, FRAMEPOINT_CENTER,0.8-0.02 , 0.6-0.02)--0.2



	local faceHover = BlzCreateFrameByType("FRAME", "FaceFrame", wood,"", 0) --face is a BACKDROP it can not have events nor a tooltip, thats why one creates an empty frame managing that.
	local tooltip = BlzCreateFrame("BoxedText", wood, 0, 0)--Create the BoxedText Frame
	local UpDest=BlzGetFrameByName("BoxedTextValue", 0)
	BlzFrameSetAllPoints(faceHover, wood) --faceHover copies the size and position of face.
	BlzFrameSetTooltip(faceHover, tooltip) --when faceHover is hovered with the mouse frame tooltip becomes visible.
	BlzFrameSetAbsPoint(tooltip, FRAMEPOINT_CENTER,0.8-0.13, 0.6)
	BlzFrameSetSize(tooltip, 0.18, 0.18)
	BlzFrameSetText(BlzGetFrameByName("BoxedTextTitle", 0), "Общая древесина")
	BlzFrameSetText(UpDest, "Количество древисины, необходимое для победы. Потеря лесопилки приведёт к поражению всех игроков")

	local charges= BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	local new_FrameChargesText = BlzCreateFrameByType("TEXT", "ButtonChargesText", charges, "", 0)

	BlzFrameSetTexture(charges, "ChargesTexture.blp", 0, true)
	BlzFrameSetSize(charges, 0.04, 0.012)
	BlzFrameSetAbsPoint(charges, FRAMEPOINT_CENTER,0.8-0.02 , 0.6-0.04)
	--BlzFrameSetPoint(charges, FRAMEPOINT_BOTTOM, wood, FRAMEPOINT_BOTTOM, 0,0)

	BlzFrameSetPoint(new_FrameChargesText, FRAMEPOINT_CENTER, charges, FRAMEPOINT_CENTER, 0.,0.)

	TimerStart(CreateTimer(), 0.1, true, function()
		BlzFrameSetText(new_FrameChargesText, ""..GTotalWood.."/100")
		if GTotalWood>=100 then
			CustomVictoryDialogBJ(Player(0))
			CustomVictoryDialogBJ(Player(1))
			CustomVictoryDialogBJ(Player(2))
			CustomVictoryDialogBJ(Player(3))
		end
	end)
end

function MoveWoodAsFarm(hero,k)
	AddHeroXP(hero,100*k,true)
	local wood=BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	BlzFrameSetVisible(wood,false)
	if GetLocalPlayer()==GetOwningPlayer(hero) then
		BlzFrameSetVisible(wood,true)
	end
	BlzFrameSetTexture(wood, "ReplaceableTextures\\CommandButtons\\BTNHumanLumberUpgrade2", 0, true)
	BlzFrameSetSize(wood, 0.02, 0.02)
	local x,y=0.4 , 0.3
	BlzFrameSetAbsPoint(wood, FRAMEPOINT_CENTER, x , y)
	local speed=0.01
	local dist=0
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		dist=dist+speed
		--print("dist")
		local nx,ny=MoveXY(x,y,dist,45)
		if ny>=0.6-0.04 then
			ny=0.6-0.04
		end
		BlzFrameSetAbsPoint(wood, FRAMEPOINT_CENTER, nx, ny)
		if nx>=0.8 then
			BlzDestroyFrame(wood)
			DestroyTimer(GetExpiredTimer())
			PlaySoundAtPointBJ( gg_snd_Load, 100, RemoveLocation(Location(GetUnitXY(hero))), 0 )
			GTotalWood=GTotalWood+k
		end
	end)
end

function HealthBarAdd(u)
	BlzLoadTOCFile("Main.toc")
	local bar = BlzCreateSimpleFrame("MyFakeBar", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 0)
	BlzFrameSetVisible(bar,false)
	if GetLocalPlayer()==GetOwningPlayer(u) then
		BlzFrameSetVisible(bar,true)
	end
	BlzFrameSetTexture(bar, "Replaceabletextures\\Teamcolor\\Teamcolor0"..(GetConvertedPlayerId(GetOwningPlayer(u))-1)..".blp", 0, true)
	BlzFrameSetTexture(BlzGetFrameByName("MyFakeBarBorder",0),"MyBarBorder.blp", 0, true)
	BlzFrameSetText(BlzGetFrameByName("MyFakeBarTitle",0), GetHeroProperName(u))
	local lefttext = BlzGetFrameByName("MyFakeBarLeftText",0)
	local righttext = BlzGetFrameByName("MyFakeBarRightText",0)
	local function on_timer()
		BlzFrameSetValue(bar, GetUnitLifePercent(u))
		BlzFrameSetText(lefttext, R2I(GetWidgetLife(u)))
		BlzFrameSetText(righttext, R2I(BlzGetUnitMaxHP(u)))
	end
	TimerStart(CreateTimer(),0.5,true, on_timer)
	BlzFrameSetAbsPoint(bar, FRAMEPOINT_LEFT, 0.04, 0.58)
end

PerkIsLock={}
PerkToolTip={}

texture={
	"ReplaceableTextures\\CommandButtons\\BTNPeasant",
	"ReplaceableTextures\\CommandButtons\\BTNChaosPeon",
	"ReplaceableTextures\\CommandButtons\\BTNGoblinSapper",
	"ReplaceableTextures\\CommandButtons\\BTNBoots",
	"ReplaceableTextures\\CommandButtons\\BTNBandit",
	"ReplaceableTextures\\CommandButtons\\BTNHeroMountainKing",
	"ReplaceableTextures\\CommandButtons\\BTNAbomination", --пудж
	"ReplaceableTextures\\CommandButtons\\BTNKotoBeast",
	"ReplaceableTextures\\CommandButtons\\BTNGatherGold", -- кирка
	"ReplaceableTextures\\CommandButtons\\BTNEngineeringUpgrade",-- техника безопасности
	"ReplaceableTextures\\PassiveButtons\\PASBTNDemolish",
	"ReplaceableTextures\\PassiveButtons\\PASBTNFrost",
	"ReplaceableTextures\\CommandButtons\\BTNTimberWolf",
	"ReplaceableTextures/CommandButtons/BTNResistantSkin",
	"ReplaceableTextures\\CommandButtons\\BTNPlagueCloud",
	"ReplaceableTextures\\CommandButtons\\BTNOrbOfFire",
	"ReplaceableTextures\\CommandButtons\\BTNHumanArmorUpThree",
}
Name= { --Определяет количество талантов
	"Работник месяца",
	"Бунтовщик",
	"Поблажка",
	"Лесной Болван",
	"Блудливый",
	"Ученик Тора",
	"Ожирение 0 степени",
	"Толстокожий друг",
	"Калёная кирка",--9
	"Правила ТБ",
	"Технологии людей",
	"Ледяной щит",
	"Шапка волка",
	"Каменный Щит",
	"Овечья болезь",
	"Сфера огра",
	"Рывок",
}
description={
	"Принесите 25 дерева, чтобы удвоить его добычу ",
	"Ничего не делайте в течении 300 сек, чтобы поднять бунт ",
	"Умрите 15 раз, чтобы получить +100 ХП ",
	"Пробегите расстояние в 400 000 метров, чтобы стать на 50%% быстрее ",
	"Убейте любого врага, чтобы увеличить свой урон в 2 раза ",
	"Почините здания на 1000 единиц, чтобы замедлять врагов при ударе ",
	"Получите лечение в объёме 1000 ед, чтобы получить +7 к регенерации ",
	"Приручите кодоя, чтобы получить 10 ед брони ",
	"Накалите кирку до краса, чтобы увеличить урон в 5 раз ",
	"Донесите деревья с полным здоровьем, чтобы обучиться парированию ",
	"Сломайте лесопилку людей, чтобы получить ауру ремонта зданий ",
	"Пробудьте на холоте в течении 60 сек, чтобы заморозить щит",
	"Убейте волков, чтобы получить шапку волка (друг волков). ",
	"Убейте каменных големов, чтобы укрепить каменный щит ",
	"Умрите или убейте 20 овец, чтобы заболеть взрывной болезнью. ",
	"Найдите сферу, чтобы научиться метать файрболы. ",
	"Соберите командой более 50 древесины, чтобы изучить рывок. ",
}

function PerkButtonLine()
	BlzLoadTOCFile("war3mapimported\\BoxedText.toc")
	local next=0.039
	for i=1,#Name do -- число талантов
		local face = BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)--Create a new frame of Type BACKDROP
		local faceHover = BlzCreateFrameByType("FRAME", "FaceFrame", face,"", 0) --face is a BACKDROP it can not have events nor a tooltip, thats why one creates an empty frame managing that.
		local tooltip = BlzCreateFrame("BoxedText", face, 0, 0)--Create the BoxedText Frame
		local UpDest=BlzGetFrameByName("BoxedTextValue", 0)
		BlzFrameSetAllPoints(faceHover, face) --faceHover copies the size and position of face.
		BlzFrameSetTooltip(faceHover, tooltip) --when faceHover is hovered with the mouse frame tooltip becomes visible.
		BlzFrameSetSize(face, 0.04, 0.04)
		BlzFrameSetAbsPoint(face, FRAMEPOINT_CENTER, 0.1+next*(i-1), 0.02)
		--BlzFrameSetAbsPoint(tooltip, FRAMEPOINT_CENTER, 0.1+next*(i-1), 0.03)
		BlzFrameSetPoint(tooltip, FRAMEPOINT_BOTTOM, face, FRAMEPOINT_TOP, 0.0, 0.0)
		BlzFrameSetSize(tooltip, 0.15, 0.08)
		BlzFrameSetText(BlzGetFrameByName("BoxedTextTitle", 0), Name[i])
		BlzFrameSetText(UpDest, description[i])
		BlzFrameSetTexture(face, texture[i],0, true)--face uses paladin blp as texture.
		local lock=BlzCreateFrameByType("BACKDROP", "Face",face, "", 0)--замочек
		BlzFrameSetPoint(lock, FRAMEPOINT_CENTER, face, FRAMEPOINT_CENTER, 0.,0.)
		BlzFrameSetSize(lock, 0.04, 0.04)
		BlzFrameSetTexture(lock, "close",0, true)

		--глобалки
		PerkIsLock[i]=lock --замочек
		PerkToolTip[i]=UpDest -- тултип в описании
	end


	--обновление текста
	TimerStart(CreateTimer(), 1, true, function()
		for i=0,3 do
			local data=HERO[i]
			if GetLocalPlayer()==Player(i) then
				for k=1,#Name  do
					if k==1 then
						BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00"..data.SingleWoodCount.."/25|r" ) --|cffffff00AAAA|r
					elseif k==2  then
						BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00"..R2I(data.RevoltSec).."/300|r" ) --|cffffff00AAAA|r
					elseif k==3  then
						BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00"..data.Dies.."/15|r" ) --|cffffff00AAAA|r
					elseif k==4  then
						BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00"..R2I(data.TotalWay).."/400000|r" ) --|cffffff00AAAA|r
					elseif k==5  then
						BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00"..data.Kills.."/1|r" ) --|cffffff00AAAA|r
					elseif k==6  then
						if  data.Perk6 then
							BlzFrameSetText(PerkToolTip[k],"Наносит дополнительный и замедляет врагов вобласти 150. ".."|cffffff00".."90 доп. урона|r" ) --|cffffff00AAAA|r
						else
							BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00"..R2I(data.Repairs).."/1000|r" ) --|cffffff00AAAA|r
						end
					elseif k==7  then
						BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00"..R2I(data.Heals).."/1000|r" ) --|cffffff00AAAA|r
					elseif k==8  then
						BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00"..data.KodoCount.."/1|r" ) --|cffffff00AAAA|r
					elseif k==9  then
						if not data.Perk9 then
						BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00"..data.FireCount.."/5|r" ) --|cffffff00AAAA|r
						else
							if not data.HaveAFire then
								BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00".."Обычная|r" ) --|cffffff00AAAA|r
							else
								BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00".."Калёная|r" ) --|cffffff00AAAA|r
							end
						end
					elseif k==10  then --техника безопусноти
						if  data.Perk10 then
							BlzFrameSetText(PerkToolTip[k],"Парирует урон при совершении атаки в первые ".."|cffffff00".."0,4 секунды|r".." после замаха" ) --|cffffff00AAAA|r
						else
							BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00"..data.TreeCountOnTB.."/10|r" ) --|cffffff00AAAA|r
						end
					elseif k==11  then -- погром
						if  data.Perk11 then
							BlzFrameSetText(PerkToolTip[k],"Автоматически чинит союзные здания и технику в ридиусе 400. ".."|cffffff00".."10 ед. в секунду|r" ) --|cffffff00AAAA|r
						else
							BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00".."0/1|r" ) --|cffffff00AAAA|r
						end
					elseif k==13  then
						if not data.Perk13 then
							BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00"..data.WolfCount.."/5|r" ) --|cffffff00AAAA|r
						else
							BlzFrameSetText(PerkToolTip[k],"Призывает волка, который будет вам помогать. ".."|cffffff00".."Автономен и неуязвим|r" ) --|cffffff00AAAA|r
						end
					elseif k==14  then
						if not data.Perk14A then
							BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00"..data.StoneCount.."/1|r" ) --|cffffff00AAAA|r
						else
							BlzFrameSetText(PerkToolTip[k],"Поглощает ".."|cffffff00".."100%% |r".." урона " ) --|cffffff00AAAA|r
						end
					elseif k==16  then
						if not data.Perk16 then
							BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00".." Ищите за вулканом|r" ) --|cffffff00AAAA|r
						else
							BlzFrameSetText(PerkToolTip[k],"Даёт дальний бой, увеличивает урон в ".."|cffffff00".."5 раз |r".." и оглушает на |cffffff00 0,5 сек. |r" ) --|cffffff00AAAA|r
						end
					end
				end
			end
		end
	end)
end

function CreateMouseHelper(sec)
	local wood=BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	BlzFrameSetTexture(wood, "RMB", 0, true)
	BlzFrameSetSize(wood, 0.15, 0.15)
	BlzFrameSetAbsPoint(wood, FRAMEPOINT_CENTER,0.1 , 0.4)
	local new_FrameChargesText = BlzCreateFrameByType("TEXT", "ButtonChargesText", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	BlzFrameSetAbsPoint(new_FrameChargesText, FRAMEPOINT_CENTER,0.1 , 0.3)
	BlzFrameSetText(new_FrameChargesText, "Удерживайте левую нопку мыши, чтобы рубить деревья и")
	local new_FrameChargesText2 = BlzCreateFrameByType("TEXT", "ButtonChargesText", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	BlzFrameSetAbsPoint(new_FrameChargesText2, FRAMEPOINT_CENTER,0.1 , 0.17)
	BlzFrameSetText(new_FrameChargesText2, "Используйте кнопки WASD, для движения")
	local wasd=BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	BlzFrameSetTexture(wasd, "WASD", 0, true)
	BlzFrameSetSize(wasd, 0.10, 0.10)
	BlzFrameSetAbsPoint(wasd, FRAMEPOINT_CENTER,0.1 , 0.25)


	TimerStart(CreateTimer(), 1, true, function()
		for i=0,3 do
			local data=HERO[i]
			if data.MHoldSec >=3  and data.MHoldSec <=5  then
				if GetLocalPlayer()==Player(i) then
					BlzFrameSetVisible(wood,false)
					BlzFrameSetVisible(new_FrameChargesText,false)
					BlzFrameSetVisible(wasd,false)
					BlzFrameSetVisible(new_FrameChargesText2,false)
				end
			end
		end
	end)
end

function CreateStatusBar()
	local status=BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	BlzFrameSetTexture(status, "ReplaceableTextures\\CommandButtons\\BTNHumanLumberUpgrade2", 0, true)
	BlzFrameSetSize(status, 0.019, 0.019)
	BlzFrameSetAbsPoint(status, FRAMEPOINT_LEFT,0.04 , 0.6-0.04)

	--обновление текста
	TimerStart(CreateTimer(), 1, true, function()
		for i=0,3 do
			local data=HERO[i]
			if GetLocalPlayer()==Player(i) then
				for k=1,7 do
					if k==1 then
						BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00"..data.SingleWoodCount.."/25|r" ) --|cffffff00AAAA|r
					end
				end
			end
		end
	end)
end