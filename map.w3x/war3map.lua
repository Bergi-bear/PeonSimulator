gg_rct_Winter = nil
gg_rct_Region_001 = nil
gg_rct_Region_002 = nil
gg_rct_Region_003 = nil
gg_rct_Workers = nil
gg_rct_Region_005 = nil
gg_rct_StoneZone = nil
gg_rct_KodoZone = nil
gg_rct_WalkSpawnZone = nil
gg_snd_Load = nil
gg_trg_GuiInit = nil
gg_trg_DeadHumanLumber = nil
gg_unit_o001_0001 = nil
gg_unit_hlum_0057 = nil
gg_dest_LTlt_0097 = nil
gg_dest_LTlt_0364 = nil
function InitGlobals()
end

function InitSounds()
    gg_snd_Load = CreateSound("Abilities/Spells/Other/LoadUnload/Loading.flac", false, true, true, 1, 1, "DefaultEAXON")
    SetSoundParamsFromLabel(gg_snd_Load, "LoadUnload")
    SetSoundDuration(gg_snd_Load, 740)
    SetSoundVolume(gg_snd_Load, 127)
end

function CreateAllDestructables()
    local d
    local t
    local life
    gg_dest_LTlt_0364 = BlzCreateDestructableWithSkin(FourCC("LTlt"), -1248.0, -2144.0, 270.000, 1.177, 1, FourCC("LTlt"))
    gg_dest_LTlt_0097 = BlzCreateDestructableWithSkin(FourCC("LTlt"), -480.0, 864.0, 270.000, 0.895, 2, FourCC("LTlt"))
end

function CreateBuildingsForPlayer5()
    local p = Player(5)
    local u
    local unitID
    local t
    local life
    gg_unit_o001_0001 = BlzCreateUnitWithSkin(p, FourCC("o001"), -32.0, 544.0, 270.000, FourCC("o001"))
    life = GetUnitState(gg_unit_o001_0001, UNIT_STATE_LIFE)
    SetUnitState(gg_unit_o001_0001, UNIT_STATE_LIFE, 0.70 * life)
    u = BlzCreateUnitWithSkin(p, FourCC("otrb"), -32.0, -544.0, 270.000, FourCC("otrb"))
    life = GetUnitState(u, UNIT_STATE_LIFE)
    SetUnitState(u, UNIT_STATE_LIFE, 0.60 * life)
    u = BlzCreateUnitWithSkin(p, FourCC("n003"), -32.0, -32.0, 270.000, FourCC("n003"))
    u = BlzCreateUnitWithSkin(p, FourCC("npgf"), 672.0, -96.0, 270.000, FourCC("npgf"))
    life = GetUnitState(u, UNIT_STATE_LIFE)
    SetUnitState(u, UNIT_STATE_LIFE, 0.70 * life)
    u = BlzCreateUnitWithSkin(p, FourCC("o003"), 384.0, 128.0, 270.000, FourCC("o003"))
    life = GetUnitState(u, UNIT_STATE_LIFE)
    SetUnitState(u, UNIT_STATE_LIFE, 0.50 * life)
end

function CreateUnitsForPlayer5()
    local p = Player(5)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), -408.5, -311.6, 95.230, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), -2895.0, -3006.4, 95.230, FourCC("e002"))
end

function CreateBuildingsForPlayer10()
    local p = Player(10)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("e003"), -2656.0, 928.0, 270.000, FourCC("e003"))
    gg_unit_hlum_0057 = BlzCreateUnitWithSkin(p, FourCC("hlum"), -928.0, -2336.0, 270.000, FourCC("hlum"))
    u = BlzCreateUnitWithSkin(p, FourCC("hctw"), -768.0, -2816.0, 270.000, FourCC("hctw"))
    u = BlzCreateUnitWithSkin(p, FourCC("hctw"), -384.0, -2112.0, 270.000, FourCC("hctw"))
    u = BlzCreateUnitWithSkin(p, FourCC("hctw"), -832.0, -1920.0, 270.000, FourCC("hctw"))
    u = BlzCreateUnitWithSkin(p, FourCC("hlum"), -2080.0, 2848.0, 270.000, FourCC("hlum"))
end

function CreateUnitsForPlayer10()
    local p = Player(10)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -1040.8, -2058.0, 232.720, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -1164.7, -2141.5, 28.719, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -1211.8, -2388.4, 124.061, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -1177.2, -2585.0, 64.755, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -1062.0, -2677.9, 279.061, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -797.1, -2653.1, 40.772, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -904.9, -2719.1, 233.346, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -657.3, -2641.6, 82.345, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -623.7, -2485.9, 45.133, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -691.2, -2196.4, 121.765, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -794.0, -2109.9, 270.876, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("e001"), -3147.9, 509.6, 196.738, FourCC("e001"))
    u = BlzCreateUnitWithSkin(p, FourCC("e001"), -3076.0, 1298.6, 196.738, FourCC("e001"))
    u = BlzCreateUnitWithSkin(p, FourCC("e001"), -3008.9, 864.8, 196.738, FourCC("e001"))
    u = BlzCreateUnitWithSkin(p, FourCC("e001"), -2746.5, 492.7, 196.738, FourCC("e001"))
    u = BlzCreateUnitWithSkin(p, FourCC("e001"), -2446.4, 336.0, 196.738, FourCC("e001"))
    u = BlzCreateUnitWithSkin(p, FourCC("e001"), -2193.9, 691.5, 196.738, FourCC("e001"))
    u = BlzCreateUnitWithSkin(p, FourCC("e001"), -2228.9, 1354.8, 196.738, FourCC("e001"))
    u = BlzCreateUnitWithSkin(p, FourCC("e001"), -1975.5, 378.1, 196.738, FourCC("e001"))
    u = BlzCreateUnitWithSkin(p, FourCC("e001"), -1804.4, 946.4, 196.738, FourCC("e001"))
    u = BlzCreateUnitWithSkin(p, FourCC("o002"), -2951.2, -2927.0, 123.880, FourCC("o002"))
end

function CreateBuildingsForPlayer11()
    local p = Player(11)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), -2112.0, 2240.0, 270.000, FourCC("h001"))
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), -1472.0, 2624.0, 270.000, FourCC("h001"))
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), -832.0, 3008.0, 270.000, FourCC("h001"))
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), -2624.0, 2880.0, 270.000, FourCC("h001"))
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), -2880.0, 2368.0, 270.000, FourCC("h001"))
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), -832.0, 2048.0, 270.000, FourCC("h001"))
end

function CreateUnitsForPlayer11()
    local p = Player(11)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), -736.3, 1087.7, 0.000, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), -1406.1, 2627.6, 0.000, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), -2415.9, 3416.5, 303.180, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), -3197.3, 2290.6, 48.410, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), -2675.8, 2013.7, 0.000, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), -265.4, 1754.9, 180.000, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), -388.9, 2729.5, 180.000, FourCC("e004"))
end

function CreateNeutralHostile()
    local p = Player(PLAYER_NEUTRAL_AGGRESSIVE)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("n000"), 1660.1, 1138.4, 320.283, FourCC("n000"))
    SetUnitAcquireRange(u, 200.0)
    u = BlzCreateUnitWithSkin(p, FourCC("n000"), 3215.6, 205.0, 257.880, FourCC("n000"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2017.4, -767.9, 83.430, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -1435.5, -629.1, 198.112, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -1291.7, -904.4, 131.291, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -1581.0, -971.3, 166.975, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -1683.3, -1118.5, 12.162, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -1408.6, -833.2, 78.544, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -1711.3, -893.7, 182.664, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -1825.0, -1008.0, 236.960, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2071.9, -1195.8, 178.610, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2238.5, -966.7, 159.845, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2505.5, -573.8, 210.680, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2774.5, -970.1, 66.667, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -3007.0, -647.9, 128.335, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2800.8, -475.6, 89.783, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2592.9, -1032.8, 125.797, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -3104.3, -1165.2, 73.193, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -3105.7, -1106.0, 287.675, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2871.3, -1434.0, 41.925, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -3066.1, -1860.2, 21.512, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -3151.8, -1958.0, 98.968, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2684.3, -2097.7, 113.756, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2650.1, -1649.5, 77.203, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2303.1, -1712.2, 140.893, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2330.5, -1303.5, 75.841, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2233.6, -2049.1, 74.555, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2526.8, -2516.5, 140.080, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -3000.0, -2485.0, 30.323, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2694.0, -2266.3, 171.590, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -3204.6, -2283.9, 185.070, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -3215.7, -2447.7, 273.205, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2636.3, -2844.1, 44.254, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2355.0, -2991.4, 127.006, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2217.3, -2920.4, 95.771, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2323.3, -2759.2, 225.710, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2697.6, -2649.3, 170.063, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2813.1, -2166.6, 161.317, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2361.6, -2466.6, 135.191, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2752.4, -1913.8, 39.673, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2976.8, -1688.2, 77.643, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -3173.2, -1450.7, 357.078, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2823.2, -1218.7, 32.125, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2954.2, -924.5, 67.030, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -3106.5, -816.8, 307.824, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -3185.0, -641.2, 278.468, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -3103.3, -389.9, 107.461, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2922.3, -467.1, 232.060, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2283.7, -1509.1, 185.477, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2123.9, -1706.9, 317.207, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n000"), 1458.8, 810.6, 320.283, FourCC("n000"))
    SetUnitAcquireRange(u, 200.0)
    u = BlzCreateUnitWithSkin(p, FourCC("n000"), 2224.8, 190.5, 320.283, FourCC("n000"))
    SetUnitAcquireRange(u, 200.0)
    u = BlzCreateUnitWithSkin(p, FourCC("n000"), 2642.9, 1077.5, 320.283, FourCC("n000"))
    SetUnitAcquireRange(u, 200.0)
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2485.0, -2767.8, 171.590, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n000"), -1164.0, 434.9, 320.283, FourCC("n000"))
    SetUnitAcquireRange(u, 200.0)
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -3129.1, -2767.8, 171.590, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -3065.1, -2385.2, 171.590, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -3202.6, -2918.6, 171.590, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -3227.4, -1826.9, 171.590, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2722.4, -466.7, 171.590, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2677.1, -757.8, 171.590, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2233.8, -460.7, 171.590, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2154.6, -799.6, 171.590, FourCC("n001"))
end

function CreatePlayerBuildings()
    CreateBuildingsForPlayer5()
    CreateBuildingsForPlayer10()
    CreateBuildingsForPlayer11()
end

function CreatePlayerUnits()
    CreateUnitsForPlayer5()
    CreateUnitsForPlayer10()
    CreateUnitsForPlayer11()
end

function CreateAllUnits()
    CreatePlayerBuildings()
    CreateNeutralHostile()
    CreatePlayerUnits()
end

function CreateRegions()
    local we
    gg_rct_Winter = Rect(1344.0, -1696.0, 3360.0, -512.0)
    we = AddWeatherEffect(gg_rct_Winter, FourCC("SNhs"))
    EnableWeatherEffect(we, true)
    gg_rct_Region_001 = Rect(-3232.0, 1856.0, -320.0, 3488.0)
    gg_rct_Region_002 = Rect(-3008.0, 3200.0, -2976.0, 3232.0)
    gg_rct_Region_003 = Rect(-3360.0, -96.0, -1216.0, 1664.0)
    gg_rct_Workers = Rect(-1344.0, -2784.0, -480.0, -1952.0)
    gg_rct_Region_005 = Rect(-1792.0, -3104.0, -64.0, -1856.0)
    gg_rct_StoneZone = Rect(160.0, 1504.0, 3392.0, 3648.0)
    gg_rct_KodoZone = Rect(-800.0, -192.0, -576.0, -64.0)
    gg_rct_WalkSpawnZone = Rect(3136.0, 96.0, 3264.0, 288.0)
end

--CUSTOM_CODE
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 06.02.2020 18:00
---
---
---
---
--BlzLoadTOCFile("Main.toc")
--HealthPlayer1 = HealthBarAdd(udg_Pala)
--BlzFrameSetAbsPoint(HealthPlayer1, FRAMEPOINT_TOPRIGHT, 0.8, 0.57)








FrameSelecter={}
VisualCharges={}
MiniMap={}


function CreateWeaponFrame()
	local texture={
		"ReplaceableTextures\\CommandButtons\\BTNDwarvenLongRifle.blp",
		"ReplaceableTextures\\CommandButtons\\BTNHumanMissileUpThree.blp",
		"ReplaceableTextures\\CommandButtons\\BTNClusterRockets.blp",
		"ReplaceableTextures\\CommandButtons\\BTNFireBolt.blp",
		"ReplaceableTextures\\CommandButtons\\BTNFireRocks.blp",
		"ReplaceableTextures\\CommandButtons\\BTNBarrel.blp",
		"ReplaceableTextures\\CommandButtons\\BTNChainLightning.blp",
		"ReplaceableTextures\\PassiveButtons\\PASBTNUpgradeMoonGlaive.blp",
		"ReplaceableTextures\\CommandButtons\\BTNUnstableConcoction.blp",
	}
	local weaponName= {
		"[1] Носовое ордие",
		"[2] Бортовые пушки",
		"[3] Ракетница",
		"[4] Огнемёт",
		"[5] Вертикальный залп",
		"[6] Бочка",
		"[7] Молнии",
		"[8] Пилы",
		"[9] Нефтяное пятно"
	}
	local description={
		"Одиночный выстрел [RMB]",
		"Несколько выстрелов с борта [RMB] [LMB]",
		"Самоновадящаяся ракета [RMB] на цель",
		"Огнемёт из бортовых орудий. Удерживайте [RMB] [LMB] ",
		"Стреляет в указанную точку навесом [RMB]",
		"Спускает на воду бочку [RMB]",
		"Бьёт молнией в указанную цель [RMB]",
		"Урон касанием, перемещает пилу по корпусу [RMB]",
		"Оставляет позади себя нефтяное пятно, можно поджечь [RMB]"
	}


	--NewButton()
	local next=0.039
	local qerf=0
	for i = 0, 8 do
		local face = BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
		local faceHover = BlzCreateFrameByType("FRAME", "FaceFrame", face,"", 0)
		local tooltip = BlzCreateFrame("BoxedText", face, 0, 0)
		local charges= BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
		local new_FrameChargesText = BlzCreateFrameByType("TEXT", "ButtonChargesText", charges, "", 0)

		--[[]local TextNumber = BlzCreateFrameByType("TEXT", "ButtonChargesText", face, "", 0)
		BlzFrameSetPoint(TextNumber, FRAMEPOINT_CENTER, face, FRAMEPOINT_CENTER, 0.,0.)
		BlzFrameSetText(TextNumber, i+1)]]

		local hot=BlzCreateFrameByType("BACKDROP", "Face", face, "", 0)
		BlzFrameSetTexture(hot, "DDSSymbols\\"..(i+1)..".dds", 0, true)
		BlzFrameSetSize(hot, 0.02, 0.02)
		BlzFrameSetPoint(hot, FRAMEPOINT_CENTER, face, FRAMEPOINT_CENTER, 0.,0.)

		BlzFrameSetPoint(new_FrameChargesText, FRAMEPOINT_CENTER, charges, FRAMEPOINT_CENTER, 0.,0.)
		BlzFrameSetText(new_FrameChargesText, "0")
		BlzFrameSetAllPoints(faceHover, face)
		BlzFrameSetTooltip(faceHover, tooltip)
		BlzFrameSetTexture(face, texture[i+1],0, true)
		BlzFrameSetTexture(charges, "ChargesTexture.blp", 0, true)
		BlzFrameSetSize(face, 0.04, 0.04)
		BlzFrameSetSize(charges, 0.04, 0.012)
		BlzFrameSetAbsPoint(face, FRAMEPOINT_TOPLEFT, next+next+next*i, next*1.3)
		BlzFrameSetAbsPoint(charges, FRAMEPOINT_TOPLEFT, next+next+next*i, next*1.6)
		BlzFrameSetAbsPoint(tooltip, FRAMEPOINT_TOP, next+next+next*i, next*3)
		BlzFrameSetSize(tooltip, 0.15, 0.08)
		BlzFrameSetText(BlzGetFrameByName("BoxedTextValue",0), description[i+1])
		BlzFrameSetText(BlzGetFrameByName("BoxedTextTitle",0), weaponName[i+1])
		--if i==0 then
		local buttonsprite = BlzCreateFrameByType("SPRITE", "justAName", face, "WarCraftIIILogo", 0)
		BlzFrameSetPoint(buttonsprite, FRAMEPOINT_BOTTOMLEFT, face, FRAMEPOINT_BOTTOMLEFT, 0.02, 0.02)
		BlzFrameSetSize(buttonsprite, 1., 1.)
		BlzFrameSetScale(buttonsprite, 1.)
		BlzFrameSetModel(buttonsprite, "selecter1.mdx", 0)
		FrameSelecter[i+1]=buttonsprite
		VisualCharges[i+1]=new_FrameChargesText
		--ТАЛАНТЫ

		for k=1,3 do
			local TalantBut=BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
			BlzFrameSetTexture(TalantBut, texture[i+1], 0, true)
			BlzFrameSetSize(TalantBut, 0.013, 0.013)
			--print(k)
			BlzFrameSetAbsPoint(TalantBut, FRAMEPOINT_TOPLEFT, next*1.75+next*i+next*k*.3, 0.013)
		end

		--
		qerf=next+next+next*i
		if i>= 1 then
			BlzFrameSetVisible(buttonsprite,false)
		end

		local t = CreateTrigger()
		BlzTriggerRegisterFrameEvent(t, tooltip, FRAMEEVENT_CONTROL_CLICK)
		BlzTriggerRegisterFrameEvent(t, faceHover, FRAMEEVENT_CONTROL_CLICK)
		BlzTriggerRegisterFrameEvent(t, face, FRAMEEVENT_CONTROL_CLICK)
		BlzTriggerRegisterFrameEvent(t, buttonsprite, FRAMEEVENT_CONTROL_CLICK)
		BlzTriggerRegisterFrameEvent(t, charges, FRAMEEVENT_CONTROL_CLICK)
		TriggerAddAction(t,function()
			print("click "..i) -- вот тут не работает
		end)
	end
	--Создаём кнопки QERF
	--[[local gold=BlzCreateFrameByType("TEXT", "ButtonChargesText", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	BlzFrameSetAbsPoint(gold, FRAMEPOINT_CENTER,  0.4,0.3)
	BlzFrameSetText(gold, "Недостаточно золота")]]

	for i=1,4 do
		local SkillButton=BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
		BlzFrameSetTexture(SkillButton, "ChargesTexture.blp", 0, true)
		BlzFrameSetSize(SkillButton, 0.04, 0.04)
		BlzFrameSetAbsPoint(SkillButton, FRAMEPOINT_TOPLEFT, qerf+next*i, next*1.3)

		local hot=BlzCreateFrameByType("BACKDROP", "Face", SkillButton, "", 0)
		if i==1 then
			BlzFrameSetTexture(hot, "DDSSymbols\\q.dds", 0, true)
		elseif i==2 then
			BlzFrameSetTexture(hot, "DDSSymbols\\e.dds", 0, true)
		elseif i==3 then
			BlzFrameSetTexture(hot, "DDSSymbols\\r.dds", 0, true)
		elseif i==4 then
			BlzFrameSetTexture(hot, "DDSSymbols\\f.dds", 0, true)
		end
		BlzFrameSetSize(hot, 0.03, 0.03)
		BlzFrameSetPoint(hot, FRAMEPOINT_CENTER, SkillButton, FRAMEPOINT_CENTER, 0.,0.)
		local t = CreateTrigger()
		BlzTriggerRegisterFrameEvent(t, hot, FRAMEEVENT_CONTROL_CLICK)
		TriggerAddAction(t,function()
			print("click "..i) -- вот тут не работает
		end)

	end

end

function SwitchWeaponVisual(pid,index)
	if GetLocalPlayer()==Player(pid) then
		for i=1, #FrameSelecter do
			BlzFrameSetVisible(FrameSelecter[i],false)
		end
		BlzFrameSetVisible(FrameSelecter[index],true)
	end
end

function HeroUpdateWeaponCharges(hero,index,amount)
	local pid=GetPlayerId(GetOwningPlayer(hero))
	local data=Ammo[pid]
	local count=0
	local HasAmmo=true
	--слабонервным не смотреть
	if index==1 then
		data.Count.Single=data.Count.Single-amount
		count=data.Count.Single
	elseif index==2 then
		data.Count.Board=data.Count.Board-amount
		count=data.Count.Board
	elseif index==3 then
		data.Count.Rocket=data.Count.Rocket-amount
		count=data.Count.Rocket
	elseif index==4 then
		data.Count.Fire=data.Count.Fire-amount
		count=data.Count.Fire
	elseif index==5 then
		data.Count.Toss=data.Count.Toss-amount
		count=data.Count.Toss
	elseif index==6 then
		data.Count.Barrel=data.Count.Barrel-amount
		count=data.Count.Barrel
	elseif index==7 then
		data.Count.Light=data.Count.Light-amount
		count=data.Count.Light
	elseif index==8 then
		data.Count.Saw=data.Count.Saw-amount
		count=data.Count.Saw
	elseif index==9 then
		data.Count.Oil=data.Count.Oil-amount
		count=data.Count.Oil
	end

	if count+amount<amount then
		HasAmmo=false
		if index==1 then
			count=data.Count.Single==0
		elseif index==2 then
			count=data.Count.Board==0
		elseif index==3 then
			count=data.Count.Rocket==0
		elseif index==4 then
			count=data.Count.Fire==0
		elseif index==5 then
			count=data.Count.Toss==0
		elseif index==6 then
			count=data.Count.Barrel==0
		elseif index==7 then
			count=data.Count.Light==0
		elseif index==8 then
			count=data.Count.Saw==0
		elseif index==9 then
			count=data.Count.Oil==0
		end
		--print(count.." мало патронов")
	end
	--print(count)
	if GetLocalPlayer()==Player(pid) then
	BlzFrameSetText(VisualCharges[index], count )
	end
	return HasAmmo
end




ButtonList={}
function NewButton(button_type, texture, size_x, size_y, relative_frame, frame_point_from, frame_point_to, offset_x, offset_y, parent_frame)
	local new_Frame = BlzCreateFrame('ScriptDialogButton', parent_frame, 0, 0)
	local new_FrameImage = BlzCreateFrameByType("BACKDROP", "ButtonIcon", new_Frame, "", 0)
	local new_FrameCharges = BlzCreateFrameByType("BACKDROP", "ButtonCharges", new_Frame, "", 0)
	local new_FrameChargesText = BlzCreateFrameByType("TEXT", "ButtonChargesText", new_FrameCharges, "", 0)


	ButtonList[GetHandleId(new_Frame)] = {
		button_type = button_type,
		item = nil,
		button = new_Frame,
		image = new_FrameImage,
		original_texture = texture,
		charges_frame = new_FrameCharges,
		charges_text_frame = new_FrameChargesText,
		sprite = nil
	}

	--FrameRegisterNoFocus(new_Frame)
	--FrameRegisterClick(new_Frame, texture)

	--BlzTriggerRegisterFrameEvent(ClickTrigger, new_Frame, FRAMEEVENT_CONTROL_CLICK)
	--BlzTriggerRegisterFrameEvent(EnterTrigger, new_Frame, FRAMEEVENT_MOUSE_ENTER)
	--BlzTriggerRegisterFrameEvent(LeaveTrigger, new_Frame, FRAMEEVENT_MOUSE_LEAVE)


	BlzFrameSetPoint(new_FrameCharges, FRAMEPOINT_BOTTOMRIGHT, new_FrameImage, FRAMEPOINT_BOTTOMRIGHT, -0.002, 0.002)
	BlzFrameSetSize(new_FrameCharges, 0.012, 0.012)
	BlzFrameSetTexture(new_FrameCharges, "ChargesTexture.blp", 0, true)
	BlzFrameSetPoint(new_FrameChargesText, FRAMEPOINT_CENTER, new_FrameCharges, FRAMEPOINT_CENTER, 0.,0.)
	BlzFrameSetVisible(new_FrameCharges, false)
	BlzFrameSetText(new_FrameChargesText, "0")

	BlzFrameSetPoint(new_Frame, frame_point_from, relative_frame, frame_point_to, offset_x, offset_y)
	BlzFrameSetSize(new_Frame, size_x, size_y)
	BlzFrameSetTexture(new_FrameImage, texture, 0, true)
	BlzFrameSetAllPoints(new_FrameImage, new_Frame)

	return new_Frame
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 03.04.2020 2:31
function HideEverything()
	BlzFrameSetVisible(BlzGetFrameByName("ConsoleUIBackdrop", 0), false)
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
	local wood=BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	BlzFrameSetTexture(wood, "ReplaceableTextures\\CommandButtons\\BTNHumanLumberUpgrade2", 0, true)
	BlzFrameSetSize(wood, 0.04, 0.04)
	BlzFrameSetAbsPoint(wood, FRAMEPOINT_CENTER,0.8-0.02 , 0.6-0.02)
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
	"ReplaceableTextures\\CommandButtons\\BTNEngineeringUpgrade"-- техника безопасности
}
Name= {
	"Работник месяца",
	"Бунтовщик",
	"Поблажка",
	"Лесной Болван",
	"Блудливый",
	"Ученик Тора",
	"Ожирение 0 степени",
	"Толстокожий друг"
}
description={
	"Принесите 25 дерева, чтобы удвоить его добычу ",
	"Ничего не делайте в течении 300 сек, чтобы поднять бунт ",
	"Умрите 15 раз, чтобы получить +100 ХП ",
	"Пробегите расстояние в 400 000 метров, чтобы стать на 50% быстрее ",
	"Убейте любого врага, чтобы увеличить свой урон в 2 раза ",
	"Почините здания на 1000 единиц, чтобы замедлять врагов при ударе ",
	"Получите лечение в объёме 1000 ед, чтобы получить +7 к регенерации ",
	"Приручите кодоя, чтобы получить 10 ед брони "
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
		--	BlzFrameSetAbsPoint(tooltip, FRAMEPOINT_CENTER, 0.2, 0.3)
		BlzFrameSetPoint(tooltip, FRAMEPOINT_BOTTOM, face, FRAMEPOINT_TOP, 0.0, 0.0)
		BlzFrameSetSize(tooltip, 0.15, 0.08)
		BlzFrameSetText(BlzGetFrameByName("BoxedTextTitle", 0), Name[i])
		BlzFrameSetText(UpDest, description[i])
		BlzFrameSetTexture(face, texture[i],0, true)--face uses paladin blp as texture.

		local lock=BlzCreateFrameByType("BACKDROP", "Face",face, "", 0)
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
						BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00"..R2I(data.Repairs).."/1000|r" ) --|cffffff00AAAA|r
					elseif k==7  then
						BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00"..R2I(data.Heals).."/1000|r" ) --|cffffff00AAAA|r
					elseif k==8  then
						BlzFrameSetText(PerkToolTip[k],description[k].."|cffffff00"..data.KodoCount.."/1|r" ) --|cffffff00AAAA|r
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
	BlzFrameSetText(new_FrameChargesText, "Удерживайте правую нопку мыши, чтобы рубить деревья ")
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
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 08.02.2020 21:25
---
DummyID=FourCC('e000')
function CastArea(caster,id,x,y,range, xPoz,yPoz)
	local dx,dy=x,y
	if xPoz~=nil then
		print("позиция")
		dx,dy=xPoz,yPoz
	end
	local dummy=CreateUnit(GetOwningPlayer(caster), DummyID, dx, dy, 0)--
	if UnitAddAbility(dummy,id) then
	else
		print("ошибка добавления способности")
	end
	---для одиночек

	if range==0 or range==nil then
		--IssuePointOrder(dummy,"blizzard",x,y)-- на точку
		Cast(dummy,x,y)
		--IssuePointOrder(dummy,"acidbomb",x,y)-- на точку
	end
	local e--временный юнит
	GroupEnumUnitsInRange(perebor,x,y,range,null)
	while true do
		e = FirstOfGroup(perebor)
		--print("перебор юнитов в радиусе "..range.." "..GetUnitName(e))
		if e == nil then break end
		if UnitAlive(e) and e~=dummy then -- and GetUnitCurrentOrder(unit)~="attack" then
			--print(GetUnitName(e).." в переборе")
			--IssueTargetOrder(dummy,"antimagicshell",e)-- на юнита
			--IssueTargetOrder(dummy,"acidbomb",e)-- на юнита
			Cast(dummy,0,0,e)
		end
		GroupRemoveUnit(perebor,e)
	end
	UnitApplyTimedLife(dummy,FourCC('e000'),3)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 06.02.2020 12:47
---
function CreateAndForceBullet(hero,angle,speed,effectmodel,xs,ys)
	local xhero,yhero=GetUnitX(hero),GetUnitY(hero)
	local zhero=GetTerrainZ(xhero,yhero)+60
	local damage=BlzGetUnitBaseDamage(hero,0)/2
	if true then-- сдвиг только для ратлингов
		xs=MoveX(xs,20,angle-55)
		ys=MoveY(ys,20,angle-55)
	end
	local bullet=AddSpecialEffect(effectmodel,xs,ys)
	local bam=nil--AddSpecialEffect("Abilities/Weapons/SteamTank/SteamTankImpact.mdl",xs,ys)
	local cloud=nil--AddSpecialEffect("Abilities/Weapons/SteamTank/SteamTankImpact.mdl",xs,ys)
	local data=HERO[GetPlayerId(GetOwningPlayer(hero))]
	local CollisionEnemy=false
	local CollisisonDestr=false
	local ZPerepad=0
	BlzSetSpecialEffectYaw(bullet,math.rad(angle))
	BlzSetSpecialEffectScale(bam,0.1)
	BlzSetSpecialEffectScale(cloud,0.02)
	DestroyEffect(bam)
	DestroyEffect(cloud)
	BlzSetSpecialEffectZ(bullet,zhero)
	--print(zhero)
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		local x,y,z=BlzGetLocalSpecialEffectX(bullet),BlzGetLocalSpecialEffectY(bullet),BlzGetLocalSpecialEffectZ(bullet)
		local zGround=GetTerrainZ(MoveX(x,speed*2,angle),MoveY(y,speed*2,angle))
		BlzSetSpecialEffectPosition(bullet,MoveX(x,speed,angle),MoveY(y,speed,angle),z-2)
		BlzSetSpecialEffectPosition(cloud,MoveX(x,speed/3,angle),MoveY(y,speed/3,angle),z-2)
		local xbam,ybam=BlzGetLocalSpecialEffectX(bam),BlzGetLocalSpecialEffectY(bam)
		BlzSetSpecialEffectPosition(bam,MoveX(xbam,2*data.CurrentSpeed,GetUnitFacing(hero)),MoveY(ybam,2*data.CurrentSpeed,GetUnitFacing(hero)),z-50)
		--print("zGround ="..zGround.."z= "..z)
		--BlzSetSpecialEffectPosition(bam,MoveX(GetUnitX(hero),120,GetUnitFacing(hero)),MoveY(GetUnitY(hero),120,GetUnitFacing(hero)),z)
		ZPerepad=z-zGround
		--print(ZPerepad)
		CollisionEnemy=UnitDamageArea(hero,damage,x,y,50)
		CollisisonDestr=PointContentDestructable(x,y,100,false)
		if ZPerepad<=-10 or CollisionEnemy or CollisisonDestr then --or zGround+z>=-70+z

			PointContentDestructable(x,y,100,true)
			if z<=-90 then
				CreateTorrent(x,y)
				BlzSetSpecialEffectPosition(bullet,4000,4000,0)
			end

			UnitDamageArea(hero,damage,x,y,50)
			DestroyEffect(bullet)
			DestroyTimer(GetExpiredTimer())
		end
	end)
end
BulletEffect={
	"Abilities/Weapons/BoatMissile/BoatMissile.mdl",
	"Bullets/Bullet.mdl",
	"Bullets/Bullet1.mdl",
	"Bullets/HighSpeedProjectile_ByEpsilon.mdl",
	"Bullets/Incendiary Bullet Blue.mdl",
	"Bullets/Incendiary Bullet Orange.mdl",
	"Bullets/Incendiary Bullet Purple.mdl",
	"Bullets/Incendiary Bullet Green.mdl",
	"Bullets/Incendiary Bullet Red.mdl",--9
	"Bullets/Incendiary Bullet Yellow.mdl",
	"Bullets/Konstrukt_AssaultRifleMissile.mdl",
	"Bullets/Konstrukt_ShotgunMissile.mdl",
	"Bullets/Konstrukt_SubmachinegunMissile.mdl",
	"Bullets/ShotGunBullet.mdl",
	"Bullets/RifleMissileByEpsilon.mdl"
}

randomeffect=0--GetRandomInt(1,14)
function SingleCannon(hero)
	local angle=GetUnitFacing(hero)
	local x=MoveX(GetUnitX(hero),110,angle)
	local y=MoveY(GetUnitY(hero),110,angle)
	local data=
	CreateAndForceBullet(hero,angle,50,BulletEffect[3],x,y)
end

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 09.02.2020 13:11
---
function CreateTorrent(x,y,size)
	local torrent=nil
	local z=GetTerrainZ(x,y)
	local IsWater=false
	if size==nil then size=1 end
	if z<=-80 then
		torrent=AddSpecialEffect("Torrent1.mdl",x,y)
		BlzSetSpecialEffectMatrixScale(torrent,size,size,size/10)
		DestroyEffect(torrent)
		IsWater=true
	end
	return IsWater
end

function WaveEffect(eff)
	local i=0
	local wave=50
	local deep=BlzGetLocalSpecialEffectZ(eff)

	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		local f=SinBJ(i*wave)
		BlzSetSpecialEffectZ(eff,f+deep)
		i=i+0.3
		if i>=wave then
			DestroyTimer(GetExpiredTimer())
		end
	end)
end

function ExplodeEffect(eff,size)
	local onGround=false
	local x,y=BlzGetLocalSpecialEffectX(eff),BlzGetLocalSpecialEffectY(eff)
	local explode=AddSpecialEffect("Abilities/Spells/Other/TinkerRocket/TinkerRocketMissile.mdl",x,y)
	BlzSetSpecialEffectScale(explode,size)
	DestroyEffect(explode)
	onGround=CreateTorrent(x,y,size)
	BlzSetSpecialEffectPosition(eff,4000,4000,-200)
	DestroyEffect(eff)
	return onGround
end

function EffectAddExplodedTimer(eff,time,hero)
	local sec=time
	local x,y=BlzGetLocalSpecialEffectX(eff),BlzGetLocalSpecialEffectY(eff)
	TimerStart(CreateTimer(), 1, true, function()
		if sec>0 then
			FlyTextTagMissXY(x,y,sec,GetOwningPlayer(hero))
		end
		sec=sec-1
		if sec<0 then
			ExplodeEffect(eff,3)
			UnitDamageArea(hero,500,x,y,300)
			DestroyTimer(GetExpiredTimer())
		end
	end)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 08.02.2020 12:24



function InitDamage()
	local DamageTrigger = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		TriggerRegisterPlayerUnitEvent(DamageTrigger, Player(i), EVENT_PLAYER_UNIT_DAMAGING) -- До вычета брони
		TriggerRegisterPlayerUnitEvent(DamageTrigger, Player(i), EVENT_PLAYER_UNIT_DAMAGED) -- После вычета брони
	end
	TriggerAddAction(DamageTrigger, function()
		local damage     = GetEventDamage() -- число урона
		local damageType = BlzGetEventDamageType()
		if damage < 1 then return end

		local eventId         = GetHandleId(GetTriggerEventId())
		local isEventDamaging = eventId == GetHandleId(EVENT_PLAYER_UNIT_DAMAGING)
		local isEventDamaged  = eventId == GetHandleId(EVENT_PLAYER_UNIT_DAMAGED)

		local target          = GetTriggerUnit() -- тот кто получил урон
		local targetHandleId  = GetHandleId(target)
		local caster          = GetEventDamageSource() -- тот кто нанёс урон
		local casterOwner     = GetOwningPlayer(caster)

		if isEventDamaged then
			if GetUnitTypeId(target)==FourCC('o002')  and GetOwningPlayer(target)==Player(10) then --урон по кодою
				--print("урон по кодою")
				local x,y=GetUnitXY()
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
							if GetLocalPlayer()==casterOwner then
								BlzFrameSetVisible(PerkIsLock[8],false)
							end
							print("Рабочий поднял бунт")
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
				TimerStart(CreateTimer(), 2, false, function()
					IssueImmediateOrder(target,"stop")
				end)

			end
		end
	end)
end




perebor=CreateGroup()
function UnitDamageArea(u,damage,x,y,range,ZDamageSource,EffectModel)
	local OnlyCHK=false
	local isdamage=false
	local e=nil
	local hero=nil
	if ZDamageSource==nil then ZDamageSource=GetUnitZ(u)+60 end
	--print("Поиск целей в на высоте "..ZDamageSource)
	GroupEnumUnitsInRange(perebor,x,y,range,nil)
	while true do
		e = FirstOfGroup(perebor)
		if e == nil then break end
		if UnitAlive(e) and IsUnitEnemy(e,GetOwningPlayer(u))  and IsUnitZCollision(e,ZDamageSource) then

			UnitDamageTarget( u, e, damage, true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
			isdamage=true
			hero=e
			if EffectModel~=nil then
				--print("эффеет")
				local DE=AddSpecialEffect(EffectModel,GetUnitX(e),GetUnitY(e))
				BlzSetSpecialEffectZ(DE,ZDamageSource)
				DestroyEffect(DE)
			end
			if IsUnitType(u,UNIT_TYPE_HERO) then
				local data=HERO[GetPlayerId(GetOwningPlayer(u))]
				if data.Perk6 then -- удар тора
					CastArea(u,FourCC('A003'),x,y)
				end
			end
		end
		--ремонт
		if true and UnitAlive(e) and IsUnitAlly(e,GetOwningPlayer(u)) and IsUnitZCollision(e,ZDamageSource) and IsUnitType(e,UNIT_TYPE_STRUCTURE) then
			local data=HERO[GetPlayerId(GetOwningPlayer(u))]
			--print("лечим")
			local heal=HealUnit(e,BlzGetUnitBaseDamage(u,0))
			data.Repairs=data.Repairs+heal
			data.RevoltSec=0
			if not data.Perk6 then
				if data.Repairs>=1000 then
					data.Perk6=true
					if GetLocalPlayer()==GetOwningPlayer(u) then
						BlzFrameSetVisible(PerkIsLock[6],false)
					end
				end
			end
		end
		GroupRemoveUnit(perebor,e)
	end
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


function UnitDamageLine(u,damage,x,y,range,distance,angle,z)
	local isdamage=false
	local nx,ny
	for i=0,distance/range do
		nx=MoveX(x,i*range,angle)
		ny=MoveY(y,i*range,angle)
		UnitDamageArea(u,damage,nx,ny,range,z)
	end
	return isdamage
end

function UnitRocketArea(hero,x,y,range)
	local find=false
	local e--временный юнит
	local targ=nil
	--print("стреляем")
	GroupEnumUnitsInRange(perebor,x,y,range,nil)
	while true do
		e = FirstOfGroup(perebor)
		if e == nil or find==true then break end
		if UnitAlive(e) and IsUnitEnemy(e,GetOwningPlayer(hero)) then
			targ=e
		end
		GroupRemoveUnit(perebor,e)
	end
	local dummy=CreateUnit(GetOwningPlayer(hero), DummyID, GetUnitX(hero), GetUnitY(hero), 0)
	SetUnitZ(dummy,GetUnitZ(hero))
	UnitAddAbility(dummy,FourCC('A003'))
	UnitApplyTimedLife(dummy,DummyID,1)
	if targ~=nil then
		--print("цель определена- "..GetUnitName(targ))
		Cast(dummy,0,0,targ)
	else
		targ=CreateUnit(Player(PLAYER_NEUTRAL_AGGRESSIVE), DummyID, x, y, 0)

		UnitRemoveAbility(targ,FourCC('Aloc'))
		if Cast(dummy,0,0,targ)==false then
			--print("выстрел в пустоту")
			HeroUpdateWeaponCharges(hero,3,-1)
		end
		UnitApplyTimedLife(targ,DummyID,3)
		--print("Нет врагов, летим в воду")
	end
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 16.01.2020 23:40
---
GetPlayerMouseX={}
GetPlayerMouseY={}
function InitMouseMoveTrigger()
	local MouseMoveTrigger = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		if GetPlayerSlotState(player) == PLAYER_SLOT_STATE_PLAYING and GetPlayerController(player) == MAP_CONTROL_USER then
			TriggerRegisterPlayerEvent(MouseMoveTrigger, player, EVENT_PLAYER_MOUSE_MOVE)
		end
	end
		TriggerAddAction(MouseMoveTrigger, function()
			--print("ismove")
			local id=GetPlayerId(GetTriggerPlayer())
			HERO[id].IsMouseMove=true
			--HERO[id].LastMouseX=BlzGetTriggerPlayerMouseX()
			GetPlayerMouseX[id]=BlzGetTriggerPlayerMouseX()
			GetPlayerMouseY[id]=BlzGetTriggerPlayerMouseY()


		end)

end
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
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 09.02.2020 13:24

function UnitCheckPathingInRound(hero,range)
	local data=HERO[GetPlayerId(GetOwningPlayer(hero))]
	local x,y=GetUnitX(hero),GetUnitY(hero)
	local nx,ny=nil,nil
	local a=10
	local z=nil
	local k=0
	local total=0
	local med=0
	local min=350
	local max=0
	local current=0
	local dif=0
	local perepad=0
	if data.IsDisabled==false then
		for i=0,35 do
			nx=MoveX(x,range,a*i)
			ny=MoveY(y,range,a*i)
			z=GetTerrainZ(nx,ny)
			perepad=GetUnitZ(hero)-GetTerrainZ(x,y)
			--print("perepad="..perepad)
			--if perepad<=2 then
			if z>-80 and data.OnTorrent==false then
				k=k+1
				total=total+a*i
				current=a*i
				if current>=max then max=current end
				if current<=min then min=current end
				--print("a="..a*i)
				if UnitAlive(hero)  and k>=10 then
					DestroyEffect(AddSpecialEffect("Abilities/Weapons/AncestralGuardianMissile/AncestralGuardianMissile.mdl",nx,ny))
				end
			end
		end
		if k>0 then
			dif=max-min
			if dif>=90 then
				--print("dif="..dif.."при минимуме="..min)
				for _=min,0,-10 do
					total=total+360
				end
			end
			med=total/k
			if k>=10 then
				--print("selfdamage")
				UnitDamageTarget( hero, hero, 5*(k-7), true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
			end
			if k>=30 then
				KillUnit(hero)
			end

			if dif>=90 then med=med-180  end

			if  UnitAlive(hero) and k>=10 then
				data.IsDisabled=true
				print("force ="..k)
				SetUnitPathing(hero,false)--отключение
				UnitAddVectorForce(hero,med-180,10+k,80+5*k)
			end
		end
	end
end




function PointContentUnit(x,y,range,condconten)
	local content=false
	local e--временный юнит
	local ContentUnit=nil
	if condconten==nil then condconten=true end
	if range==nil then range=80 end
	GroupEnumUnitsInRange(perebor,x,y,range,nil)
	while true do
		e = FirstOfGroup(perebor)
		if e == nil then break end
		if UnitAlive(e) and condconten and content==false  then
			content=true
			ContentUnit=e
		end
		GroupRemoveUnit(perebor,e)
	end
	return content,ContentUnit
end

GlobalRect=Rect(0,0,0,0)
function PointContentDestructable (x,y,range,iskill,damage,hero)
	local content=false
	if range==nil then range=80 end
	if iskill==nil then iskill=false end
	SetRect(GlobalRect, x - range, y - range, x + range, y +range)
	EnumDestructablesInRect(GlobalRect,nil,function ()
		local d=GetEnumDestructable()
		if GetDestructableLife(d)>0 then
			content=true
			if iskill then
				SetDestructableLife(d,GetDestructableLife(d)-damage)



				if GetDestructableLife(d)>=1 then
					SetDestructableAnimation(d,"Stand Hit")
				else
					local data=HERO[GetPlayerId(GetOwningPlayer(hero))]

					if data.IsWood then
						--print("Некуда класть звук")
						local  new=CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), FourCC('e002'), GetDestructableX(d), GetDestructableY(d), 0)
						UnitAddAbility(new,FourCC('A000'))
						IssueImmediateOrder(new,"WindWalk")
					else
						data.IsWood=true
						--print("Добавляем 1 дерева для "..GetUnitName(hero))
					end

				end
				--блок голема
				if GetDestructableTypeId(d)==FourCC('LTrc') then
					KillDestructable(d)
					local  new=CreateUnit(Player(PLAYER_NEUTRAL_AGGRESSIVE), FourCC('n002'), GetDestructableX(d), GetDestructableY(d), 0)

					TimerStart(CreateTimer(),10,false, function()
						KillUnit(new)
						local xn,yn=GetUnitXY(new)
						--CreateDestructable(FourCC('LTrc'),xn,yn,GetRandomReal(0,360),GetRandomReal(0.5,1.2),GetRandomInt(1,3))
					end)
				end
				--блок голема
			end
		else
			local data=HERO(UnitGetPid(hero))
			--print("атака по мертвому "..GetUnitName(hero))
			data.IsWood=true
		end
	end)
	return content
end
function UnitAddForce(hero,angle,speed,distance)
	local currentdistance=0
	local data=HERO[GetPlayerId(GetOwningPlayer(hero))]
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		currentdistance=currentdistance+speed
		--print(currentdistance)
		local x,y=GetUnitX(hero),GetUnitY(hero)
		local newX,newY=MoveX(x,speed,angle),MoveY(y,speed,angle)
		local dx=math.abs(x-newX)
		if dx>=50 then
			print("телепорт баг в адд форсе")
		else
			--print(dx)
			SetUnitX(hero,newX)
			SetUnitY(hero,newY)
		end

		if currentdistance>=distance  or (data.OnWater and data.OnTorrent==false) then --or data.OnTorrent==false--or not UnitAlive(hero)
			data.IsDisabled=false
			data.OnWater=false
			DestroyTimer(GetExpiredTimer())
			--print("stop cur="..currentdistance.." dist="..distance)
		end
	end)
end


---------ВЕКТОРА
---
function UnitAddVectorForce(hero,Angle,Speed,Distance)
	local data=nil
	local k=0
	local h=0
	if IsUnitType(hero,UNIT_TYPE_HERO) then
		h=UnitGetPid(hero)

	else
		h=GetHandleId(hero)
		print("НЕГЕРОЙ толкаемый")
	end
	if not HERO[h] then
		--print("первый толчек для "..GetUnitName(hero))
		HERO[h]={
			ForcesCount=0,
			ForceRemain={},
			ForceAngle={},
			ForceSpeed={},
			IsForce={}
		}
		--data=HERO[GetHandleId(hero)]
		--MovingSystem(hero)
	end
	data=HERO[h]
	data.ForcesCount=data.ForcesCount+1
	k=data.ForcesCount
	data.ForceRemain[k]=Distance
	data.ForceSpeed[k]=Speed
	data.ForceAngle[k]=Angle
	data.IsForce[k]=true
	data.AngleForce=Angle
	--print("параметры заданы"..GetUnitName(hero)..k)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 23.01.2020 20:11
function InitUnitDeath()
	local gg_trg_DEADGUI = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(gg_trg_DEADGUI, EVENT_PLAYER_UNIT_DEATH)--меня полностью устраивает это событие
	TriggerAddAction(gg_trg_DEADGUI, function()
		local DeadUnit=GetTriggerUnit()--умерший
		--print("EventDead")
		local Killer=GetKillingUnit()--убийца
		if IsUnitType(DeadUnit,UNIT_TYPE_HERO) then --герои
			local x,y=GetUnitXY(DeadUnit)
			local PD=GetOwningPlayer(DeadUnit)
			local pid=GetPlayerId(PD)
			local data=HERO[pid]
			data.Dies=data.Dies+1
			if data.Dies==15 then
				if not data.Perk3 then
					BlzSetUnitMaxHP(DeadUnit,GetUnitState(DeadUnit,UNIT_STATE_MAX_LIFE)+100)
				end
				data.Perk3=true
				if GetLocalPlayer()==PD then
					BlzFrameSetVisible(PerkIsLock[3],false)
				end
			end
			if data.IsWood then
				CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), FourCC('e002'), x,y, 0)--дровишко
			end
			TimerStart(CreateTimer(), 0.5, false, function()

				--data.Alive=true

				ReviveHero(DeadUnit,GetPlayerStartLocationX(PD),GetPlayerStartLocationY(PD),true)
				SelectUnitForPlayerSingle(DeadUnit,PD)
				data.IsWood=false

			end)
		end

		if IsUnitType(Killer,UNIT_TYPE_HERO) then --герои
			--print("герой убил")
			local PD=GetOwningPlayer(Killer)
			local pid=GetPlayerId(PD)
			local data=HERO[pid]
			data.Kills=data.Kills+1
			data.RevoltSec=0
			if data.Kills==1 then
				if not data.Perk5 then
					BlzSetUnitBaseDamage(Killer,BlzGetUnitBaseDamage(Killer,0)*2,0)
				end
				data.Perk5=true
				if GetLocalPlayer()==PD then
					BlzFrameSetVisible(PerkIsLock[5],false)
				end
			end
		end

		if GetUnitTypeId(DeadUnit)==FourCC('h001') then
			ShowUnit(DeadUnit,false)
			DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl",GetUnitXY(DeadUnit)))
		end
	end)
end

--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 03.01.2020 12:16

TargetOrders={"innerfire","slow","heal","controlmagic","invisibility","magicleash","spellsteal","polymorph","repair","thunderbolt","banish","holybolt","load","unstableconcoctoin","spirintlink",
"bloodlust","ensnare","devour","purge","lightingshield","healingwave","hex","chainlightning","antimagicshell","unholyfrenzy","possession","web","absorbmana","curse","restoration","cripple","frostarmor",
"deathpact","sleep","darkritual","faeriefire","renew","autodispel","cyclone","entanglingroots","flamingarrows","manaburn","shadowstrike","creepthunderbolt","mindrot","deathcoil",
"parasite","charm","creepdevour","forkedlighting","cripple","blackarrow","acidbomb","doom","soulburn","transmute","rejuvination"}

PointOrders={"flare","dispel","cloudoffog","flamestrike","blizzard","healingward","stasistrap","evileye","farsight","eathquake","ward","serpentward","shockwave","inferno","impale","deathanddecay","carrionswarm",
"detonate","forceofnature","blink","selfdestruct","silence","rainoffire","breathofirre","volcano","stampede","healingspray","clusterrockets","summonfactory","drunkenhaze"}

ImmediateOrders={"defend","magicdefense","militia","townbellon","avatar","divineshield","resurrection","massteleport","waterelemental","thunderclap","summonphoenix","etherealform","berserk",
"battlestations","corporealform","whirlwind","stomp","spiritwolf","locustswarm","mirrorimage","voodoo","windwalk","raisedead","recharge","replenish","borrow","stoneform","cannibalize","sphinksform","replenishlife",
"replenishmana","carrionscarabs","animatedead","coupletarget","manaflareon","vengeance","ravenform","bearform","taunt","roar","ambush", "fanofknives","starfall","metamorphosis","immolation",
"tranquility","monsoon","frenzy","howlofterror","manashield","battleroar","elementalfury","wateryminion","slimemonster","robogoblin","tornado","chemicalrage"}
---@param u unit
---@param x real
---@param y real
---@param target unit
function Cast(u,x,y,target)
	local IsCast=false
	if UnitAlive(u) then
		AllPoint(u,x,y)
		if AllTarget(u,target) then
			IsCast=true
		end
		AllImmediate(u)
	end
	return IsCast
end

function AllImmediate(u)
	for i = 1,#ImmediateOrders do
	--print(ImmediateOrders[i].." is immediate")
		IssueImmediateOrder(u,ImmediateOrders[i])
	end
end

function AllPoint(u,x,y)
	for i = 1,#PointOrders do
	--	print(PointOrders[i].." is point")
		IssuePointOrder(u,PointOrders[i],x,y)
	end
end

function AllTarget(u,target)
	local IsCast=false
	for i = 1,#TargetOrders do
		--print(TargetOrders[i].." is target")
		if IssueTargetOrder(u,TargetOrders[i],target) then
			IsCast=true
		end
	end
	return IsCast
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 03.04.2020 13:40
function HealUnit(hero,amount,flag)
	--1 или nil Сколько вылчено
	--2 Сверхлечение
	local p=GetOwningPlayer(hero)
	local MaxHP=BlzGetUnitMaxHP(hero)
	local CurrentHP=GetUnitState(hero,UNIT_STATE_LIFE)
	local LoosingHP=MaxHP-CurrentHP
	local OverHeal=amount-LoosingHP
	local TotalHeal=amount
	if LoosingHP<=amount then TotalHeal=LoosingHP	end
	--Блок перка обжоры
	if IsUnitType(hero,UNIT_TYPE_HERO) then
		local data=HERO[GetPlayerId(GetOwningPlayer(hero))]
		data.Heals=data.Heals+TotalHeal
		if not data.Perk7 then
			if data.Heals>=1000 then
				data.Perk7=true
				UnitAddAbility(hero,FourCC('A004'))
				if GetLocalPlayer()==GetOwningPlayer(hero) then
					BlzFrameSetVisible(PerkIsLock[7],false)
				end
			end
		end
	end
	--Блок перка обжоры
	SetUnitState(hero,UNIT_STATE_LIFE,CurrentHP+TotalHeal)
	if TotalHeal>1 then
		FlyTextTagHealXY(GetUnitX(hero),GetUnitY(hero),"+"..R2I(TotalHeal),p)
	end
	if not flag or flag==1 then
		return TotalHeal
	end
	if  flag==2 then
		return OverHeal
	end
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 10.01.2020 23:44
---
---@param x real
---@param y real
---@return boolean
function InMapXY(x, y)
	return x > GetRectMinX(bj_mapInitialPlayableArea) and x < GetRectMaxX(bj_mapInitialPlayableArea) and y > GetRectMinY(bj_mapInitialPlayableArea) and y < GetRectMaxY(bj_mapInitialPlayableArea)
end

---@param x real
---@param distance real
---@param angle real radian
---@return real
function GetPolarOffsetX(x, distance, angle)
	return x + distance * math.cos(angle)
end

---@param y real
---@param distance real
---@param angle real radian
---@return real
function GetPolarOffsetY(y, distance, angle)
	return y + distance * math.sin(angle)
end

---@param x real
---@param distance real
---@param angle real degrees
---@return real
function MoveX(x, distance, angle)
	return x + distance * math.cos(angle * bj_DEGTORAD)
end

---@param y real
---@param distance real
---@param angle real degrees
---@return real
function MoveY(y, distance, angle)
	return y + distance * math.sin(angle * bj_DEGTORAD)
end


local GetTerrainZ_location = Location(0, 0)
---@param x real
---@param y real
---@return real
function GetTerrainZ(x, y)
	MoveLocation(GetTerrainZ_location, x, y)
	return GetLocationZ(GetTerrainZ_location)
end

---@param target unit
---@return real
function GetUnitZ(target)
	MoveLocation(GetTerrainZ_location, GetUnitX(target), GetUnitY(target))
	return GetLocationZ(GetTerrainZ_location) + GetUnitFlyHeight(target)
end

---@param target unit
---@param z real
function SetUnitZ(target, z)
	UnitAddAbility(target, FourCC('Aave'))
	UnitRemoveAbility(target, FourCC('Aave'))
	MoveLocation(GetTerrainZ_location, GetUnitX(target), GetUnitY(target))
	SetUnitFlyHeight(target, z - GetLocationZ(GetTerrainZ_location), 0)
end

---@param h real максимальная высота в прыжке на середине расстояния (x = d / 2)
---@param d real общее расстояние до цели
---@param x real расстояние от исходной цели до точки, где следует взять высоту по параболе
---@return real
function ParabolaZ (h, d, x)
	return (4 * h / d) * (d - x) * (x / d)
end

---@param zs real начальная высота высота одного края дуги
---@param ze real конечная высота высота другого края дуги
---@param h real максимальная высота на середине расстояния (x = d / 2)
---@param d real общее расстояние до цели
---@param x real расстояние от исходной цели до точки
---@return real
function GetParabolaZ(zs, ze, h, d, x)
	return (2 * (zs + ze - 2 * h) * (x / d - 1) + (ze - zs)) * (x / d) + zs
end

---@param xa real
---@param ya real
---@param xb real
---@param yb real
---@return real
function DistanceBetweenXY(xa, ya, xb, yb)
	local dx = xb - xa
	local dy = yb - ya
	return math.sqrt(dx * dx + dy * dy)
end

---@param xa real
---@param ya real
---@param za real
---@param xb real
---@param yb real
---@param zb real
---@return real
function DistanceBetweenXYZ(xa, ya, za, xb, yb, zb)
	local dx = xb - xa
	local dy = yb - ya
	local dz = zb - za
	return math.sqrt(dx * dx + dy * dy + dz * dz)
end

---@param xa real
---@param ya real
---@param xb real
---@param yb real
---@return real radian
function AngleBetweenXY(xa, ya, xb, yb)
	return math.atan(yb - ya, xb - xa)
end

---@param a real radian
---@param b real radian
---@return real radian
function AngleDifference(a, b)
	local c---@type real
	local d---@type real
	if a > b then
		c = a - b
		d = b - a + 2 * math.pi
	else
		c = b - a
		d = a - b + 2 * math.pi
	end
	return c > d and d or c
end

--@author https://xgm.guru/p/wc3/warden-math
---@param a real degrees
---@param b real degrees
---@return real degrees
function AngleDifferenceDeg(a, b)
	a, b = math.abs(a, 360), math.abs(b, 360)
	local x---@type real
	if (a > b) then
		a, b = b, a
	end
	x = b - 360
	if (b - a > a - x) then
		b = x
	end
	return math.abs(a - b)
end

-- Находит длину перпендикуляра от отрезка, заданного xa, ya, xb, yb к точке, заданной xc, yc
--@author https://xgm.guru/p/wc3/perpendicular
---@param xa real
---@param ya real
---@param xb real
---@param yb real
---@param xc real
---@param yc real
---@return real
function Perpendicular (xa, ya, xb, yb, xc, yc)
	return math.sqrt((xa - xc) * (xa - xc) + (ya - yc) * (ya - yc)) * math.sin(math.atan(yc - ya, xc - xa) - math.atan(yb - ya, xb - xa))
end

--@Hate https://xgm.guru/p/wc3/241479
---@param source unit
---@param x real
---@param y real
function SetUnitPositionSmooth(source, x, y)
	local last_x = GetUnitX(source)
	local last_y = GetUnitY(source)
	local bx
	local by
	--print("Смус выполнена")
	SetUnitPosition(source, x, y)
	if (RAbsBJ(GetUnitX(source) - x) > 0.5) or (RAbsBJ(GetUnitY(source) - y) > 0.5) then
		SetUnitPosition(source, x, last_y)
		bx = RAbsBJ(GetUnitX(source) - x) <= 0.5
		SetUnitPosition(source, last_x, y)
		by = RAbsBJ(GetUnitY(source) - y) <= 0.5

		---
		local dx=math.abs(x-last_x)
		if dx>=100 then
			print("Телепорт бак в функции Smooth"..dx )
		end
		---
		if bx then
			SetUnitPosition(source, x, last_y)
		elseif by then
			SetUnitPosition(source, last_x, y)
		else
			SetUnitPosition(source, last_x, last_y)
		end
	end
end

function GetUnitXY(unit)
	return GetUnitX(unit),GetUnitY(unit)
end

function MoveXY(x,y, distance, angle)
	return x + distance * math.cos(angle * bj_DEGTORAD),y + distance * math.sin(angle * bj_DEGTORAD)
end

function UnitCollisionOFF(unit)
	UnitAddAbility(unit,FourCC('A000'))
	IssueImmediateOrder(unit,"windwalk")
end

---@param text string
---@param textSize real
---@param x real
---@param y real
---@param z real
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@param xvel real
---@param yvel real
---@param fadepoint real
---@param lifespan real
---@param player player
---@return texttag
function FlyTextTag(text, textSize, x, y, z, red, green, blue, alpha, xvel, yvel, fadepoint, lifespan, player)
	local t = CreateTextTag()
	SetTextTagText(t, text, textSize)
	SetTextTagPos(t, x, y, z)
	SetTextTagColor(t, red, green, blue, alpha)
	SetTextTagVelocity(t, xvel, yvel)
	SetTextTagFadepoint(t, fadepoint)
	SetTextTagLifespan(t, lifespan)
	SetTextTagPermanent(t, false)
	if player ~= nil then
		SetTextTagVisibility(t, player == GetLocalPlayer())
	end
	return t
end

---@param target widget
---@param text string
---@param player player
---@return texttag
function FlyTextTagGoldBounty(target, text, player)
	return FlyTextTag(text, 0.024, GetWidgetX(target) - 16, GetWidgetY(target), 0, 255, 220, 0, 255, 0, 0.03, 2, 3, player)
end

---@param target widget
---@param text string
---@param player player
---@return texttag
function FlyTextTagLumberBounty(target, text, player)
	return FlyTextTag(text, 0.024, GetWidgetX(target) - 16, GetWidgetY(target), 0, 0, 200, 80, 255, 0, 0.03, 2, 3, player)
end

---@param target widget
---@param text string
---@param player player
---@return texttag
function FlyTextTagMiss(target, text, player)
	return FlyTextTag(text, 0.024, GetWidgetX(target), GetWidgetY(target), 0, 255, 0, 0, 255, 0, 0.03, 1, 3, player)
end

---@param target widget
---@param text string
---@param player player
---@return texttag
function FlyTextTagCriticalStrike(target, text, player)
	return FlyTextTag(text, 0.024, GetWidgetX(target), GetWidgetY(target), 0, 255, 0, 0, 255, 0, 0.04, 2, 5, player)
end

---@param target widget
---@param text string
---@param player player
---@return texttag
function FlyTextTagManaBurn(target, text, player)
	return FlyTextTag(text, 0.024, GetWidgetX(target), GetWidgetY(target), 0, 82, 82, 255, 255, 0, 0.04, 2, 5, player)
end

---@param target widget
---@param text string
---@param player player
---@return texttag
function FlyTextTagShadowStrike(target, text, player)
	return FlyTextTag(text, 0.024, GetWidgetX(target), GetWidgetY(target), 0, 160, 255, 0, 255, 0, 0.04, 2, 5, player)
end

function FlyTextTagHealXY(x,y, text, player)
	return FlyTextTag(text, 0.024, x, y, 150, 88, 250, 13, 255, 0, 0.03, 1, 3, player)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 11.03.2020 22:30
function FindUnitOfType(id,flag,x,y)
	--flag nil - вся карта
	--flag any - радиус
	local unit=nil
	local e=nil
	local k=0
	--print("ищем")
	if not flag then
		GroupEnumUnitsInRect(perebor,bj_mapInitialPlayableArea,nil)
		while true do
			e = FirstOfGroup(perebor)

			if e == nil then break end
			if UnitAlive(e) and GetUnitTypeId(e)==id then
				k=k+1
				unit=e
			end
			GroupRemoveUnit(perebor,e)
		end
	else
		GroupEnumUnitsInRange(perebor,x,y,flag,nil)
		while true do
			e = FirstOfGroup(perebor)

			if e == nil then break end
			if UnitAlive(e) and GetUnitTypeId(e)==id then
				k=k+1
				unit=e
			end
			GroupRemoveUnit(perebor,e)
		end
	end


	if k>1 then
		print("Ошибка получено "..k.." юнитов")
	end
	if unit==nil then
		print("Не найдено живых юнитов данного типа")
	end
	return unit
end
---------ВЕКТОРА
function UnitAddVectorForce(hero,Angle,Speed,Distance)
	local data=nil
	local k=0
	local h=0
	if IsUnitType(hero,UNIT_TYPE_HERO) then
		h=UnitGetPid(hero)

	else
		h=GetHandleId(hero)
		print("НЕГЕРОЙ толкаемый")
	end
	if not HERO[h] then
		--print("первый толчек для "..GetUnitName(hero))
		HERO[h]={
			ForcesCount=0,
			ForceRemain={},
			ForceAngle={},
			ForceSpeed={},
			IsForce={}
		}
		--data=HERO[GetHandleId(hero)]
		--MovingSystem(hero)
	end
	data=HERO[h]
	data.ForcesCount=data.ForcesCount+1
	k=data.ForcesCount
	data.ForceRemain[k]=Distance
	data.ForceSpeed[k]=Speed
	data.ForceAngle[k]=Angle
	data.IsForce[k]=true
	data.AngleForce=Angle
	--print("параметры заданы"..GetUnitName(hero)..k)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 08.03.2020 12:10
---
if(_G["WM"] == nil) then WM = (function(m,h) h(nil,(function() end), (function(e) _G[m] = e end)) end) end -- WLPM MM fallback

-- Warcraft 3 Geometry module by ScorpioT1000 / 2020
-- Thanks to DGUI by Ashujon / 2009
WM("wGeometry", function(import, export, exportDefault)
	local Functions = nil
	local Vector3 = nil
	local Matrix3 = nil
	local Matrix4 = nil
	local Camera = nil
	local zTesterLocation = Location(0,0)

	local getTerrainZ = function(x,y)
		MoveLocation(zTesterLocation, x, y)
		return GetLocationZ(zTesterLocation)
	end

	local _GetUnitZ = function(u)
		return GetUnitFlyHeight(u) + getTerrainZ(GetUnitX(u), GetUnitY(u))
	end

	local _SetUnitZ = function(u, z)
		SetUnitFlyHeight(u, z - getTerrainZ(GetUnitX(u), GetUnitY(u)), 0)
	end

	local _GetItemZ = function(i)
		return getTerrainZ(GetItemX(u), GetItemY(u))
	end

	local _GetDestructableZ = function(d)
		return getTerrainZ(GetDestructableX(d), GetDestructableY(d))
	end

	-- Must be called for each non-air unit before manipulating Z coordinate
	-- @param u Unit
	local unlockUnitZ = function(u)
		UnitAddAbility(u , 'Aave')
		UnitRemoveAbility(u , 'Aave')
	end


	-- Math functions
	Functions = {
		-- 1D clamp
		clamp = function(value, _min, _max)
			if value > _max then
				value = _max
			end
			if value < _min then
				value = _min
			end
			return value
		end,

		-- 1D distance
		distance = function(value1, value2)
			return math.abs(value1 - value2)
		end,

		-- 1D linear spline interpolation between 2 points
		lerp = function(value1, value2, amount)
			return value1 + (value2 - value1) * amount
		end,

		-- 1D hermite spline interpolation between 2 points
		hermite = function(value1, tangent1, value2, tangent2, amount)
			local v1 = value1
			local v2 = value2
			local t1 = tangent1
			local t2 = tangent2
			local s = amount
			local result = 0.
			local sCubed = s * s * s
			local sSquared = s * s

			if (amount == 0.) then
				result = value1
			elseif (amount == 1.) then
				result = value2
			else
				result = (2 * v1 - 2 * v2 + t2 + t1) * sCubed +
						(3 * v2 - 3 * v1 - 2 * t1 - t2) * sSquared +
						t1 * s +
						v1
			end
			return result
		end,

		-- 1D bezier spline interpolation between 3 points
		bezier = function(p0, p1, p2, amount)
			local amountInv = 1-amount
			return amountInv*amountInv*p0
					+ 2*amount*amountInv*p1
					+ amount*amount*p2
		end
	}



	-- 3D Vector ====================
	Vector3 = {
		-- x, y, z

		-- Create a new vector from coords. Skip the coords to create a zero vector
		new = function(self, x, y, z)
			local o = {}
			setmetatable(o,self)
			o.x = x or 0.
			o.y = y or 0.
			o.z = z or 0.
			return o
		end,

		-- Copy vector from another
		copyFrom = function(self, that)
			local o = {}
			setmetatable(o,self)
			o.x = that.x
			o.y = that.y
			o.z = that.z
			return o
		end,

		-- Copy vector from Unit X/Y/Z
		-- @param u Unit
		copyFromUnit = function(self, u)
			local o = {}
			setmetatable(o,self)
			o.x = GetUnitX(u)
			o.y = GetUnitY(u)
			o.z = _GetUnitZ(u)
			return o
		end,

		-- Copy vector from Location X/Y/Z
		-- @param loc Location
		copyFromLocation = function(self, loc)
			local o = {}
			setmetatable(o,self)
			o.x = GetLocationX(loc)
			o.y = GetLocationY(loc)
			o.z = GetLocationZ(loc)
			return o
		end,

		-- Copy vector from Item X/Y/Z
		-- @param i Item
		copyFromItem = function(self, i)
			local o = {}
			setmetatable(o,self)
			o.x = GetItemX(i)
			o.y = GetItemY(i)
			o.z = _GetItemZ(i)
			return o
		end,

		-- Copy vector from Destructable X/Y/Z
		-- @param d Destructable
		copyFromDestructable = function(self, d)
			local o = {}
			setmetatable(o,self)
			o.x = GetDestructableX(d)
			o.y = GetDestructableX(d)
			o.z = _GetDestructableZ(d)
			return o
		end,

		-- Create a new X-oriented unit vector
		newRight = function(self)
			return Vector3:new(1.,0.,0.)
		end,

		-- Create a new Y-oriented unit vector
		newForward = function(self)
			return Vector3:new(0.,1.,0.)
		end,

		-- Create a new Z-oriented unit vector
		newUp = function(self)
			return Vector3:new(0.,0.,1.)
		end,

		length = function(self)
			return math.sqrt(self.x*self.x+self.y*self.y+self.z*self.z)
		end,

		lengthSquared = function(self)
			return self.x*self.x+self.y*self.y+self.z*self.z
		end,

		length2d = function(self)
			return math.sqrt(self.x*self.x+self.y*self.y)
		end,

		normalize = function(self)
			local len = math.sqrt(self.x*self.x+self.y*self.y+self.z*self.z)
			return Vector3:new(self.x/len, self.y/len, self.z/len)
		end,

		distance = function(self, that)
			return math.sqrt(
					(self.x-that.x)*(self.x-that.x) +
							(self.y-that.y)*(self.y-that.y) +
							(self.z-that.z)*(self.z-that.z)
			)
		end,

		distanceSquared = function(self, that)
			return
			(self.x-that.x)*(self.x-that.x) +
					(self.y-that.y)*(self.y-that.y) +
					(self.z-that.z)*(self.z-that.z)
		end,

		__eq = function(self, that)
			return self.x == that.x and self.y == that.y and self.z == that.z
		end,

		__add = function(self, that)
			return Vector3:new(
					self.x + that.x,
					self.y + that.y,
					self.z + that.z
			)
		end,

		__sub = function(self, that)
			return Vector3:new(
					self.x - that.x,
					self.y - that.y,
					self.z - that.z
			)
		end,

		__unm = function(self, that)
			return Vector3:new(
					-self.x,
					-self.y,
					-self.z
			)
		end,

		-- Uses cross product (!)
		-- @see https://en.wikipedia.org/wiki/Cross_product
		__mul = function(self, that)
			return self:crossProduct(that)
		end,

		-- Division by a number (!)
		__div = function(self, aNumber)
			return Vector3:new(
					self.x / aNumber,
					self.y / aNumber,
					self.z / aNumber
			)
		end,

		-- @param that Vector3
		-- @return number
		-- @see https://en.wikipedia.org/wiki/Dot_product
		dotProduct = function(self, that)
			return self.x*that.x + self.y*that.y + self.z*that.z
		end,

		-- @param that Vector3
		-- @return Vector3
		-- @see https://en.wikipedia.org/wiki/Cross_product
		crossProduct = function(self, that)
			return Vector3:new(
					self.y * that.z - self.z * that.y,
					self.z * that.x - self.x * that.z,
					self.x * that.y - self.y * that.x
			)
		end,

		scale = function(self, aNumber)
			return Vector3:new(
					self.x * aNumber,
					self.y * aNumber,
					self.z * aNumber
			)
		end,

		-- Spheric coordinates offset
		-- @param distance number in game units
		-- @param yaw number (angle in radians)
		-- @param pitch number (angle in radians)
		-- @return Vector3 result point
		-- @see https://en.wikipedia.org/wiki/Aircraft_principal_axes
		yawPitchOffset = function(self, distance, yaw, pitch)
			return Vector3:new(
					distance * math.cos(yaw) * math.cos(pitch),
					distance * math.sin(yaw) * math.cos(pitch),
					distance * math.cos(pitch)
			)
		end,

		-- Transforms the vector by 3x3 matrix transformation components
		-- @param Matrix3 m
		-- @return Vector3
		-- @see https://en.wikipedia.org/wiki/Transformation_matrix
		transform3 = function(self, m)
			return Vector3:new(
					self.x*m.m11+self.y*m.m21+self.z*m.m31,
					self.x*m.m12+self.y*m.m22+self.z*m.m32,
					self.x*m.m13+self.y*m.m23+self.z*m.m33
			)
		end,

		-- Transforms the vector by 4x4 matrix transformation components
		-- @param Matrix4 m
		-- @return Vector3
		-- @see https://en.wikipedia.org/wiki/Transformation_matrix
		transform4 = function(self, m)
			local w = self.x*m.m14+self.y*m.m24+self.z*m.m34+m.m44
			return Vector3:new(
					(self.x*m.m11+self.y*m.m21+self.z*m.m31+m.m41)/w,
					(self.x*m.m12+self.y*m.m22+self.z*m.m32+m.m42)/w,
					(self.x*m.m13+self.y*m.m23+self.z*m.m33+m.m43)/w
			)
		end,

		-- Applies linear interpolation
		-- @param that Vector3
		-- @param amount current animation state, number between 0 and 1
		-- @return Vector3 result
		lerp = function(self, that, amount)
			return Vector3:new(
					Functions.lerp(self.x, that.x, amount),
					Functions.lerp(self.y, that.y, amount),
					Functions.lerp(self.z, that.z, amount)
			)
		end,

		-- Applies hermite spline interpolation
		-- @param that Vector3
		-- @param amount current animation state, number between 0 and 1
		-- @param tangent1 (optional)
		-- @param tangent2 (optional)
		-- @return Vector3 result
		hermite = function(self, that, amount, tangent1, tangent2)
			if(tangent1 == nil) then
				tangent1 = 0.
			end
			if(tangent2 == nil) then
				tangent2 = 0.
			end
			return Vector3:new(
					Functions.hermite(self.x, tangent1, that.x, tangent2, amount),
					Functions.hermite(self.y, tangent1, that.y, tangent2, amount),
					Functions.hermite(self.z, tangent1, that.z, tangent2, amount)
			)
		end,

		-- Applies bezier spline interpolation
		-- @param p2 Vector3 point 2
		-- @param p3 Vector3 point 3
		-- @param amount current animation state, number between 0 and 1
		-- @return Vector3 result
		bezier = function(self, p2, p3, amount)
			return Vector3:new(
					Functions.bezier(self.x, p2.x, p3.x, amount),
					Functions.bezier(self.y, p2.y, p3.y, amount),
					Functions.bezier(self.z, p2.z, p3.z, amount)
			)
		end,

		-- Checks if the point is in a sphere
		-- @param c Vector3 sphere center
		-- @param r number sphere radius
		-- @return boolean
		isInSphere = function(self, c, r)
			return self:distanceSquared(c) < (r*r)
		end,

		-- Checks if the point is inside axis-aligned bounding box (AABB)
		-- @param vMin
		-- @param vMax
		-- @return boolean
		isInAABB = function(self, vMin, vMax)
			return (self.x >= vMin.x and self.x <= vMax.x) and
					(self.y >= vMin.y and self.y <= vMax.y) and
					(self.z >= vMin.z and self.z <= vMax.z)
		end,

		applyToLocation = function(self, loc)
			MoveLocation(loc, self.x, self.y)
		end,

		applyToUnit = function(self, u)
			SetUnitX(u, self,x)
			SetUnitY(u, self.y)
			_SetUnitZ(u, self.z)
		end,

		__tostring = function(self)
			return "{ " .. tostring(self.x) .. ", " .. tostring(self.y) .. ", " .. tostring(self.z) .. " }"
		end,
	}
	Vector3.__index = Vector3




	-- 3x3 Matrix ====================
	Matrix3 = {
		-- m11, m12, m13
		-- m21, m22, m23
		-- m31, m32, m33

		-- Create a new matrix from coords. Skip coords to create a zero matrix
		-- @return Matrix3
		new = function(self, m11, m12, m13, m21, m22, m23, m31, m32, m33)
			local o = {}
			setmetatable(o,self)
			o.m11 = m11 or 0.
			o.m12 = m12 or 0.
			o.m13 = m13 or 0.
			o.m21 = m21 or 0.
			o.m22 = m22 or 0.
			o.m23 = m23 or 0.
			o.m31 = m31 or 0.
			o.m32 = m32 or 0.
			o.m33 = m33 or 0.
			return o
		end,

		-- Copy matrix from another
		-- @return Matrix3
		copyFrom = function(self, that)
			local o = {}
			setmetatable(o,self)
			o.m11 = that.m11
			o.m12 = that.m12
			o.m13 = that.m13
			o.m21 = that.m21
			o.m22 = that.m22
			o.m23 = that.m23
			o.m31 = that.m31
			o.m32 = that.m32
			o.m33 = that.m33
			return o
		end,

		-- Create a new identity matrix
		-- @return Matrix3
		newIdentity = function(self)
			local o = {}
			setmetatable(o,self)
			o.m11 = 1.
			o.m12 = 0.
			o.m13 = 0.
			o.m21 = 0.
			o.m22 = 1.
			o.m23 = 0.
			o.m31 = 0.
			o.m32 = 0.
			o.m33 = 1.
			return o
		end,

		-- Create a new scaling matrix
		-- @return Matrix3
		newScaling = function(self, scaleX, scaleY, scaleZ)
			local o = {}
			setmetatable(o,self)
			o.m11 = scaleX or 1.
			o.m12 = 0.
			o.m13 = 0.
			o.m21 = 0.
			o.m22 = scaleY or 1.
			o.m23 = 0.
			o.m31 = 0.
			o.m32 = 0.
			o.m33 = scaleZ or 1.
			return o
		end,

		-- Create a new scaling matrix
		-- @return Matrix3
		-- @see https://en.wikipedia.org/wiki/Scaling_(geometry)
		newScaling = function(self, scaleX, scaleY, scaleZ)
			return Matrix3:new(
					scaleX or 1., 0., 0.,
					0., scaleY or 1., 0.,
					0., 0., scaleZ or 1.
			)
		end,

		-- Create a new rotation X matrix from the angle (in radians)
		-- @return Matrix3
		-- @see https://en.wikipedia.org/wiki/Rotation_matrix
		newRotationX = function(self, a)
			return Matrix3:new(
					1., 0., 0.,
					0., math.cos(a), -math.sin(a),
					0., math.sin(a), math.cos(a)
			)
		end,

		-- Create a new rotation Y matrix from the angle (in radians)
		-- @return Matrix3
		-- @see https://en.wikipedia.org/wiki/Rotation_matrix
		newRotationY = function(self, a)
			return Matrix3:new(
					math.cos(a), 0., math.sin(a),
					0., 1., 0.,
					-math.sin(a), 0., math.cos(a)
			)
		end,

		-- Create a new rotation Z matrix from the angle (in radians)
		-- @return Matrix3
		-- @see https://en.wikipedia.org/wiki/Rotation_matrix
		newRotationZ = function(self, a)
			return Matrix3:new(
					math.cos(a), -math.sin(a), 0.,
					math.sin(a), math.cos(a), 0.,
					0., 0., 1.
			)
		end,

		-- Create a new axis rotation matrix from the vector and angle (in radians)
		-- @param v Vector3
		-- @param a number
		-- @return Matrix3
		-- @see
		newRotationAxis = function(self, v, a)
			local cosa = math.cos(a)
			local sina = math.sin(a)
			return Matrix3:new(
					cosa+(1.-cosa)*v.x*v.x,
					(1.-cosa)*v.x*v.y-sina*v.z,
					(1.-cosa)*v.x*v.z+sina*v.y,

					(1.-cosa)*v.y*v.x+sina*v.z,
					cosa+(1.-cosa)*v.y*v.y,
					(1.-cosa)*v.y*v.z-sina*v.x,

					(1.-cosa)*v.z*v.x-sina*v.y,
					(1.-cosa)*v.z*v.y+sina*v.x,
					cosa+(1.-cosa)*v.z*v.z
			)
		end,

		-- Create a new rotation matrix from the yaw-pitch-roll vector
		-- @param v Vector3 where x = yaw, y = pitch, z = roll
		-- @return Matrix3
		-- @see https://en.wikipedia.org/wiki/Aircraft_principal_axes
		newRotationYawPitchRoll = function(self, v)
			local cosa = math.cos(v.x)
			local sina = math.sin(v.x)
			local cosb = math.cos(v.y)
			local sinb = math.sin(v.y)
			local cosy = math.cos(v.z)
			local siny = math.sin(v.z)
			return Matrix3:new(
					cosa*cosb,
					cosa*sinb*siny-sina*cosy,
					cosa*sinb*cosy+sina*siny,

					sina*cosb,
					sina*sinb*siny+cosa*cosy,
					sina*sinb*cosy-cosa*siny,

					-sinb,
					cosb*siny,
					cosb*cosy
			)
		end,

		__eq = function(self, that)
			return self.m11 == that.m11 and self.m12 == that.m12 and self.m13 == that.m13
					and self.m21 == that.m21 and self.m22 == that.m22 and self.m23 == that.m23
					and self.m31 == that.m31 and self.m32 == that.m32 and self.m33 == that.m33
		end,

		-- Matrix multiplication
		__mul = function(self, that)
			return Matrix3:new(
					self.m11*that.m11+self.m21*that.m12+self.m31*that.m13,
					self.m12*that.m11+self.m22*that.m12+self.m32*that.m13,
					self.m13*that.m11+self.m23*that.m12+self.m33*that.m13,

					self.m11*that.m21+self.m21*that.m22+self.m31*that.m23,
					self.m12*that.m21+self.m22*that.m22+self.m32*that.m23,
					self.m13*that.m21+self.m23*that.m22+self.m33*that.m23,

					self.m11*that.m31+self.m21*that.m32+self.m31*that.m33,
					self.m12*that.m31+self.m22*that.m32+self.m32*that.m33,
					self.m13*that.m31+self.m23*that.m32+self.m33*that.m33
			)
		end,

		__tostring = function(self)
			return "{ \n  " .. tostring(self.m11) .. ", " .. tostring(self.m12) .. ", " .. tostring(self.m13) .. "\n"
					.. "  " .. tostring(self.m21) .. ", " .. tostring(self.m22) .. ", " .. tostring(self.m23) .. "\n"
					.. "  " .. tostring(self.m31) .. ", " .. tostring(self.m32) .. ", " .. tostring(self.m33) .. "\n}"
		end,
	}
	Matrix3.__index = Matrix3




	-- 4x4 Matrix ====================
	Matrix4 = {
		-- m11, m12, m13, m14
		-- m21, m22, m23, m24
		-- m31, m32, m33, m34
		-- m41, m42, m43, m44

		-- Create a new matrix from coords. Skip coords to create a zero matrix
		-- @return Matrix4
		new = function(self,
		               m11, m12, m13, m14,
		               m21, m22, m23, m24,
		               m31, m32, m33, m34,
		               m41, m42, m43, m44
		)
			local o = {}
			setmetatable(o,self)
			o.m11 = m11 or 0.
			o.m12 = m12 or 0.
			o.m13 = m13 or 0.
			o.m14 = m14 or 0.
			o.m21 = m21 or 0.
			o.m22 = m22 or 0.
			o.m23 = m23 or 0.
			o.m24 = m24 or 0.
			o.m31 = m31 or 0.
			o.m32 = m32 or 0.
			o.m33 = m33 or 0.
			o.m34 = m34 or 0.
			o.m41 = m41 or 0.
			o.m42 = m42 or 0.
			o.m43 = m43 or 0.
			o.m44 = m44 or 0.
			return o
		end,

		-- Copy matrix from another 4x4 matrix
		-- @param Matrix4 that
		-- @return Matrix4
		copyFrom = function(self, that)
			local o = {}
			setmetatable(o,self)
			o.m11 = that.m11
			o.m12 = that.m12
			o.m13 = that.m13
			o.m14 = that.m14
			o.m21 = that.m21
			o.m22 = that.m22
			o.m23 = that.m23
			o.m24 = that.m24
			o.m31 = that.m31
			o.m32 = that.m32
			o.m33 = that.m33
			o.m34 = that.m34
			o.m41 = that.m41
			o.m42 = that.m42
			o.m43 = that.m43
			o.m44 = that.m44
			return o
		end,

		-- Creates a 4x4 matrix from 3x3 matrix
		-- @param Matrix3 that
		-- @return Matrix4
		copyFrom3 = function(self, that)
			local o = {}
			setmetatable(o,self)
			o.m11 = that.m11
			o.m12 = that.m12
			o.m13 = that.m13
			o.m14 = 0.
			o.m21 = that.m21
			o.m22 = that.m22
			o.m23 = that.m23
			o.m24 = 0.
			o.m31 = that.m31
			o.m32 = that.m32
			o.m33 = that.m33
			o.m34 = 0.
			o.m41 = 0.
			o.m42 = 0.
			o.m43 = 0.
			o.m44 = 1.
			return o
		end,

		-- Create a new identity matrix
		-- @return Matrix4
		newIdentity = function(self)
			local o = {}
			setmetatable(o,self)
			o.m11 = 1.
			o.m12 = 0.
			o.m13 = 0.
			o.m14 = 0.
			o.m21 = 0.
			o.m22 = 1.
			o.m23 = 0.
			o.m24 = 0.
			o.m31 = 0.
			o.m32 = 0.
			o.m33 = 1.
			o.m34 = 0.
			o.m41 = 0.
			o.m42 = 0.
			o.m43 = 0.
			o.m44 = 1.
			return o
		end,


		__eq = function(self, that)
			return self.m11 == that.m11 and self.m12 == that.m12 and self.m13 == that.m13 and self.m14 == that.m14
					and self.m21 == that.m21 and self.m22 == that.m22 and self.m23 == that.m23 and self.m24 == that.m24
					and self.m31 == that.m31 and self.m32 == that.m32 and self.m33 == that.m33 and self.m34 == that.m34
					and self.m41 == that.m41 and self.m42 == that.m42 and self.m43 == that.m43 and self.m44 == that.m44
		end,

		-- Matrix multiplication
		__mul = function(self, that)
			return Matrix4:new(
					self.m11*that.m11+self.m21*that.m12+self.m31*that.m13+self.m41*that.m14,
					self.m12*that.m11+self.m22*that.m12+self.m32*that.m13+self.m42*that.m14,
					self.m13*that.m11+self.m23*that.m12+self.m33*that.m13+self.m43*that.m14,
					self.m14*that.m11+self.m24*that.m12+self.m34*that.m13+self.m44*that.m14,

					self.m11*that.m21+self.m21*that.m22+self.m31*that.m23+self.m41*that.m24,
					self.m12*that.m21+self.m22*that.m22+self.m32*that.m23+self.m42*that.m24,
					self.m13*that.m21+self.m23*that.m22+self.m33*that.m23+self.m43*that.m24,
					self.m14*that.m21+self.m24*that.m22+self.m34*that.m23+self.m44*that.m24,

					self.m11*that.m31+self.m21*that.m32+self.m31*that.m33+self.m41*that.m34,
					self.m12*that.m31+self.m22*that.m32+self.m32*that.m33+self.m42*that.m34,
					self.m13*that.m31+self.m23*that.m32+self.m33*that.m33+self.m43*that.m34,
					self.m14*that.m31+self.m24*that.m32+self.m34*that.m33+self.m44*that.m34,

					self.m11*that.m41+self.m21*that.m42+self.m31*that.m43+self.m41*that.m44,
					self.m12*that.m41+self.m22*that.m42+self.m32*that.m43+self.m42*that.m44,
					self.m13*that.m41+self.m23*that.m42+self.m33*that.m43+self.m43*that.m44,
					self.m14*that.m41+self.m24*that.m42+self.m34*that.m43+self.m44*that.m44
			)
		end,

		__tostring = function(self)
			return "{ \n  "..tostring(self.m11)..", "..tostring(self.m12)..", "..tostring(self.m13)..", "..tostring(self.m14).."\n"
					.."  "..tostring(self.m21)..", "..tostring(self.m22)..", "..tostring(self.m23)..", "..tostring(self.m24).."\n"
					.."  "..tostring(self.m31)..", "..tostring(self.m32)..", "..tostring(self.m33)..", "..tostring(self.m34).."\n"
					.."  "..tostring(self.m41)..", "..tostring(self.m42)..", "..tostring(self.m43)..", "..tostring(self.m44).."\n}"
		end,
	}
	Matrix4.__index = Matrix4




	-- Projections ====================
	-- Screen aspect ratio
	local screenWidth = 0.544
	local screenHeight = 0.302
	local radToDeg = 180.0 / math.pi
	local degToRad = math.pi / 180.0

	-- Builds a perspective projection matrix based on a field of view.
	-- @return Matrix4
	-- @see https://docs.microsoft.com/en-us/windows/win32/direct3d9/d3dxmatrixperspectivefovlh
	local matrix4perspective1 = function(fovy, Aspect, zn, zf)
		return Matrix4:new(2*zn/fovy,0,0,0,0,2*zn/Aspect,0,0,0,0,zf/(zf-zn),1,0,0,zn*zf/(zn-zf),0)
	end

	-- Builds a customized perspective projection matrix
	-- @return Matrix4
	-- @see https://docs.microsoft.com/en-us/windows/win32/direct3d9/d3dxmatrixperspectiveoffcenterlh
	local matrix4Perspective2 = function(n, f, r, l, t, b)
		return Matrix4:new(2*n/(r-l), 0, (r+l)/(r-l), 0, 0, 2*n/(t-b), (t+b)/(t-b), 0, 0, 0, -(f+n)/(f-n), -2*f*n/(f-n), 0, 0, -1, 0)
	end

	-- Builds a look-at matrix
	-- @param PosCamera Vector3
	-- @param AxisX Vector3
	-- @param AxisY Vector3
	-- @param AxisZ Vector3
	-- @return Matrix4
	-- @see https://docs.microsoft.com/en-us/windows/win32/direct3d9/d3dxmatrixlookatlh
	local matrix4Look = function(PosCamera, AxisX, AxisY, AxisZ)
		return Matrix4:new(AxisX.x,AxisY.x,AxisZ.x,0,AxisX.y,AxisY.y,AxisZ.y,0,AxisX.z,AxisY.z,AxisZ.z,0,-AxisX:dotProduct(PosCamera),-AxisY:dotProduct(PosCamera),-AxisZ:dotProduct(PosCamera),1)
	end



	-- Camera ====================
	-- Game camera projection state with eye and target
	-- @see https://knowledge.autodesk.com/support/3ds-max/learn-explore/caas/CloudHelp/cloudhelp/2017/ENU/3DSMax/files/GUID-B1F4F126-65AC-4CB6-BDC3-02799A0BAEF3-htm.html
	Camera = {

		-- Creates a new camera
		-- @param initialZ initial z-offset (optional), can be retrieved from GetCameraTargetPositionZ()
		new = function(self, initialZ)
			local o = {}
			setmetatable(o,self)
			o.changed = false
			o.initialZ = initialZ or 0.
			o.eye = Vector3:new(0.0, -922.668, o.initialZ+1367.912)
			o.target = Vector3:new(0, 0, o.initialZ)
			o.distance = 0.
			o.yaw = 0.
			o.pitch = 0.
			o.roll = 0.
			o.axisX = Vector3:new()
			o.axisY = Vector3:new()
			o.axisZ = Vector3:new()
			o.view = Matrix4:new()
			o.projection = matrix4Perspective2(0.5, 10000, -screenWidth/2, screenWidth/2, -screenHeight/2, screenHeight/2)
			o:_updateDistanceYawPitch()
			o:_updateAxisMatrix()

			return o
		end,

		-- Converts window coordinate to world coordinate
		-- @param v Vector3 where x and y - window coords and z - overlay range
		-- @return Vector3
		windowToWorld = function(self, v)
			return Vector3:new(
					self.eye.x+self.axisZ.x*v.z+v.x*self.axisX.x*screenWidth*v.z+v.y*self.axisY.x*screenHeight*v.z,
					self.eye.y+self.axisZ.y*v.z+v.x*self.axisX.y*screenWidth*v.z+v.y*self.axisY.y*screenHeight*v.z,
					self.eye.z+self.axisZ.z*v.z+v.x*self.axisX.z*screenWidth*v.z+v.y*self.axisY.z*screenHeight*v.z
			)
		end,

		-- Converts world coordinate to window coordinate
		-- @param v Vector3
		-- @return Vector3
		worldToWindow = function(self, v)
			v = v:transform4(self.view):transform4(self.projection)
			v.z = math.abs(v.z)
			return v
		end,

		-- @param v Vector3
		setPosition = function(self, v)
			self.eye = self.eye + (v - self.target)
			self.target = Vector3:newFrom(v)
			self.changed = true
		end,

		-- @param eye Vector3
		-- @param target Vector3
		setEyeAndTarget = function(self, eye, target)
			self.eye = Vector3:newFrom(eye)
			self.target = Vector3:newFrom(target)
			self:_updateDistanceYawPitch()
			self:_updateAxisMatrix()
			self.changed = true
		end,

		-- @param v Vector3 where x = yaw, y = pitch, z = roll
		-- @param eyeLock boolean - move target instead of eye
		setYawPitchRoll = function(self, v, eyeLock)
			local XY = self.distance*math.cos(v.y)
			local modifier = Vector3:new(
					XY*math.cos(v.x),
					XY*math.sin(v.x),
					self.distance*math.sin(v.y)
			)
			self.yaw = v.x
			self.pitch = v.y
			self.roll = v.z
			if(eyeLock) then
				self.target = self.eye + modifier
			else
				self.eye = self.target - modifier
			end
			self:_updateAxisMatrix()
			self.changed = true
		end,

		-- uses warcraft native functions
		-- @param thePlayer Player
		-- @param skipChangedFlag boolean. Set to true to deny .changed flag unsetting
		applyCameraToPlayer = function(self, thePlayer, skipChangedFlag)
			if(GetLocalPlayer() == thePlayer) then
				SetCameraField(CAMERA_FIELD_ROTATION, self.yaw*radToDeg, 0)
				SetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK, self.pitch*radToDeg, 0)
				SetCameraField(CAMERA_FIELD_ROLL, self.roll*radToDeg, 0)
				SetCameraField(CAMERA_FIELD_TARGET_DISTANCE, self.distance, 0)
				-- call SetCameraTargetController(AtUnit, self.target.x, self.target.y, false)
				SetCameraField(CAMERA_FIELD_ZOFFSET, self.target.z-self.initialZ, 0)
			end
			if(not skipChangedFlag) then
				self.changed = false
			end
		end,

		-- internal use methods
		_updateDistanceYawPitch = function(self)
			local delta = (self.target - self.eye)
			self.distance = delta:length()
			self.yaw = Atan2(delta.y, delta.x)
			self.pitch = Atan2(delta.z, delta:length2d())
		end,

		_updateAxisMatrix = function(self)
			self.axisZ = (self.target - self.eye):normalize()
			local mRotation = Matrix3:newRotationAxis(self.axisZ, -self.roll)
			self.axisX = self.axisZ:crossProduct(Vector3:newUp()):normalize()
			self.axisY = self.axisX:crossProduct(self.axisZ):transform3(mRotation)
			self.axisX = self.axisX:transform3(mRotation)
			self.view = matrix4Look(self.eye, self.axisX, self.axisY, self.axisZ)
		end
	}
	Camera.__index = Camera

	local wGeometry = {
		Functions = Functions,
		Vector3 = Vector3,
		Matrix3 = Matrix3,
		Matrix4 = Matrix4,
		matrix4perspective1 = matrix4perspective1,
		matrix4Perspective2 = matrix4Perspective2,
		matrix4Look = matrix4Look,
		Camera = Camera,
		unlockUnitZ = unlockUnitZ
	}
	exportDefault(wGeometry)
	export(wGeometry)
end)
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 27.03.2020 22:59
---
function AfterAttack(hero, delay)
	TimerStart(CreateTimer(), delay, false, function()
		local x,y=MoveXY(GetUnitX(hero),GetUnitY(hero),70,GetUnitFacing(hero))
		local data=HERO[GetPlayerId(GetOwningPlayer(hero))]
		data.Reflection=false
		if UnitDamageArea(hero,BlzGetUnitBaseDamage(hero,0),x,y,70) then
			data.RevoltSec=0
		end
	end)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 28.03.2020 1:00
---
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
			if GetUnitTypeId(CollisionUnit)==FourCC('o001') then
				if data.IsWood then
					local k=1
					if data.Perk1 then
						k=k+1
					end
					data.SingleWoodCount=data.SingleWoodCount+k
					--print(data.SingleWoodCount)
					if data.SingleWoodCount>=25 then
						data.Perk1=true
						if GetLocalPlayer()==GetOwningPlayer(hero) then
							BlzFrameSetVisible(PerkIsLock[1],false)
						end
					end
					HealUnit(hero,1000)
					AddLumber(k,hero)
					MoveWoodAsFarm(hero,k)
					UnitAddItemById(hero,FourCC('I000'))-- ускорение

					--CreateItem(FourCC('I000'),0,0)
				end
			end
			if GetUnitTypeId(CollisionUnit)==FourCC('e002') then

				if not data.IsWood then
					--print("звук подбора")
					PlaySoundAtPointBJ( gg_snd_Load, 100, RemoveLocation(Location(GetUnitXY(hero))), 0 )
					KillUnit(CollisionUnit)
					data.IsWood=true
				end
			end
			if GetUnitTypeId(CollisionUnit)==FourCC('n001') then -- овца
				SetUnitExploded(CollisionUnit,true)
				local data=AnyData[GetHandleId(CollisionUnit)]
				local x,y=data.x,data.y
				local nx,ny=GetUnitXY(CollisionUnit)
				UnitDamageArea(CollisionUnit,100,nx,ny,150)
				DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\Mortar\\MortarMissile",nx,ny))
				KillUnit(CollisionUnit)
				TimerStart(CreateTimer(), 30, false, function()
					local new =CreateUnit(Player(PLAYER_NEUTRAL_AGGRESSIVE), FourCC('n001'), x, y, 0)
					AnyData[GetHandleId(new)]={
						x=x,
						y=y,
					}
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
		data.IsWood=false
	end
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 28.03.2020 0:41
---
function ResetPeonAnimation (hero)
	local ra=GetRandomInt(0,4)
	if ra==0 then
		SetUnitAnimationByIndex(hero,0)
	elseif ra==1 then
		SetUnitAnimationByIndex(hero,9)
	elseif ra==2 then
		SetUnitAnimationByIndex(hero,12)
	elseif ra==3 then
		SetUnitAnimationByIndex(hero,13)
	elseif ra==4 then
		SetUnitAnimationByIndex(hero,14)
	end
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 28.03.2020 2:06

function InitAllZones()
	EntInTrees()-- превращаем энтов в деревья
	StartAllSaw()
	WolfAttack()
	SetSheepPoint()
end

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 29.03.2020 15:46
---
function EntInTrees()
	local e=nil
	local id=FourCC('e001')
	TimerStart(CreateTimer(), 20, true, function()
		GroupEnumUnitsInRect(perebor,bj_mapInitialPlayableArea,nil)
		while true do
			e = FirstOfGroup(perebor)

			if e == nil then break end
			if UnitAlive(e) and GetUnitTypeId(e)==id then
				local x,y=GetUnitXY(e)
				KillUnit(e)
				DestroyEffect(AddSpecialEffect("",x,y))
				CreateDestructable(FourCC('LTlt'),x,y,0,GetRandomInt(1,1),GetRandomInt(1,3))
				local range=150
				TimerStart(CreateTimer(), 10, false, function()
					SetRect(GlobalRect, x - range, y - range, x + range, y +range)
					EnumDestructablesInRect(GlobalRect,nil,function ()
						local d=GetEnumDestructable()
						if GetDestructableTypeId(d)==FourCC('LTlt') then
							if GetDestructableLife(d)>0 then
								KillDestructable(d)
								local new=CreateUnit(Player(10), FourCC('e001'), GetDestructableX(d), GetDestructableY(d), 0)
								SetUnitAnimation(new,"birth")
							end
						end
					end)
				end)
			end
			GroupRemoveUnit(perebor,e)
		end

	end)


end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 06.04.2020 3:31
--FourCC('o002')
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 21.02.2020 23:45
---

SawDiskModel="Chakram_02.mdl"--"Abilities\\Weapons\\SentinelMissile\\SentinelMissile.mdl"
SawChainModel="abilities\\weapons\\wyvernspear\\wyvernspearmissile.mdl"
CollisionEffect="Abilities/Weapons/AncestralGuardianMissile/AncestralGuardianMissile.mdl"
function CreateRoundSawZ(hero,ChainCount,angle,z)
	local xs,ys=GetUnitXY(hero)
	local saw=AddSpecialEffect(SawDiskModel,xs,ys)
	local chain={}
	local step=60
	local SpeedRandomFactor=GetRandomReal(-1,1)
	local speed=3+SpeedRandomFactor
	if z==nil then z=GetUnitZ(hero)+30 end
	if angle==nil then angle=0 end
	for i=1,ChainCount do
		chain[i]=AddSpecialEffect(SawChainModel,xs,ys)
		--print("создан кусок цепи "..i)
	end
	-- установки
	BlzSetSpecialEffectScale(saw,0.9)

	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		local x,y=0,0
		local OnDamage=false
		local ReflectorUnit=nil
		for i=1,ChainCount do
			x,y=MoveXY(xs,ys,step*i,angle)
			BlzSetSpecialEffectPosition(chain[i],x,y,z)
			BlzSetSpecialEffectYaw(chain[i],math.rad(angle))
		end
		local nx,ny=MoveXY(xs,ys,step*ChainCount,angle)
		BlzSetSpecialEffectPosition(saw,nx,ny,z)
		OnDamage,ReflectorUnit=UnitDamageArea(hero,20,nx,ny,150,z-90,CollisionEffect)
		if OnDamage and IsUnitType(ReflectorUnit,UNIT_TYPE_HERO) then
			local data=HERO[GetPlayerId(GetOwningPlayer(ReflectorUnit))]
			if data.Reflection then
				speed=speed*(-1)
			end
		end
		angle=angle+speed
		if UnitAlive(hero)==false then
			DestroyTimer(GetExpiredTimer()) -- временно вечный таймер
			DestroyEffect(saw)
			for i=1,ChainCount do
				DestroyEffect(chain[i])
			end
		end
	end)
end


function CreateGroundSaw(hero,angle,z)
	local xs,ys=GetUnitXY(hero)
	local saw=AddSpecialEffect(SawDiskModel,xs,ys)
	BlzSetSpecialEffectRoll(saw,math.rad(90))
	BlzSetSpecialEffectYaw(saw,math.rad(angle))
	if z==nil then z=GetUnitZ(hero)+60 end
	BlzSetSpecialEffectScale(saw,0.9)
	BlzSetSpecialEffectZ(saw,z)
	local step=10
	local i=0
	local turn=false
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		local x,y=0,0

		local OnDamage=false
		local ReflectorUnit=nil


		if OnDamage and IsUnitType(ReflectorUnit,UNIT_TYPE_HERO) then
			local data=HERO[GetPlayerId(GetOwningPlayer(ReflectorUnit))]
			if data.Reflection then
				speed=speed*(-1)
			end
		end


		if not turn then
			i=i+1
		else
			i=i-1
		end
		--print(i)
		x,y=MoveXY(xs,ys,step*i,angle)
		BlzSetSpecialEffectPosition(saw,x,y,z)
		OnDamage,ReflectorUnit=UnitDamageArea(hero,20,x,y,60,z-90,CollisionEffect)
		local nx,ny=MoveXY(x,y,60,angle)
		UnitDamageArea(hero,20,nx,ny,60,z-90,CollisionEffect)
		nx,ny=MoveXY(x,y,-60,angle)
		UnitDamageArea(hero,20,nx,ny,60,z-90,CollisionEffect)

		if OnDamage and IsUnitType(ReflectorUnit,UNIT_TYPE_HERO) then
			local data=HERO[GetPlayerId(GetOwningPlayer(ReflectorUnit))]
			if data.Reflection then
				if i<=50 then
					turn=true
				else
					turn=false
				end
			end
		end



		if i==100 then
			turn=true
		end
		if i==0 then
			turn=false
		end
		end)
end


function StartAllSaw()
	local e--временный юнит
	local k=0
	local id=FourCC('h001') -- колонная с пилой
	local idg=FourCC('e004') --
	GroupEnumUnitsInRect(perebor,bj_mapInitialPlayableArea,nil)
	while true do
		e = FirstOfGroup(perebor)
		if e == nil then break end
		if UnitAlive(e) and GetUnitTypeId(e)==id then
			--k=k+1
			CreateRoundSawZ(e,6,GetRandomInt(0,360))
		end
		if UnitAlive(e) and GetUnitTypeId(e)==idg then
			k=k+1
			CreateGroundSaw(e,GetUnitFacing(e))
			ShowUnit(e,false)
			--KillUnit(e)
		end
		GroupRemoveUnit(perebor,e)
	end
	--print("Запущено пил: "..k)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 05.04.2020 20:00
AnyData={}
function SetSheepPoint(id,flag,x,y)
	local e=nil
	local id=FourCC('n001')
		GroupEnumUnitsInRect(perebor,bj_mapInitialPlayableArea,nil)
		while true do
			e = FirstOfGroup(perebor)

			if e == nil then break end
			if UnitAlive(e) and GetUnitTypeId(e)==id then
				--print("set")
				AnyData[GetHandleId(e)]={
					x=GetUnitX(e),
					y=GetUnitY(e),
				}
			end
			GroupRemoveUnit(perebor,e)
		end
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 05.04.2020 18:56
function WolfAttack()
	TimerStart(CreateTimer(), 60, true, function()
		local x,y=GetRectCenterX(gg_rct_WalkSpawnZone),GetRectCenterY(gg_rct_WalkSpawnZone)
		local wolf=CreateUnit(Player(10), FourCC('n000'), x, y, 0)
		IssuePointOrder(wolf,"attack",0,0)
	end)
end
--CUSTOM_CODE
function Trig_GuiInit_Func003A()
    IssueTargetDestructableOrder(GetEnumUnit(), "harvest", gg_dest_LTlt_0364)
end

function Trig_GuiInit_Func004A()
    SetDestructableMaxLifeBJ(GetEnumDestructable(), 100.00)
end

function Trig_GuiInit_Actions()
    SetUnitAnimation(gg_unit_o001_0001, "stand work")
    CreateFogModifierRectBJ(true, Player(10), FOG_OF_WAR_VISIBLE, gg_rct_Region_003)
    ForGroupBJ(GetUnitsInRectAll(gg_rct_Workers), Trig_GuiInit_Func003A)
    EnumDestructablesInRectAll(gg_rct_Region_005, Trig_GuiInit_Func004A)
end

function InitTrig_GuiInit()
    gg_trg_GuiInit = CreateTrigger()
    TriggerAddAction(gg_trg_GuiInit, Trig_GuiInit_Actions)
end

function Trig_DeadHumanLumber_Actions()
    KillDestructable(gg_dest_LTlt_0097)
end

function InitTrig_DeadHumanLumber()
    gg_trg_DeadHumanLumber = CreateTrigger()
    TriggerRegisterUnitEvent(gg_trg_DeadHumanLumber, gg_unit_hlum_0057, EVENT_UNIT_DEATH)
    TriggerAddAction(gg_trg_DeadHumanLumber, Trig_DeadHumanLumber_Actions)
end

function InitCustomTriggers()
    InitTrig_GuiInit()
    InitTrig_DeadHumanLumber()
end

function RunInitializationTriggers()
    ConditionalTriggerExecute(gg_trg_GuiInit)
end

function InitCustomPlayerSlots()
    SetPlayerStartLocation(Player(0), 0)
    ForcePlayerStartLocation(Player(0), 0)
    SetPlayerColor(Player(0), ConvertPlayerColor(0))
    SetPlayerRacePreference(Player(0), RACE_PREF_ORC)
    SetPlayerRaceSelectable(Player(0), false)
    SetPlayerController(Player(0), MAP_CONTROL_USER)
    SetPlayerStartLocation(Player(1), 1)
    ForcePlayerStartLocation(Player(1), 1)
    SetPlayerColor(Player(1), ConvertPlayerColor(1))
    SetPlayerRacePreference(Player(1), RACE_PREF_ORC)
    SetPlayerRaceSelectable(Player(1), false)
    SetPlayerController(Player(1), MAP_CONTROL_USER)
    SetPlayerStartLocation(Player(2), 2)
    ForcePlayerStartLocation(Player(2), 2)
    SetPlayerColor(Player(2), ConvertPlayerColor(2))
    SetPlayerRacePreference(Player(2), RACE_PREF_ORC)
    SetPlayerRaceSelectable(Player(2), false)
    SetPlayerController(Player(2), MAP_CONTROL_USER)
    SetPlayerStartLocation(Player(3), 3)
    ForcePlayerStartLocation(Player(3), 3)
    SetPlayerColor(Player(3), ConvertPlayerColor(3))
    SetPlayerRacePreference(Player(3), RACE_PREF_ORC)
    SetPlayerRaceSelectable(Player(3), false)
    SetPlayerController(Player(3), MAP_CONTROL_USER)
    SetPlayerStartLocation(Player(4), 4)
    ForcePlayerStartLocation(Player(4), 4)
    SetPlayerColor(Player(4), ConvertPlayerColor(4))
    SetPlayerRacePreference(Player(4), RACE_PREF_NIGHTELF)
    SetPlayerRaceSelectable(Player(4), false)
    SetPlayerController(Player(4), MAP_CONTROL_COMPUTER)
    SetPlayerStartLocation(Player(5), 5)
    ForcePlayerStartLocation(Player(5), 5)
    SetPlayerColor(Player(5), ConvertPlayerColor(5))
    SetPlayerRacePreference(Player(5), RACE_PREF_ORC)
    SetPlayerRaceSelectable(Player(5), false)
    SetPlayerController(Player(5), MAP_CONTROL_COMPUTER)
end

function InitCustomTeams()
    SetPlayerTeam(Player(0), 0)
    SetPlayerTeam(Player(1), 0)
    SetPlayerTeam(Player(2), 0)
    SetPlayerTeam(Player(3), 0)
    SetPlayerTeam(Player(5), 0)
    SetPlayerAllianceStateAllyBJ(Player(0), Player(1), true)
    SetPlayerAllianceStateAllyBJ(Player(0), Player(2), true)
    SetPlayerAllianceStateAllyBJ(Player(0), Player(3), true)
    SetPlayerAllianceStateAllyBJ(Player(0), Player(5), true)
    SetPlayerAllianceStateAllyBJ(Player(1), Player(0), true)
    SetPlayerAllianceStateAllyBJ(Player(1), Player(2), true)
    SetPlayerAllianceStateAllyBJ(Player(1), Player(3), true)
    SetPlayerAllianceStateAllyBJ(Player(1), Player(5), true)
    SetPlayerAllianceStateAllyBJ(Player(2), Player(0), true)
    SetPlayerAllianceStateAllyBJ(Player(2), Player(1), true)
    SetPlayerAllianceStateAllyBJ(Player(2), Player(3), true)
    SetPlayerAllianceStateAllyBJ(Player(2), Player(5), true)
    SetPlayerAllianceStateAllyBJ(Player(3), Player(0), true)
    SetPlayerAllianceStateAllyBJ(Player(3), Player(1), true)
    SetPlayerAllianceStateAllyBJ(Player(3), Player(2), true)
    SetPlayerAllianceStateAllyBJ(Player(3), Player(5), true)
    SetPlayerAllianceStateAllyBJ(Player(5), Player(0), true)
    SetPlayerAllianceStateAllyBJ(Player(5), Player(1), true)
    SetPlayerAllianceStateAllyBJ(Player(5), Player(2), true)
    SetPlayerAllianceStateAllyBJ(Player(5), Player(3), true)
    SetPlayerAllianceStateVisionBJ(Player(0), Player(1), true)
    SetPlayerAllianceStateVisionBJ(Player(0), Player(2), true)
    SetPlayerAllianceStateVisionBJ(Player(0), Player(3), true)
    SetPlayerAllianceStateVisionBJ(Player(0), Player(5), true)
    SetPlayerAllianceStateVisionBJ(Player(1), Player(0), true)
    SetPlayerAllianceStateVisionBJ(Player(1), Player(2), true)
    SetPlayerAllianceStateVisionBJ(Player(1), Player(3), true)
    SetPlayerAllianceStateVisionBJ(Player(1), Player(5), true)
    SetPlayerAllianceStateVisionBJ(Player(2), Player(0), true)
    SetPlayerAllianceStateVisionBJ(Player(2), Player(1), true)
    SetPlayerAllianceStateVisionBJ(Player(2), Player(3), true)
    SetPlayerAllianceStateVisionBJ(Player(2), Player(5), true)
    SetPlayerAllianceStateVisionBJ(Player(3), Player(0), true)
    SetPlayerAllianceStateVisionBJ(Player(3), Player(1), true)
    SetPlayerAllianceStateVisionBJ(Player(3), Player(2), true)
    SetPlayerAllianceStateVisionBJ(Player(3), Player(5), true)
    SetPlayerAllianceStateVisionBJ(Player(5), Player(0), true)
    SetPlayerAllianceStateVisionBJ(Player(5), Player(1), true)
    SetPlayerAllianceStateVisionBJ(Player(5), Player(2), true)
    SetPlayerAllianceStateVisionBJ(Player(5), Player(3), true)
    SetPlayerTeam(Player(4), 1)
end

function InitAllyPriorities()
    SetStartLocPrioCount(0, 2)
    SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_LOW)
    SetStartLocPrio(0, 1, 2, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(1, 2)
    SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_LOW)
    SetStartLocPrio(1, 1, 3, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(2, 2)
    SetStartLocPrio(2, 0, 0, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(2, 1, 3, MAP_LOC_PRIO_LOW)
    SetStartLocPrioCount(3, 2)
    SetStartLocPrio(3, 0, 1, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(3, 1, 2, MAP_LOC_PRIO_LOW)
    SetStartLocPrioCount(4, 6)
    SetStartLocPrio(4, 0, 0, MAP_LOC_PRIO_LOW)
    SetStartLocPrio(4, 1, 1, MAP_LOC_PRIO_LOW)
    SetStartLocPrio(4, 2, 2, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(4, 3, 3, MAP_LOC_PRIO_LOW)
    SetStartLocPrio(4, 4, 5, MAP_LOC_PRIO_HIGH)
    SetEnemyStartLocPrioCount(4, 4)
    SetEnemyStartLocPrio(4, 0, 0, MAP_LOC_PRIO_LOW)
    SetEnemyStartLocPrio(4, 1, 1, MAP_LOC_PRIO_HIGH)
    SetEnemyStartLocPrio(4, 2, 2, MAP_LOC_PRIO_HIGH)
    SetEnemyStartLocPrio(4, 3, 3, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(5, 1)
    SetStartLocPrio(5, 0, 3, MAP_LOC_PRIO_HIGH)
end

function main()
    SetCameraBounds(-3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -3072.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 3584.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 3584.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -3072.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    NewSoundEnvironment("Default")
    SetAmbientDaySound("LordaeronSummerDay")
    SetAmbientNightSound("LordaeronSummerNight")
    SetMapMusic("Music", true, 0)
    InitSounds()
    CreateRegions()
    CreateAllDestructables()
    CreateAllUnits()
    InitBlizzard()
    InitGlobals()
    InitCustomTriggers()
    RunInitializationTriggers()
end

function config()
    SetMapName("TRIGSTR_001")
    SetMapDescription("TRIGSTR_003")
    SetPlayers(6)
    SetTeams(6)
    SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)
    DefineStartLocation(0, -128.0, -192.0)
    DefineStartLocation(1, -128.0, 0.0)
    DefineStartLocation(2, 0.0, -192.0)
    DefineStartLocation(3, 0.0, 0.0)
    DefineStartLocation(4, 960.0, -2560.0)
    DefineStartLocation(5, 0.0, 512.0)
    InitCustomPlayerSlots()
    InitCustomTeams()
    InitAllyPriorities()
end

