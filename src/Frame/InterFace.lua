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
	BlzFrameSetSize(tooltip, 0.18, 0.18)
	if BlzGetLocale()=="ruRU" then
		BlzFrameSetText(BlzGetFrameByName("BoxedTextTitle", 0), "Общая древесина")
		BlzFrameSetText(UpDest, "Количество древисины, необходимое для постройки корабля. Потеря лесопилки приведёт к поражению всех игроков")
	else
		BlzFrameSetText(BlzGetFrameByName("BoxedTextTitle", 0), "Total Wood")
		BlzFrameSetText(UpDest, "The amount of wood required to build a ship. Losing a sawmill will defeat all players")
	end

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



			if GTotalWood==50 or GTotalWood==51 then
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
			if GTotalWood==100 or GTotalWood==101 then
				--print("Победа, дерево собрано!")
				--print("Система: Древисины достаточно, отправляйтесь строить корабль")
				if BlzGetLocale()=="ruRU" then
					print("|cff8080ffКороль пеонов: |r".."Древисины достаточно, отправляйтесь ремонтировать корабль")
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

function HealthBarAdd(u)
	BlzLoadTOCFile("Main.toc")
	local bar = BlzCreateSimpleFrame("MyFakeBar", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 0)
	BlzFrameSetVisible(bar,false)
	if GetLocalPlayer()==GetOwningPlayer(u) then
		BlzFrameSetVisible(bar,true)
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
	BlzFrameSetAbsPoint(bar, FRAMEPOINT_LEFT, 0.04, 0.58)
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

function PerkButtonLine()
	BlzLoadTOCFile("war3mapimported\\BoxedText.toc")
	local next=0.039
	for i=1,#Name do -- число талантов
		local face = BlzCreateFrameByType("GLUEBUTTON", "FaceButton", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
		BlzFrameSetAbsPoint(face, FRAMEPOINT_CENTER, 0.1+next*(i-1), 0.02)
		BlzFrameSetSize(face, 0.04, 0.04)
		local  buttonIconFrame = BlzCreateFrameByType("BACKDROP", "FaceButtonIcon", face, "", 0)
		BlzFrameSetAllPoints(buttonIconFrame, face)
		BlzFrameSetTexture(buttonIconFrame, texture[i],0, true)
		local faceHover = BlzCreateFrameByType("FRAME", "FaceFrame", face,"", 0)
		local tooltip = BlzCreateFrame("BoxedText", face, 0, 0)
		local UpDest=BlzGetFrameByName("BoxedTextValue", 0)
		BlzFrameSetAllPoints(faceHover, face)
		BlzFrameSetTooltip(faceHover, tooltip)
		BlzFrameSetPoint(tooltip, FRAMEPOINT_BOTTOM, face, FRAMEPOINT_TOP, 0.0, 0.0)
		BlzFrameSetSize(tooltip, 0.15, 0.08)
		BlzFrameSetText(BlzGetFrameByName("BoxedTextTitle", 0), Name[i])
		BlzFrameSetText(UpDest, description[i])

		local lock=BlzCreateFrameByType("BACKDROP", "Face",face, "", 0)--замочек
		BlzFrameSetPoint(lock, FRAMEPOINT_CENTER, face, FRAMEPOINT_CENTER, 0.,0.)
		BlzFrameSetSize(lock, 0.04, 0.04)
		BlzFrameSetTexture(lock, "close",0, true)

		--выделение Хейтовские
		local buttonsprite = BlzCreateFrameByType("SPRITE", "justAName", face, "WarCraftIIILogo", 0)
		BlzFrameSetPoint(buttonsprite, FRAMEPOINT_BOTTOMLEFT, face, FRAMEPOINT_BOTTOMLEFT, 0.02, 0.02)
		BlzFrameSetSize(buttonsprite, 1., 1.)
		BlzFrameSetScale(buttonsprite, 1.)
		BlzFrameSetModel(buttonsprite, "selecter1.mdx", 0)
		BlzFrameSetVisible(buttonsprite,false)
		--глобалки
		FrameSelecter[i]=buttonsprite
		PerkIsLock[i]=lock --замочек
		PerkToolTip[i]=UpDest -- тултип в описании]]
	end


	--обновление текста
	TimerStart(CreateTimer(), 1, true, function()
		for i=0,3 do
			local data=HERO[i]
			if GetLocalPlayer()==Player(i) then
				for k=1,#Name  do
					--print(#Name)
					if k==1 then
						BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00"..data.SingleWoodCount.."/25|r" ) --|cffffff00AAAA|r
					elseif k==2  then
						BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00"..R2I(data.RevoltSec).."/300|r" ) --|cffffff00AAAA|r
					elseif k==3  then
						BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00"..data.Dies.."/15|r" ) --|cffffff00AAAA|r
					elseif k==4  then
						BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00"..R2I(data.TotalWay).."/200000|r" ) --|cffffff00AAAA|r
					elseif k==5  then
						if  data.Perk5 then
							BlzFrameSetText(PerkToolTip[k],"Урон увеличен, текущий урон: ".."|cffffff00"..BlzGetUnitBaseDamage(data.UnitHero,0).."|r" ) --|cffffff00AAAA|r
						else
							BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00"..data.Kills.."/5|r" ) --|cffffff00AAAA|r
						end
					elseif k==6  then
						if  data.Perk6 then
							BlzFrameSetText(PerkToolTip[k],"Наносит дополнительный и замедляет врагов в области 150. ".."|cffffff00".."90 доп. урона|r" ) --|cffffff00AAAA|r
						else
							BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00"..R2I(data.Repairs).."/1000|r" ) --|cffffff00AAAA|r
						end
					elseif k==7  then
						if  data.Perk7 then
							if data.Perk7A then
								BlzFrameSetText(PerkToolTip[k],"Восстанавливает ".."|cffffff00".."3 %%|r".." от максимального ХП при убийстве врагов в ближнем бою" ) --|cffffff00AAAA|r
							else
								BlzFrameSetText(PerkToolTip[k],"Продолжайте правильно питаться и овладеете вампиризмом. ".."|cffffff00"..R2I(data.Heals).."/5000|r" ) --|cffffff00AAAA|r
							end
						else
							BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00"..R2I(data.Heals).."/1000|r" ) --|cffffff00AAAA|r
						end

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
						--print(k)
						if  data.Perk11 then
							--print("0")
							BlzFrameSetText(PerkToolTip[k],"Автоматически чинит союзные здания и технику в ридиусе 400. ".."|cffffff00".."10 ед. в секунду|r" ) --|cffffff00AAAA|r
						else
							--print("2")
							BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00".."0/1|r" ) --|cffffff00AAAA|r
							--print("3")
						end
						--print(k.."end")
					elseif k==12  then -- ледяной щит
						--print("жвенадцать")
						if  data.Perk12 then
							BlzFrameSetText(PerkToolTip[k],"При поглощении урона в щит враги замораживаются на ".."|cffffff00".."3 секунды|r" ) --|cffffff00AAAA|r
						else
							BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00"..R2I(data.FrozenShield).."/60|r" ) --|cffffff00AAAA|r
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
					elseif k==15  then
						if not data.Perk15 then
							BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00"..data.SheepCount.."/40|r" ) --|cffffff00AAAA|r
						else
							BlzFrameSetText(PerkToolTip[k],"Герой взрывается при смерти нанося урон и каждую ".."|cffffff002|r".." смерть воскресает" ) --|cffffff00AAAA|r
						end
					elseif k==16  then
						if not data.Perk16 then
							BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00".."Ищите за вулканом|r" ) --|cffffff00AAAA|r
						else
							BlzFrameSetText(PerkToolTip[k],"Даёт дальний бой, увеличивает урон в ".."|cffffff00".."5 раз |r".." и оглушает на |cffffff00 0,5 сек. |r" ) --|cffffff00AAAA|r
						end
					elseif k==17  then
						if not data.Perk17 then
							BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00"..GTotalWood.."/50|r" ) --|cffffff00AAAA|r
						else
							BlzFrameSetText(PerkToolTip[k],"Активация: удержимая ПКМ (щит), используйте удар (ЛКМ). Презезарядка: ".."|cffffff00".."2 сек |r".."" ) --|cffffff00AAAA|r
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
				if GetLocalPlayer()==Player(i) then
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

}

function CreateStatusBar(pid)
	local data=HERO[pid]
	--for i=0,3 do
		local status=BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
		BlzFrameSetTexture(status, StatusTexture[i], 0, true)
		BlzFrameSetSize(status, 0.019, 0.019)
		BlzFrameSetAbsPoint(status, FRAMEPOINT_LEFT,0.04 , 0.6-0.04)
		local statustxt = BlzCreateFrameByType("TEXT", "ButtonChargesText", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
		BlzFrameSetPoint(statustxt, FRAMEPOINT_CENTER,status,FRAMEPOINT_CENTER,0, 0)
		if GetLocalPlayer() ~= Player(pid) then
			BlzFrameSetVisible(status, false)
			BlzFrameSetVisible(statustxt, false)
		end

	--end

	TimerStart(CreateTimer(), 1, true, function()
		local d=R2I(BlzGetUnitBaseDamage(data.UnitHero,0))
		BlzFrameSetText(statustxt, d)
	end)

	--обновление текстаз

end