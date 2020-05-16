---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 03.04.2020 2:31
---

function HideOriginFrameCustom()
	BlzFrameSetVisible(BlzGetOriginFrame(ORIGIN_FRAME_PORTRAIT, 0), false) --портрет
	BlzFrameSetVisible(BlzGetOriginFrame(ORIGIN_FRAME_COMMAND_BUTTON, 0), false) -- командная панель?
	BlzFrameSetVisible(BlzGetOriginFrame(ORIGIN_FRAME_HERO_BAR, 0), false) --хз наверное иконка героя
	BlzFrameSetVisible(BlzGetOriginFrame(ORIGIN_FRAME_UNIT_PANEL_BUFF_BAR , 0), false) --не работает
	--BlzFrameSetVisible(BlzGetOriginFrame(ORIGIN_FRAME_UNIT_PANEL_BUFF_BAR_LABEL , 0), false)--КРАШ
	BlzFrameSetVisible(BlzGetFrameByName("UpperButtonBarFrame", 0), false)
	BlzFrameSetVisible(BlzGetOriginFrame(ORIGIN_FRAME_SYSTEM_BUTTON, 0), false)  --// F10 (Menu)
	BlzFrameSetVisible(BlzGetOriginFrame(ORIGIN_FRAME_SYSTEM_BUTTON, 1), false)  -- // F11 (Allies)
	BlzFrameSetVisible(BlzGetOriginFrame(ORIGIN_FRAME_SYSTEM_BUTTON, 2), false)  --// F12 (Log)
	BlzFrameSetVisible(BlzGetOriginFrame(ORIGIN_FRAME_SYSTEM_BUTTON, 3), false)  --// F9  (Quests)

end



function HideEverything()
	BlzHideOriginFrames(true)
	BlzEnableUIAutoPosition ( false )

	local GAME_UI     = BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0)
	local WORLD_FRAME = BlzGetOriginFrame(ORIGIN_FRAME_WORLD_FRAME, 0)
	BlzFrameSetAllPoints(WORLD_FRAME, GAME_UI)
	--BlzFrameSetVisible(BlzGetFrameByName("ConsoleUIBackdrop",0), false)

		--	// Hide Inventory Cover
	BlzFrameSetAlpha(BlzGetFrameByName("SimpleInventoryCover", 0), 0)

			--// Show Minimap
	 BlzFrameSetVisible(BlzGetOriginFrame(ORIGIN_FRAME_MINIMAP, 0),false)


		--	// Show Inventory, without unitInfo
	 BlzFrameSetVisible(BlzFrameGetParent(BlzGetOriginFrame(ORIGIN_FRAME_ITEM_BUTTON, 0)), true)
			--// Show UnitInfos parent to show inventory and unit info
	--BlzFrameSetVisible(BlzFrameGetParent(BlzGetFrameByName("SimpleInfoPanelUnitDetail",0)),true) --Панель юнита
			--// Show Hero Icons at the left top of the screen
	 BlzFrameSetVisible(BlzGetOriginFrame(ORIGIN_FRAME_HERO_BAR,0), false)
		--	//  //Quests, Menu, Allies, Log
	 BlzFrameSetVisible(BlzGetFrameByName("UpperButtonBarFrame",0),false)
	--// //Gold, Lumber, food and Upkeep; also enables /fps /ping /apm
	 BlzFrameSetVisible(BlzGetFrameByName("ResourceBarFrame",0),true)


	--Вернуть F10
	local f10=BlzFrameSetVisible(BlzGetOriginFrame(ORIGIN_FRAME_SYSTEM_BUTTON, 0), true) --не не работает
	BlzFrameClearAllPoints(f10)
	BlzFrameSetAbsPoint(f10, FRAMEPOINT_CENTER, 0.4 ,0.4)


	BlzFrameSetVisible(BlzGetFrameByName("ConsoleUIBackdrop", 0), false)-- черная рамка
	BlzFrameSetAbsPoint(BlzGetFrameByName("ConsoleUI",0), FRAMEPOINT_BOTTOMLEFT, 0.0 ,0.2) --для смещения бага некликабельности в нижнем правом углу

	BlzFrameSetAbsPoint(BlzGetOriginFrame(ORIGIN_FRAME_CHAT_MSG, 0), FRAMEPOINT_BOTTOMLEFT, 0.1 ,0.15)
	BlzFrameSetAbsPoint(BlzGetOriginFrame(ORIGIN_FRAME_UNIT_MSG, 0), FRAMEPOINT_BOTTOMLEFT, 0.15 ,0.05)

	BlzFrameSetVisible(BlzGetOriginFrame(ORIGIN_FRAME_PORTRAIT, 0), true)

	local fps=BlzGetFrameByName("ResourceBarFrame",0)
	BlzFrameClearAllPoints(fps)
	BlzFrameSetAbsPoint(fps, FRAMEPOINT_CENTER, 0.9 ,0.61)

	local infoPanel=BlzFrameGetParent(BlzGetFrameByName("SimpleInfoPanelUnitDetail",0)) -- панель стат героя
	BlzFrameClearAllPoints(infoPanel)
	BlzFrameSetVisible(infoPanel,true)
	BlzFrameSetAbsPoint(infoPanel, FRAMEPOINT_CENTER, 0.115 ,0.625) --0,9 чтобы полностью убрать
	--убираем всю инфопанель кроме статуса
	BlzFrameSetAbsPoint(BlzGetFrameByName("InfoPanelIconHeroStrengthLabel",6), FRAMEPOINT_CENTER, 0.9 ,5)
	BlzFrameSetAbsPoint(BlzGetFrameByName("InfoPanelIconHeroStrengthValue",6), FRAMEPOINT_CENTER, 0.9 ,5)
	BlzFrameSetAbsPoint(BlzGetFrameByName("InfoPanelIconHeroIntellectLabel",6), FRAMEPOINT_CENTER, 0.9 ,5)
	BlzFrameSetAbsPoint(BlzGetFrameByName("InfoPanelIconHeroIntellectValue",6), FRAMEPOINT_CENTER, 0.9 ,5)
	BlzFrameSetAbsPoint(BlzGetFrameByName("InfoPanelIconHeroAgilityLabel",6), FRAMEPOINT_CENTER, 0.9 ,5)
	BlzFrameSetAbsPoint(BlzGetFrameByName("InfoPanelIconHeroAgilityValue",6), FRAMEPOINT_CENTER, 0.9 ,5)
	BlzFrameSetAbsPoint(BlzGetFrameByName("InfoPanelIconBackdrop",0), FRAMEPOINT_CENTER, 0.9 ,0.9)
	BlzFrameSetAbsPoint(BlzGetFrameByName("InfoPanelIconBackdrop",1), FRAMEPOINT_CENTER, 0.9 ,0.9)
	BlzFrameSetAbsPoint(BlzGetFrameByName("InfoPanelIconBackdrop",2), FRAMEPOINT_CENTER, 0.9 ,0.9)
	BlzFrameSetAbsPoint(BlzGetFrameByName("InfoPanelIconBackdrop",3), FRAMEPOINT_CENTER, 0.9 ,0.9)
	BlzFrameSetAbsPoint(BlzGetFrameByName("InfoPanelIconBackdrop",4), FRAMEPOINT_CENTER, 0.9 ,0.9)
	BlzFrameSetAbsPoint(BlzGetFrameByName("InfoPanelIconBackdrop",5), FRAMEPOINT_CENTER, 0.9 ,0.9)


	--FrameGe



	--BlzFrameSetVisible(BlzGetFrameByName("SimpleBuildTimeIndicator",0),false)
	--BlzFrameSetVisible(BlzGetOriginFrame(ORIGIN_FRAME_UNIT_PANEL_BUFF_BAR , 0), false)
	--
	--ORIGIN_FRAME_TOP_MSG
	--ПРЕДЕТЫ но не работают
	local InvBackdrop = {}
	local InfoBackdrop     = BlzCreateFrame('Steel-Backdrop', WORLD_FRAME, 0, 0)
	for i = 0, 5 do
		--[[InvBackdrop[i] = BlzCreateFrame('Item-Backdrop', WORLD_FRAME, 0, 0)
		BlzFrameSetSize(InvBackdrop[i], 0.034, 0.034)
		if i == 0 then
			BlzFrameSetPoint(InvBackdrop[i], FRAMEPOINT_TOPLEFT, InfoBackdrop, FRAMEPOINT_TOPRIGHT, 0, 0)
		elseif i < 2 then
			BlzFrameSetPoint(InvBackdrop[i], FRAMEPOINT_LEFT, InvBackdrop[i - 1], FRAMEPOINT_RIGHT, -0.001, 0)
		else
			BlzFrameSetPoint(InvBackdrop[i], FRAMEPOINT_TOP, InvBackdrop[i - 2], FRAMEPOINT_BOTTOM, 0, 0.001)
		end]]
		local item = BlzGetOriginFrame(ORIGIN_FRAME_ITEM_BUTTON, i)
		BlzFrameSetVisible(item, true)
		BlzFrameClearAllPoints(item)
		BlzFrameSetSize(item, 0.026, 0.026)
		BlzFrameSetAbsPoint(item, FRAMEPOINT_CENTER, 0.095+0.026*i ,0.54)
	end

	BlzFrameClearAllPoints(BlzGetOriginFrame(ORIGIN_FRAME_UBERTOOLTIP, 0)) -- ПОдсказка при наведении на дефолт фреймы
	BlzFrameSetAbsPoint(BlzGetOriginFrame(ORIGIN_FRAME_UBERTOOLTIP, 0), FRAMEPOINT_CENTER, 0.2 ,0.45)



	for i = 1,11 do
		BlzFrameSetVisible(BlzGetFrameByName("CommandButton_"..i, 0), false)
	end
	BlzFrameSetSize(BlzGetFrameByName("CommandButton_0", 0),0,0)--сколлапсировал в точку
end

function HealthBarAdd(u) --Код Сиренчика
	BlzLoadTOCFile("Main.toc")
	local bar = BlzCreateSimpleFrame("MyFakeBar", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 0)
	BlzFrameSetVisible(bar,false)

	--Моделька пеона же


	if GetLocalPlayer()==GetOwningPlayer(u) and GetLocalON then -- хп бары, они точно в норме
		BlzFrameSetVisible(bar,true)
		--BlzFrameSetVisible(heroico,true)
	end
	BlzFrameSetTexture(bar, "Replaceabletextures\\Teamcolor\\Teamcolor0"..(GetConvertedPlayerId(GetOwningPlayer(u))-1)..".blp", 0, true)
	BlzFrameSetTexture(BlzGetFrameByName("MyFakeBarBorder",0),"MyBarBorder.blp", 0, true)
	BlzFrameSetText(BlzGetFrameByName("MyFakeBarTitle",0), GetHeroProperName(u).." ‡")--‡ Сердце ™ щит
	local lefttext = BlzGetFrameByName("MyFakeBarLeftText",0)
	local righttext = BlzGetFrameByName("MyFakeBarRightText",0)
	local function on_timer()

		BlzFrameSetValue(bar, GetUnitLifePercent(u))
		BlzFrameSetText(lefttext, R2I(GetWidgetLife(u)))
		BlzFrameSetText(righttext, R2I(BlzGetUnitMaxHP(u)))
	end
	TimerStart(CreateTimer(),0.5,true, on_timer)
	BlzFrameSetAbsPoint(bar, FRAMEPOINT_LEFT, 0.08, 0.564)
end
GTotalWood=0
Ending=false
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
	BlzFrameSetSize(tooltip, 0.18, 0.20)
	--if BlzGetLocale()=="ruRU" then
		BlzFrameSetText(BlzGetFrameByName("BoxedTextTitle", 0), "|cffffff00".."Общая древесина".."|r")
		BlzFrameSetText(UpDest, "Количество древесины, необходимое для постройки корабля и победы. Потеря лесопилки приведёт к поражению всех игроков")
	--else
	--	BlzFrameSetText(BlzGetFrameByName("BoxedTextTitle", 0), "Total Wood")
	--	BlzFrameSetText(UpDest, "The amount of wood required to build a ship. Losing a sawmill will defeat all players")
	--end

	local charges= BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	local new_FrameChargesText = BlzCreateFrameByType("TEXT", "ButtonChargesText", charges, "", 0)

	BlzFrameSetTexture(charges, "ChargesTexture.blp", 0, true)
	BlzFrameSetSize(charges, 0.04, 0.012)
	BlzFrameSetAbsPoint(charges, FRAMEPOINT_CENTER,0.8-0.02 , 0.6-0.04)
	--BlzFrameSetPoint(charges, FRAMEPOINT_BOTTOM, wood, FRAMEPOINT_BOTTOM, 0,0)

	BlzFrameSetPoint(new_FrameChargesText, FRAMEPOINT_CENTER, charges, FRAMEPOINT_CENTER, 0.,0.)

	TimerStart(CreateTimer(), 0.1, true, function()
		BlzFrameSetText(new_FrameChargesText, ""..GTotalWood.."/100")
	end)

end
function CreateShipFrame ()
	BlzLoadTOCFile("war3mapimported\\BoxedText.toc")
	local wood=BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	BlzFrameSetTexture(wood, "ReplaceableTextures\\CommandButtons\\BTNJuggernaut", 0, true)
	BlzFrameSetSize(wood, 0.04, 0.04)
	BlzFrameSetAbsPoint(wood, FRAMEPOINT_CENTER,0.8-0.02-0.04 , 0.6-0.02)--0.2



	local faceHover = BlzCreateFrameByType("FRAME", "FaceFrame", wood,"", 0) --face is a BACKDROP it can not have events nor a tooltip, thats why one creates an empty frame managing that.
	local tooltip = BlzCreateFrame("BoxedText", wood, 0, 0)--Create the BoxedText Frame
	local UpDest=BlzGetFrameByName("BoxedTextValue", 0)
	BlzFrameSetAllPoints(faceHover, wood) --faceHover copies the size and position of face.
	BlzFrameSetTooltip(faceHover, tooltip) --when faceHover is hovered with the mouse frame tooltip becomes visible.
	BlzFrameSetAbsPoint(tooltip, FRAMEPOINT_CENTER,0.8-0.13-0.04, 0.6)
	BlzFrameSetSize(tooltip, 0.18, 0.18)
	BlzFrameSetText(BlzGetFrameByName("BoxedTextTitle", 0), "Хп корабля")
	BlzFrameSetText(UpDest, "Корабль получился бракованным и нуждается в ремонте, отправляйтесь на запад и помогите своему Королю")

	local charges= BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	local new_FrameChargesText = BlzCreateFrameByType("TEXT", "ButtonChargesText", charges, "", 0)

	BlzFrameSetTexture(charges, "ChargesTexture.blp", 0, true)
	BlzFrameSetSize(charges, 0.04, 0.012)
	BlzFrameSetAbsPoint(charges, FRAMEPOINT_CENTER,0.8-0.02-0.04 , 0.6-0.04)
	--BlzFrameSetPoint(charges, FRAMEPOINT_BOTTOM, wood, FRAMEPOINT_BOTTOM, 0,0)

	BlzFrameSetPoint(new_FrameChargesText, FRAMEPOINT_CENTER, charges, FRAMEPOINT_CENTER, 0.,0.)
	local ship=FindUnitOfType(FourCC('o007'))
	TimerStart(CreateTimer(), 0.1, true, function()
		BlzFrameSetText(new_FrameChargesText, R2I(GetUnitLifePercent(ship)).."/100")
	end)

end

function MoveWoodAsFarm(hero,k)
	AddHeroXP(hero,70*k,true)
	local wood=BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	BlzFrameSetVisible(wood,false)
	if GetLocalPlayer()==GetOwningPlayer(hero) and GetLocalON  then -- момент перемещения дерева, проверено - не он
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



			if GTotalWood==50 or GTotalWood==51  then--or GTotalWood==1
				HERO[0].Perk17=true
				HERO[1].Perk17=true
				HERO[2].Perk17=true
				HERO[3].Perk17=true
				--if GetLocalPlayer()==GetOwningPlayer(hero) then
				PerkUnlocker(HERO[0],17)
				PerkUnlocker(HERO[1],17)
				PerkUnlocker(HERO[2],17)
				PerkUnlocker(HERO[3],17)
				--end
			end
			--print(GTotalWood)
			if GTotalWood==100 or GTotalWood==101  then--or GTotalWood==1
				--print("Победа, дерево собрано!")
				--print("Система: Древисины достаточно, отправляйтесь строить корабль")
				if BlzGetLocale()=="ruRU" then
					print("|cff8080ffКороль пеонов: |r".."Древесины достаточно, отправляйтесь ремонтировать корабль")
				else
					print("|cff8080ffPeon King: |r".."Wood is enough, go repair ship")
				end
				QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_COMPLETED, " ")
				GTotalWood=GTotalWood-100
				local new=BlzCreateUnitWithSkin(Player(5), FourCC("o007"), -4935.0, 809.5, 176.590, FourCC("o007"))
				AddQuest(true,HERO[0].UnitHero,-4935.0,809.5)
				AddQuest(true,HERO[1].UnitHero,-4935.0,809.5)
				AddQuest(true,HERO[2].UnitHero,-4935.0,809.5)
				AddQuest(true,HERO[3].UnitHero,-4935.0,809.5)
				CreateShipFrame()
				Normadia()
				Ending=true
				SetUnitLifePercentBJ(new,10)
				TimerStart(CreateTimer(), 1, true, function()
					--print("осталось хп"..GetLosingHP(new))
					if GetLosingHP(new)<=5 then
						if UnitAlive(new) then
							CustomVictoryDialogBJ(Player(0))
							CustomVictoryDialogBJ(Player(1))
							CustomVictoryDialogBJ(Player(2))
							CustomVictoryDialogBJ(Player(3))
						else
							CustomDefeatBJ(Player(0),"Вы проиграли")
							CustomDefeatBJ(Player(1),"Вы проиграли")
							CustomDefeatBJ(Player(2),"Вы проиграли")
							CustomDefeatBJ(Player(3),"Вы проиграли")
						end
					end
				end)
			end
		end
	end)

end







function TestFrame()
	--print("isstart")
end

FrameSelecter={}
function VisualUnlock()
	TimerStart(CreateTimer(),10,true, function()
		for k=0,3 do
			for i=1,#Name do
				local data=HERO[k]
				if BlzFrameIsVisible(data.VisualSelectorFrame[i]) then
					--BlzFrameSetVisible(FrameSelecter[i],false)
					BlzFrameSetVisible(data.VisualSelectorFrame[i],false)
				end
			end
		end
	end)
end

--удалил старый блок

function CreateMouseHelper()
	local wood=BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	BlzFrameSetTexture(wood, "RMB", 0, true)
	BlzFrameSetSize(wood, 0.15, 0.15)
	BlzFrameSetAbsPoint(wood, FRAMEPOINT_CENTER,0.1 , 0.4)
	local new_FrameChargesText = BlzCreateFrameByType("TEXT", "ButtonChargesText", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	BlzFrameSetAbsPoint(new_FrameChargesText, FRAMEPOINT_CENTER,0.1 , 0.31)
	BlzFrameSetText(new_FrameChargesText, "Hold LMB - Actions")

	local new_FrameChargesText2 = BlzCreateFrameByType("TEXT", "ButtonChargesText", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	BlzFrameSetAbsPoint(new_FrameChargesText2, FRAMEPOINT_CENTER,0.1 , 0.17)
	BlzFrameSetText(new_FrameChargesText2, "Use WASD for moving")

	local new_FrameChargesText3 = BlzCreateFrameByType("TEXT", "ButtonChargesText", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	BlzFrameSetAbsPoint(new_FrameChargesText3, FRAMEPOINT_CENTER,0.1 , 0.29)
	BlzFrameSetText(new_FrameChargesText3, "Hold RMB - Shield")

	local wasd=BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	BlzFrameSetTexture(wasd, "WASD", 0, true)
	BlzFrameSetSize(wasd, 0.10, 0.10)
	BlzFrameSetAbsPoint(wasd, FRAMEPOINT_CENTER,0.1 , 0.25)


	TimerStart(CreateTimer(), 1, true, function()
		for i=0,3 do
			local data=HERO[i]
			if data.MHoldSec >=5  and data.MHoldSec <=9  then
				if GetLocalPlayer()==Player(i) and GetLocalON  then -- маусхелпер 1 раз вначале
					BlzFrameSetVisible(wood,false)
					BlzFrameSetVisible(new_FrameChargesText,false)
					BlzFrameSetVisible(wasd,false)
					BlzFrameSetVisible(new_FrameChargesText2,false)
					BlzFrameSetVisible(new_FrameChargesText3,false)
				end
			end
		end
	end)
end

StatusTexture={
	"ReplaceableTextures\\CommandButtons\\BTNGatherGold",
	"ReplaceableTextures\\CommandButtons\\BTNHumanArmorUpOne",
}

function CreateStatusBar(pid)
	local data=HERO[pid]
	local statustxt={}
	for i=1,2 do
		local status=BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
		BlzFrameSetTexture(status, StatusTexture[i], 0, true)
		BlzFrameSetSize(status, 0.019, 0.019)
		BlzFrameSetAbsPoint(status, FRAMEPOINT_LEFT,0.08+0.02*(i-1) , 0.6-0.04)
		statustxt[i] = BlzCreateFrameByType("TEXT", "ButtonChargesText", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
		BlzFrameSetPoint(statustxt[i], FRAMEPOINT_CENTER,status,FRAMEPOINT_CENTER,0, 0)

		if GetLocalPlayer() ~= Player(pid) and GetLocalON then -- статус бар, вылетало и до него
			BlzFrameSetVisible(status, false)
			BlzFrameSetVisible(statustxt[i], false)
		end

	end

	TimerStart(CreateTimer(), 1, true, function()
		local d=R2I(BlzGetUnitBaseDamage(data.UnitHero,0))
		BlzFrameSetText(statustxt[1], d)
		if not data.Perk14A then
			BlzFrameSetText(statustxt[2], 50)
		else
			BlzFrameSetText(statustxt[2], 100)
		end
	end)

	--обновление текстаз

end