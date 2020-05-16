---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 26.04.2020 23:44
texture = {
	"ReplaceableTextures\\CommandButtons\\BTNPeasant",
	"ReplaceableTextures\\CommandButtons\\BTNChaosPeon",
	"ReplaceableTextures\\CommandButtons\\BTNGoblinSapper",
	"ReplaceableTextures\\CommandButtons\\BTNBoots",
	"ReplaceableTextures\\CommandButtons\\BTNBloodLust",
	"ReplaceableTextures\\CommandButtons\\BTNStormBolt",
	"ReplaceableTextures\\CommandButtons\\BTNAbomination", --пудж
	"ReplaceableTextures\\CommandButtons\\BTNKotoBeast",
	"btngathergold",
	"ReplaceableTextures\\CommandButtons\\BTNEngineeringUpgrade", -- техника безопасности
	"ReplaceableTextures\\PassiveButtons\\PASBTNDemolish",
	"ReplaceableTextures\\PassiveButtons\\PASBTNFrost",
	"ReplaceableTextures\\CommandButtons\\BTNTimberWolf",
	"ReplaceableTextures\\CommandButtons\\BTNResistantSkin",
	"ReplaceableTextures\\CommandButtons\\BTNPlagueCloud",
	"ReplaceableTextures\\CommandButtons\\BTNOrbOfFire",
	"ReplaceableTextures\\CommandButtons\\BTNHumanArmorUpThree",
}

--"ReplaceableTextures\\CommandButtonsDisabled\\DISBTNHumanArmorUpThree"

DISBTNTexture = {
	"ReplaceableTextures\\CommandButtonsDisabled\\DISBTNPeasant",
	"ReplaceableTextures\\CommandButtonsDisabled\\DISBTNChaosPeon",
	"ReplaceableTextures\\CommandButtonsDisabled\\DISBTNGoblinSapper",
	"ReplaceableTextures\\CommandButtonsDisabled\\DISBTNBoots",
	"ReplaceableTextures\\CommandButtonsDisabled\\DISBTNBloodLust",
	"ReplaceableTextures\\CommandButtonsDisabled\\DISBTNStormBolt",
	"ReplaceableTextures\\CommandButtonsDisabled\\DISBTNAbomination", --пудж
	"ReplaceableTextures\\CommandButtonsDisabled\\DISBTNKotoBeast",
	"disbtngathergold", -- кирка
	"ReplaceableTextures\\CommandButtonsDisabled\\DISBTNEngineeringUpgrade", -- техника безопасности
	"ReplaceableTextures\\CommandButtonsDisabled\\DISPASBTNDemolish",
	"ReplaceableTextures\\CommandButtonsDisabled\\DISPASBTNFrost",
	"ReplaceableTextures\\CommandButtonsDisabled\\DISBTNTimberWolf",
	"ReplaceableTextures\\CommandButtonsDisabled\\DISBTNResistantSkin",
	"ReplaceableTextures\\CommandButtonsDisabled\\DISBTNPlagueCloud",
	"ReplaceableTextures\\CommandButtonsDisabled\\DISBTNOrbOfFire",
	"ReplaceableTextures\\CommandButtonsDisabled\\DISBTNHumanArmorUpThree",
}
Name = { --Определяет количество талантов
	"Работник месяца",
	"Бунтовщик",
	"Поблажка",
	"Лесной Болван",
	"Вкус крови",
	"Ученик Тора",
	"Ожирение",
	"Толстокожий друг",
	"Калёная кирка", --9
	"Правила ТБ",
	"Технологии людей",
	"Ледяной щит",
	"Шапка волка",
	"Каменный Щит",
	"Овечья болезь",
	"Сфера огра",
	"Рывок", --17
}
NameENG = { --Определяет количество талантов
	"Best Employee",
	"Insurgent",
	"law of death",
	"Forest Gump",
	"First Blood",
	"Thor's apprentice",
	"Obesity 0 degree",
	"Thick-skinned",
	"Hot pickaxe", --9
	"Safe work",
	"Technology people",
	"Ice Shield",
	"Wolf cap",
	"Stone Shield",
	"Sheep disease",
	"Ogre Orb",
	"Dash", --17
}
description = {
	"Принесите 25 дерева, чтобы удвоить его добычу. ",
	"Ничего не делайте в течении 300 сек, чтобы поднять бунт. ",
	"Умрите 15 раз, чтобы получить +100 к здоровью. ",
	"Пробегите расстояние в 200000 метров, чтобы стать на 50%% быстрее. ",
	"Убивайте врагов, чтобы увеличить свой урон в 2 раза. ",
	"Почините здания на 1000 единиц, чтобы замедлять врагов при ударе. ",
	"Исцелитесть в объёме 1000 ед, чтобы получить +7 к регенерации. ",
	"Приручите кодоя, чтобы получить 10 ед брони. ",
	"Накалите кирку до красна, чтобы увеличить урон в 5 раз. ",
	"Донесите дерево с полным здоровьем, чтобы обучиться парированию. ",
	"Сломайте лесопилку людей, чтобы получить ауру ремонта зданий. ",
	"Пробудьте на холоде, чтобы заморозить щит. ",
	"Убивайте волков, чтобы получить шапку волка. ",
	"Поймайте щитом камни големов. ",
	"Убивайте или умирайте от овец, чтобы заболеть взрывной болезнью. ",
	"Найдите сферу, чтобы научиться метать огненные шары. ",
	"Соберите командой более 50 древесины, чтобы изучить рывок. ",
}
descriptionENG = {
	"Get wood. ",
	"Idle . ",
	"Die. ",
	"Run. ",
	"Kill enemy. ",
	"Repair Buildings.  ",
	"Heal. ",
	"Finding Kodo. ",
	"Use fire. ",
	"Get wood whis full HP. ",
	"Destroy human Lumbermill ",
	"Be in the cold. ",
	"Kill wolfs. ",
	"Catch stones of golem ",
	"Die from sheep or kill sheep ",
	"Find the fire sphere. ",
	"Team collected wood. ",
}

function PerkButtonLineNonLocal(k, lang)
	if BlzGetLocale() ~= "ruRU" then
		lang = 1
	else
		lang = 0
	end
	lang=0
	BlzLoadTOCFile("war3mapimported\\BoxedText.toc")
	local next = 0.039
	--print("start")
	--for k = 0, 3 do
	local data = HERO[k]

	--Иконка пеона
	if false then
		local heroico = BlzCreateSimpleFrame("MyBar", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 0)
		BlzFrameSetSize(heroico, 0.04, 0.04)
		BlzFrameSetAbsPoint(heroico, FRAMEPOINT_LEFT, 0.04, 0.6 - 0.03)
		BlzFrameSetVisible(heroico, true)
		BlzFrameSetValue(heroico, 100)
		local cdtext1 = BlzGetFrameByName("MyBarText", 0)
		BlzFrameSetText(cdtext1, "")
		local cdICO1 = BlzGetFrameByName("MyBarBackground", 0)
		BlzFrameSetTexture(cdICO1, "ReplaceableTextures\\CommandButtons\\btnchaospeon", 0, true) --красная
		BlzFrameSetTexture(heroico, "ReplaceableTextures\\CommandButtons\\BTNPeon", 0, true) -- зелёная
		data.HeroIco = heroico
	end

	local Portrait = BlzGetOriginFrame(ORIGIN_FRAME_PORTRAIT, 0)
	BlzFrameClearAllPoints(Portrait)
	BlzFrameSetAbsPoint(Portrait, FRAMEPOINT_LEFT, 0.13, 0.6 - 0.04)
	BlzFrameSetSize(Portrait,0.03,0.03)


	if GetLocalPlayer() ~= Player(k) and GetLocalON then
		BlzFrameSetVisible(heroico, false)
	end


	for i = 1, #Name do
		-- число талантов
		--print(i.." "..k.."создаём фрейм")
		local face = BlzCreateFrameByType("GLUEBUTTON", "FaceButton", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
		BlzFrameSetAbsPoint(face, FRAMEPOINT_CENTER, 0.1 + next * (i - 1), 0.02)
		BlzFrameSetSize(face, 0.04, 0.04)
		--local buttonIconFrame = BlzCreateFrameByType("BACKDROP", "FaceButtonIcon", face, "", 0)
		local buttonIconFrame = BlzCreateSimpleFrame("MyBar", face, 0)
		BlzFrameSetAllPoints(buttonIconFrame, face)
		--BlzFrameSetTexture(buttonIconFrame, texture[i], 0, true)
		local faceHover = BlzCreateFrameByType("FRAME", "FaceFrame", face, "", 0)
		local tooltip = BlzCreateFrame("BoxedText", face, 0, 0)
		local UpDest = BlzGetFrameByName("BoxedTextValue", 0)
		BlzFrameSetAllPoints(faceHover, face)
		BlzFrameSetTooltip(faceHover, tooltip)
		BlzFrameSetPoint(tooltip, FRAMEPOINT_BOTTOM, face, FRAMEPOINT_TOP, 0.0, 0.0)
		BlzFrameSetSize(tooltip, 0.15, 0.08)
		BlzFrameSetText(BlzGetFrameByName("BoxedTextTitle", 0), "|cffffff00"..Name[i].."|r") --|cffffff00AAAA|r
		BlzFrameSetText(UpDest, description[i])
		BlzFrameSetValue(buttonIconFrame, 0)
		local cdtext = BlzGetFrameByName("MyBarText", 0)
		BlzFrameSetText(cdtext, "")
		local cdICO = BlzGetFrameByName("MyBarBackground", 0)
		BlzFrameSetTexture(cdICO, DISBTNTexture[i], 0, true)
		BlzFrameSetTexture(buttonIconFrame, texture[i], 0, true)
		BlzFrameSetSize(buttonIconFrame, 0.04, 0.04)

		if lang == 1 then
			BlzFrameSetText(BlzGetFrameByName("BoxedTextTitle", 0), NameENG[i])
			BlzFrameSetText(UpDest, descriptionENG[i])
		end

		local lock = BlzCreateFrameByType("BACKDROP", "Face", face, "", 0)--замочек
		BlzFrameSetPoint(lock, FRAMEPOINT_CENTER, face, FRAMEPOINT_CENTER, 0., 0.)
		BlzFrameSetSize(lock, 0.04, 0.04)
		--BlzFrameSetSize(lock, 0, 0)
		BlzFrameSetTexture(lock, "close", 0, true)
		BlzFrameSetAlpha(lock, 170)

		--выделение Хейтовские
		local buttonsprite = BlzCreateFrameByType("SPRITE", "justAName", face, "WarCraftIIILogo", 0)
		BlzFrameSetPoint(buttonsprite, FRAMEPOINT_BOTTOMLEFT, face, FRAMEPOINT_BOTTOMLEFT, 0.02, 0.02)
		BlzFrameSetSize(buttonsprite, 1., 1.)
		BlzFrameSetScale(buttonsprite, 1.)
		BlzFrameSetModel(buttonsprite, "selecter1.mdx", 0)

		BlzFrameSetVisible(buttonsprite, false)
		if GetLocalPlayer() ~= Player(k) and GetLocalON then
			-- скрытие интерфейса от других игроков
			BlzFrameSetVisible(lock, false)
			BlzFrameSetVisible(face, false)
			BlzFrameSetVisible(buttonIconFrame, false)
		end
		--глобалки

		data.ToolTip[i] = UpDest --Описание старое
		data.LockFrame[i] = lock --замочек
		data.VisualSelectorFrame[i] = buttonsprite -- выделяющая моделька
		data.PekFrame[i] = UpDest -- Описание новое
		data.ReloadIco[i] = buttonIconFrame -- иконка
		data.SelfFrame[i] = face-- сам фрейм для увеличения
	end
	--end
	--print("end")

	--обновление текста
	TimerStart(CreateTimer(), 1, true, function()

		for i = 1, #Name do
			--print(#Name)
			if i == 1 then
				--print("смена текста")

				if data.Perk1 then
					BlzFrameSetText(data.PekFrame[i], "Добыча дерева " .. "|cffffff00" .. "удвоена" .. "|r")
					--StartFrameCD()
					BlzFrameSetValue(data.ReloadIco[1], 0)
				else
					BlzFrameSetText(data.PekFrame[i], GetLangDescription(i, lang) .. "|cffffff00" .. data.SingleWoodCount .. "/25|r") --|cffffff00AAAA|r
				end
			elseif i == 2 then
				if data.Perk2 then
					BlzFrameSetText(data.PekFrame[i], "Враждебный режим активирован до первой смерти" .. "|cffffff00" .. R2I(data.RevoltSec) .. "/300|r")
				else
					BlzFrameSetValue(data.HeroIco, 100-R2I(data.RevoltSec/3) )
					BlzFrameSetText(data.PekFrame[i], GetLangDescription(i, lang) .. "|cffffff00" .. R2I(data.RevoltSec) .. "/300|r") --|cffffff00AAAA|r
				end

			elseif i == 3 then
				BlzFrameSetText(data.PekFrame[i], GetLangDescription(i, lang) .. "|cffffff00" .. data.Dies .. "/15|r") --|cffffff00AAAA|r
			elseif i == 4 then
				BlzFrameSetText(data.PekFrame[i], GetLangDescription(i, lang) .. "|cffffff00" .. R2I(data.TotalWay) .. "/200000|r") --|cffffff00AAAA|r
			elseif i == 5 then
				if data.Perk5 then
					BlzFrameSetText(data.PekFrame[i], "Урон увеличен, текущий урон: " .. "|cffffff00" .. BlzGetUnitBaseDamage(data.UnitHero, 0) .. "|r")
					if lang == 1 then
						BlzFrameSetText(data.PekFrame[i], "Damage is increased, current: " .. "|cffffff00" .. BlzGetUnitBaseDamage(data.UnitHero, 0) .. "|r")
					end
				else
					BlzFrameSetText(data.PekFrame[i], GetLangDescription(i, lang) .. "|cffffff00" .. data.Kills .. "/5|r") --|cffffff00AAAA|r
				end
			elseif i == 6 then
				if data.Perk6 then
					BlzFrameSetText(data.PekFrame[i], "Наносит " .. "|cffffff00" .. (BlzGetUnitBaseDamage(data.UnitHero, 0) * .5) .. "|r".." доп. урона и замедляет врагов в области ".."|cffffff00150|r") --|cffffff00AAAA|r
					if lang == 1 then
						BlzFrameSetText(data.PekFrame[i], "Deal addition damage in area 150 and slow enemy. " .. "|cffffff00" .. (BlzGetUnitBaseDamage(data.UnitHero, 0) * .5) .. " damage|r")
					end
				else
					BlzFrameSetText(data.PekFrame[i], GetLangDescription(i, lang) .. "|cffffff00" .. R2I(data.Repairs) .. "/1000|r") --|cffffff00AAAA|r
				end
			elseif i == 7 then
				if data.Perk7 then
					if data.Perk7A then
						BlzFrameSetText(data.PekFrame[i], "Восстанавливает " .. "|cffffff00" .. "3 %%|r" .. " от максимального ХП при убийстве врагов в ближнем бою")
						if lang == 1 then
							BlzFrameSetText(data.PekFrame[i], "Restore " .. "|cffffff00" .. "3 %%|r" .. " max HP for kill enemy in melee combat")
						end
					else
						BlzFrameSetText(data.PekFrame[i], "Продолжайте правильно питаться и овладеете вампиризмом. " .. "|cffffff00" .. R2I(data.Heals) .. "/5000|r")
						if lang == 1 then
							BlzFrameSetText(data.PekFrame[i], "Gives 7 HP regen. Keep eating right for LifeSteel  " .. "|cffffff00" .. R2I(data.Heals) .. "/5000|r")
						end
					end
				else
					BlzFrameSetText(data.PekFrame[i], GetLangDescription(i, lang) .. "|cffffff00" .. R2I(data.Heals) .. "/1000|r") --|cffffff00AAAA|r
				end

			elseif i == 8 then
				BlzFrameSetText(data.PekFrame[i], GetLangDescription(i, lang) .. "|cffffff00" .. data.KodoCount .. "/1|r") --|cffffff00AAAA|r
			elseif i == 9 then
				if not data.Perk9 then
					BlzFrameSetText(data.PekFrame[i], GetLangDescription(i, lang) .. "|cffffff00" .. data.FireCount .. "/5|r") --|cffffff00AAAA|r
				else
					if not data.HaveAFire then
						BlzFrameSetTexture(data.ReloadIco[i], texture[i], 0, true)
						BlzFrameSetText(data.PekFrame[i], GetLangDescription(i, lang) .. "|cffffff00" .. "Обычная|r")
						if lang == 1 then
							BlzFrameSetText(data.PekFrame[i], GetLangDescription(i, lang) .. "|cffffff00" .. "Normal|r")
						end
					else
						BlzFrameSetTexture(data.ReloadIco[i], "btngathergoldON", 0, true)
						BlzFrameSetText(data.PekFrame[i], "Метает огненный шар, который наносит " .. "|cffffff00" ..(BlzGetUnitBaseDamage(data.UnitHero, 0)*5).."|r".." ед. урона в небольшой области") --|cffffff00AAAA|r
						if lang == 1 then
							BlzFrameSetText(data.PekFrame[i], GetLangDescription(i, lang) .. "|cffffff00" .. "Hot|r")
						end
					end
				end
			elseif i == 10 then
				--техника безопусноти
				if data.Perk10 then
					BlzFrameSetText(data.PekFrame[i], "Парирует урон при совершении атаки в первые " .. "|cffffff00" .. "0,2 секунды|r" .. " после замаха") --|cffffff00AAAA|r
					if lang == 1 then
						BlzFrameSetText(data.PekFrame[i], "Parry damage after " .. "|cffffff00" .. "0,2 sec|r" .. " attack") --|cffffff00AAAA|r
					end
				else
					BlzFrameSetText(data.PekFrame[i], GetLangDescription(i, lang) .. "|cffffff00" .. data.TreeCountOnTB .. "/10|r") --|cffffff00AAAA|r
				end
			elseif i == 11 then
				-- погром
				--print(k)
				if data.Perk11 then
					--print("0")
					BlzFrameSetText(data.PekFrame[i], "Автоматически чинит союзные здания и технику в ридиусе 400. " .. "|cffffff00" .. "10 ед. в секунду|r") --|cffffff00AAAA|r
					if lang == 1 then
						BlzFrameSetText(data.PekFrame[i], "Automatic repair building in 400 area  " .. "|cffffff00" .. "10 HP per sec|r")
					end
				else
					--print("2")
					BlzFrameSetText(data.PekFrame[i], GetLangDescription(i, lang) .. "|cffffff00" .. "0/1|r") --|cffffff00AAAA|r
					--print("3")
				end
				--print(k.."end")
			elseif i == 12 then
				-- ледяной щит
				--print("жвенадцать")
				if data.Perk12 then
					BlzFrameSetText(data.PekFrame[i], "При поглощении урона в щит враги замораживаются на " .. "|cffffff00" .. "3 секунды|r") --|cffffff00AAAA|r
					if lang == 1 then
						BlzFrameSetText(data.PekFrame[i], "freezes enemies upon taking damage " .. "|cffffff00" .. "3 sec|r") --|cffffff00AAAA|r
					end
				else
					BlzFrameSetText(data.PekFrame[i], GetLangDescription(i, lang) .. "|cffffff00" .. R2I(data.FrozenShield) .. "/60|r") --|cffffff00AAAA|r
				end
			elseif i == 13 then
				if not data.Perk13 then
					BlzFrameSetText(data.PekFrame[i], GetLangDescription(i, lang) .. "|cffffff00" .. data.WolfCount .. "/5|r") --|cffffff00AAAA|r
				else
					BlzFrameSetText(data.PekFrame[i], "Призывает волка, который будет вам помогать. Текущий урона волка " .. "|cffffff00" ..(BlzGetUnitBaseDamage(data.WolfHelper, 0)).. "|r") --|cffffff00AAAA|r
					if lang == 1 then
						BlzFrameSetText(data.PekFrame[i], "Summon spirit wolf. " .. "|cffffff00" .. "Offline and invulnerable|r") --|cffffff00AAAA|r
					end
				end
			elseif i == 14 then
				if not data.Perk14A then
					BlzFrameSetText(data.PekFrame[i], GetLangDescription(i, lang) .. "|cffffff00" .. data.StoneCount .. "/5|r") --|cffffff00AAAA|r
				else
					BlzFrameSetText(data.PekFrame[i], "Поглощает " .. "|cffffff00" .. "100%% |r" .. " урона Ломается, если урон больше 500. Перезарядка: ".."|cffffff00" .. "5|r") --|cffffff00AAAA|r
					if lang == 1 then
						BlzFrameSetText(data.PekFrame[i], "Absorb " .. "|cffffff00" .. "100%% |r" .. " damage ") --|cffffff00AAAA|r
					end
				end
			elseif i == 15 then
				if not data.Perk15 then
					BlzFrameSetText(data.PekFrame[i], GetLangDescription(i, lang) .. "|cffffff00" .. data.SheepCount .. "/40|r") --|cffffff00AAAA|r
				else
					BlzFrameSetText(data.PekFrame[i], "Герой взрывается при смерти нанося урон и каждую " .. "|cffffff002|r" .. " смерть воскресает") --|cffffff00AAAA|r
					if lang == 1 then
						BlzFrameSetText(data.PekFrame[i], "Exploded on death and Revive every " .. "|cffffff002|r" .. " death")
					end
				end
			elseif i == 16 then
				if not data.Perk16 then
					BlzFrameSetText(data.PekFrame[i], GetLangDescription(i, lang) .. "|cffffff00" .. "Ищите за вулканом|r") --|cffffff00AAAA|r
					if lang == 1 then
						BlzFrameSetText(data.PekFrame[i], GetLangDescription(i, lang) .. "|cffffff00" .. "Search beyond the volcano|r")
					end
				else
					BlzFrameSetText(data.PekFrame[i], "Даёт дальний бой и оглушает на |cffffff00 0,5 сек. |r".."Перезарядка:|cffffff00".."5 |r".."секунд") --|cffffff00AAAA|r
					if lang == 1 then
						BlzFrameSetText(data.PekFrame[i], " 1000 Range Attack damage multiplier" .. "|cffffff00" .. "x 5 |r" .. " and stun|cffffff00 0,5 sec |r")
					end
				end
			elseif i == 17 then
				if not data.Perk17 then
					BlzFrameSetText(data.PekFrame[i], GetLangDescription(i, lang) .. "|cffffff00" .. GTotalWood .. "/50|r") --|cffffff00AAAA|r
				else
					BlzFrameSetText(data.PekFrame[i], "Активация: ПКМ+ЛКМ. Презезарядка: " .. "|cffffff002|r" .. ". Урон: ".."|cffffff00"..(BlzGetUnitBaseDamage(data.UnitHero,0)*4).." |r") --|cffffff00AAAA|r
					if lang == 1 then
						BlzFrameSetText(data.PekFrame[i], "When hold RMB, press LMB. Reload: " .. "|cffffff00" .. "2 sec |r" .. "")
					end
				end
			end
		end
		--end
		--end
	end)
end

function PerkUnlocker(data, index)
	BlzFrameSetVisible(data.LockFrame[index], false)
	BlzFrameSetVisible(data.VisualSelectorFrame[index], true)
	BlzFrameSetValue(data.ReloadIco[index], 100)
	--FrameBigSize(data.SelfFrame[index],0.2,index)
	--FrameBigSize(data.VisualSelectorFrame[index],0.2,index)
	--BlzFrameSetSize(data.SelfFrame[index],0.05,0.05)
	local tl = Location(GetUnitXY(data.UnitHero))
	--PlaySoundAtPointBJ( gg_snd_Unlock, 100, tl, 0 )
	if GetLocalON then
		if GetLocalPlayer() == GetOwningPlayer(data.UnitHero) then
			-- РАзблокировка, проверено, не здесь десинхает
			--print("звук!")
			PlaySoundAtPointBJ(gg_snd_Unlock, 100, tl, 0)
			--print("БЫл?")
		end
	else
		PlaySoundAtPointBJ(gg_snd_Unlock, 100, tl, 0)
	end
	RemoveLocation(tl)
	TimerStart(CreateTimer(), 10, true, function()
		BlzFrameSetVisible(data.VisualSelectorFrame[index], false)
	end)
end

function FrameBigSize(fh,sh,index)
	local size=0
	local sec=0
	local i=1
	local turn=true
	local next = 0.039
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		sec=sec+TIMER_PERIOD
		size=size+(i*0.005)

		--print(sec)
		if sec>=sh and turn then
			--print("off")
			turn=false
			i=i*(-1)
		end
		if size<=0 then
			DestroyTimer(GetExpiredTimer())
			size=0
		end

		BlzFrameSetAbsPoint(fh, FRAMEPOINT_CENTER, 0.1 + next * (index - 1), 0.02+size/4)
		--BlzFrameSetSize(fh,0.04+size,0.04+size)
	end)
end

function GetLangDescription(index, lang)
	local multidescr = ""
	if lang == 0 then
		multidescr = description[index]
	else
		multidescr = descriptionENG[index]
	end
	return multidescr
end