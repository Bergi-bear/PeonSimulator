udg_Lang = nil
udg_ru = {}
gg_rct_Winter = nil
gg_rct_Saws = nil
gg_rct_Region_002 = nil
gg_rct_TrentZone = nil
gg_rct_Workers = nil
gg_rct_Region_005 = nil
gg_rct_StoneZone = nil
gg_rct_KodoZone = nil
gg_rct_WalkSpawnZone = nil
gg_rct_SheepZone = nil
gg_rct_StoneZoneS = nil
gg_rct_Lava = nil
gg_rct_Region_012 = nil
gg_rct_MiniWater = nil
gg_rct_Morlok = nil
gg_rct_Region_015 = nil
gg_rct_Region_016 = nil
gg_rct_EnterCave = nil
gg_rct_EnterTown = nil
gg_rct_Region_019 = nil
gg_rct_Region_020 = nil
gg_snd_Load = nil
gg_snd_Reflect = nil
gg_snd_Saw = nil
gg_snd_Unlock = nil
gg_snd_SaveKodo = nil
gg_trg_In = nil
gg_trg_Out = nil
gg_trg_GuiInit = nil
gg_trg_Open = nil
gg_trg_DeadHumanLumber = nil
gg_unit_o001_0001 = nil
gg_unit_hlum_0057 = nil
gg_unit_n006_0217 = nil
gg_dest_LTlt_0097 = nil
gg_dest_LTlt_0364 = nil
gg_dest_DTlv_1234 = nil
function InitGlobals()
    local i = 0
    udg_Lang = DialogCreate()
end

function InitSounds()
    gg_snd_Load = CreateSound("Abilities/Spells/Other/LoadUnload/Loading.flac", false, true, true, 1, 1, "DefaultEAXON")
    SetSoundParamsFromLabel(gg_snd_Load, "LoadUnload")
    SetSoundDuration(gg_snd_Load, 740)
    SetSoundVolume(gg_snd_Load, 127)
    gg_snd_Reflect = CreateSound("Sound/Units/Combat/MetalLightSliceMetal1.flac", false, true, true, 1, 1, "DefaultEAXON")
    SetSoundParamsFromLabel(gg_snd_Reflect, "MetalLightSliceMetal")
    SetSoundDuration(gg_snd_Reflect, 375)
    SetSoundChannel(gg_snd_Reflect, 13)
    SetSoundVolume(gg_snd_Reflect, 95)
    SetSoundDistances(gg_snd_Reflect, 600.0, 3000.0)
    gg_snd_Saw = CreateSound("Buildings/Human/HumanLumberMill/HumanLumberMillWhat1.flac", false, true, true, 1, 1, "SpellsEAX")
    SetSoundParamsFromLabel(gg_snd_Saw, "HumanLumberMillWhat")
    SetSoundDuration(gg_snd_Saw, 2577)
    SetSoundChannel(gg_snd_Saw, 13)
    SetSoundVolume(gg_snd_Saw, 90)
    SetSoundDistances(gg_snd_Saw, 750.0, 3000.0)
    SetSoundDistanceCutoff(gg_snd_Saw, 3000.0)
    gg_snd_Unlock = CreateSound("Sound/Ambient/DoodadEffects/LargeCityGateOpen1.flac", false, true, true, 1, 1, "DefaultEAXON")
    SetSoundParamsFromLabel(gg_snd_Unlock, "GateOpenSound")
    SetSoundDuration(gg_snd_Unlock, 1445)
    SetSoundChannel(gg_snd_Unlock, 13)
    SetSoundVolume(gg_snd_Unlock, 127)
    gg_snd_SaveKodo = CreateSound("Sound/Dialogue/OrcCampaign/Orc02/O02Cairne11.flac", false, true, true, 1, 1, "DefaultEAXON")
    SetSoundParamsFromLabel(gg_snd_SaveKodo, "O02Cairne11")
    SetSoundDuration(gg_snd_SaveKodo, 4649)
    SetSoundVolume(gg_snd_SaveKodo, 120)
end

function CreateAllDestructables()
    local d
    local t
    local life
    gg_dest_DTlv_1234 = BlzCreateDestructableZWithSkin(FourCC("DTlv"), 672.0, -3744.0, 135.3, 314.433, 1.005, 0, FourCC("DTlv"))
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
    u = BlzCreateUnitWithSkin(p, FourCC("otrb"), 0.0, -512.0, 270.000, FourCC("otrb"))
    life = GetUnitState(u, UNIT_STATE_LIFE)
    SetUnitState(u, UNIT_STATE_LIFE, 0.60 * life)
    u = BlzCreateUnitWithSkin(p, FourCC("n003"), -32.0, -32.0, 270.000, FourCC("n003"))
    u = BlzCreateUnitWithSkin(p, FourCC("npgf"), 672.0, -96.0, 270.000, FourCC("npgf"))
    life = GetUnitState(u, UNIT_STATE_LIFE)
    SetUnitState(u, UNIT_STATE_LIFE, 0.70 * life)
    u = BlzCreateUnitWithSkin(p, FourCC("o003"), 384.0, 128.0, 270.000, FourCC("o003"))
    life = GetUnitState(u, UNIT_STATE_LIFE)
    SetUnitState(u, UNIT_STATE_LIFE, 0.50 * life)
    u = BlzCreateUnitWithSkin(p, FourCC("nten"), -480.0, -672.0, 270.000, FourCC("nten"))
    u = BlzCreateUnitWithSkin(p, FourCC("oshy"), -4640.0, 1056.0, 270.000, FourCC("oshy"))
    u = BlzCreateUnitWithSkin(p, FourCC("otto"), -2784.0, -2656.0, 270.000, FourCC("otto"))
end

function CreateUnitsForPlayer5()
    local p = Player(5)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("O004"), -4503.6, 837.2, 279.730, FourCC("O004"))
    SetHeroLevel(u, 20, false)
    SetUnitAcquireRange(u, 200.0)
    IssueImmediateOrder(u, "repairon")
    u = BlzCreateUnitWithSkin(p, FourCC("o008"), -2638.5, -2809.6, 222.211, FourCC("o008"))
    SetUnitAcquireRange(u, 200.0)
end

function CreateUnitsForPlayer7()
    local p = Player(7)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("e006"), 2146.1, -2192.3, 270.000, FourCC("e006"))
    u = BlzCreateUnitWithSkin(p, FourCC("e006"), 1867.3, -2176.9, 270.000, FourCC("e006"))
    u = BlzCreateUnitWithSkin(p, FourCC("e006"), 2473.4, -2187.5, 270.000, FourCC("e006"))
    u = BlzCreateUnitWithSkin(p, FourCC("e006"), 2805.1, -2188.1, 270.000, FourCC("e006"))
    u = BlzCreateUnitWithSkin(p, FourCC("e006"), 1996.7, -3157.0, 90.000, FourCC("e006"))
    u = BlzCreateUnitWithSkin(p, FourCC("e006"), 2623.2, -3183.3, 90.000, FourCC("e006"))
    u = BlzCreateUnitWithSkin(p, FourCC("e006"), 1151.8, -1692.3, 180.000, FourCC("e006"))
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
    u = BlzCreateUnitWithSkin(p, FourCC("hshy"), -4320.0, 4512.0, 270.000, FourCC("hshy"))
    u = BlzCreateUnitWithSkin(p, FourCC("hhou"), -3008.0, -384.0, 270.000, FourCC("hhou"))
    u = BlzCreateUnitWithSkin(p, FourCC("hlum"), -2080.0, -3360.0, 270.000, FourCC("hlum"))
    u = BlzCreateUnitWithSkin(p, FourCC("hhou"), -320.0, -3712.0, 270.000, FourCC("hhou"))
    u = BlzCreateUnitWithSkin(p, FourCC("hhou"), -192.0, -3712.0, 270.000, FourCC("hhou"))
    u = BlzCreateUnitWithSkin(p, FourCC("hhou"), -64.0, -3648.0, 270.000, FourCC("hhou"))
    u = BlzCreateUnitWithSkin(p, FourCC("hhou"), 320.0, -3648.0, 270.000, FourCC("hhou"))
    u = BlzCreateUnitWithSkin(p, FourCC("hhou"), 192.0, -3648.0, 270.000, FourCC("hhou"))
    u = BlzCreateUnitWithSkin(p, FourCC("hhou"), 64.0, -3648.0, 270.000, FourCC("hhou"))
    u = BlzCreateUnitWithSkin(p, FourCC("hhou"), 192.0, -3776.0, 270.000, FourCC("hhou"))
    u = BlzCreateUnitWithSkin(p, FourCC("hhou"), 320.0, -3776.0, 270.000, FourCC("hhou"))
    u = BlzCreateUnitWithSkin(p, FourCC("hhou"), 320.0, -3968.0, 270.000, FourCC("hhou"))
    u = BlzCreateUnitWithSkin(p, FourCC("hhou"), 192.0, -4032.0, 270.000, FourCC("hhou"))
    u = BlzCreateUnitWithSkin(p, FourCC("hhou"), -64.0, -4032.0, 270.000, FourCC("hhou"))
    u = BlzCreateUnitWithSkin(p, FourCC("hhou"), -192.0, -4032.0, 270.000, FourCC("hhou"))
    u = BlzCreateUnitWithSkin(p, FourCC("hhou"), -384.0, -4032.0, 270.000, FourCC("hhou"))
    u = BlzCreateUnitWithSkin(p, FourCC("hhou"), -2752.0, -3584.0, 270.000, FourCC("hhou"))
    u = BlzCreateUnitWithSkin(p, FourCC("hhou"), -2432.0, -3328.0, 270.000, FourCC("hhou"))
end

function CreateUnitsForPlayer10()
    local p = Player(10)
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
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2554.2, -2317.6, 44.254, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2355.0, -2991.4, 127.006, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2217.3, -2920.4, 95.771, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2323.3, -2759.2, 225.710, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2441.1, -2575.3, 170.063, FourCC("n001"))
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
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -1040.8, -2058.0, 232.720, FourCC("hpea"))
    IssueImmediateOrder(u, "repairon")
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -1164.7, -2141.5, 28.719, FourCC("hpea"))
    IssueImmediateOrder(u, "repairon")
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -1211.8, -2388.4, 124.061, FourCC("hpea"))
    IssueImmediateOrder(u, "repairon")
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -1177.2, -2585.0, 64.755, FourCC("hpea"))
    IssueImmediateOrder(u, "repairon")
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -1062.0, -2677.9, 279.061, FourCC("hpea"))
    IssueImmediateOrder(u, "repairon")
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -797.1, -2653.1, 40.772, FourCC("hpea"))
    IssueImmediateOrder(u, "repairon")
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -904.9, -2719.1, 233.346, FourCC("hpea"))
    IssueImmediateOrder(u, "repairon")
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -648.8, -2667.5, 129.692, FourCC("hpea"))
    IssueImmediateOrder(u, "repairon")
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -659.8, -2467.3, 45.133, FourCC("hpea"))
    IssueImmediateOrder(u, "repairon")
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -691.2, -2196.4, 121.765, FourCC("hpea"))
    IssueImmediateOrder(u, "repairon")
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -794.0, -2109.9, 270.876, FourCC("hpea"))
    IssueImmediateOrder(u, "repairon")
    u = BlzCreateUnitWithSkin(p, FourCC("e001"), -2984.2, 796.5, 196.738, FourCC("e001"))
    u = BlzCreateUnitWithSkin(p, FourCC("e001"), -2519.4, 1437.1, 196.738, FourCC("e001"))
    u = BlzCreateUnitWithSkin(p, FourCC("e001"), -2264.9, 936.9, 196.738, FourCC("e001"))
    u = BlzCreateUnitWithSkin(p, FourCC("e001"), -2746.5, 492.7, 196.738, FourCC("e001"))
    u = BlzCreateUnitWithSkin(p, FourCC("e001"), -2446.4, 336.0, 196.738, FourCC("e001"))
    u = BlzCreateUnitWithSkin(p, FourCC("e001"), -2193.9, 691.5, 196.738, FourCC("e001"))
    u = BlzCreateUnitWithSkin(p, FourCC("e001"), -2228.9, 1354.8, 196.738, FourCC("e001"))
    u = BlzCreateUnitWithSkin(p, FourCC("e001"), -1975.5, 378.1, 196.738, FourCC("e001"))
    u = BlzCreateUnitWithSkin(p, FourCC("e001"), -1804.4, 946.4, 196.738, FourCC("e001"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), -2895.0, -3006.4, 95.230, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("n000"), 1458.8, 810.6, 59.373, FourCC("n000"))
    SetUnitAcquireRange(u, 200.0)
    u = BlzCreateUnitWithSkin(p, FourCC("n000"), 2224.8, 190.5, 20.919, FourCC("n000"))
    SetUnitAcquireRange(u, 200.0)
    u = BlzCreateUnitWithSkin(p, FourCC("n000"), 2642.9, 1077.5, 320.283, FourCC("n000"))
    SetUnitAcquireRange(u, 200.0)
    u = BlzCreateUnitWithSkin(p, FourCC("o002"), -2951.2, -2927.0, 123.880, FourCC("o002"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2485.0, -2767.8, 171.590, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n000"), -1164.0, 434.9, 268.984, FourCC("n000"))
    SetUnitAcquireRange(u, 200.0)
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -3129.1, -2767.8, 171.590, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -3065.1, -2385.2, 171.590, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -3202.6, -2918.6, 171.590, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -3227.4, -1826.9, 171.590, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2722.4, -466.7, 171.590, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2677.1, -757.8, 171.590, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2233.8, -460.7, 171.590, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -2154.6, -799.6, 171.590, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n000"), 1184.5, 583.6, 219.649, FourCC("n000"))
    SetUnitAcquireRange(u, 200.0)
    u = BlzCreateUnitWithSkin(p, FourCC("n000"), 3041.0, 1410.4, 204.109, FourCC("n000"))
    SetUnitAcquireRange(u, 200.0)
    u = BlzCreateUnitWithSkin(p, FourCC("nwwd"), 3605.3, 1216.6, 249.420, FourCC("nwwd"))
    u = BlzCreateUnitWithSkin(p, FourCC("n000"), 3850.8, 391.1, 320.283, FourCC("n000"))
    SetUnitAcquireRange(u, 200.0)
    u = BlzCreateUnitWithSkin(p, FourCC("n000"), 2942.3, 407.7, 298.538, FourCC("n000"))
    SetUnitAcquireRange(u, 200.0)
    u = BlzCreateUnitWithSkin(p, FourCC("h003"), -1959.2, -4400.7, 257.650, FourCC("h003"))
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
    u = BlzCreateUnitWithSkin(p, FourCC("nmh0"), -1248.0, 4512.0, 270.000, FourCC("nmh0"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmh0"), -224.0, 4448.0, 270.000, FourCC("nmh0"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmh1"), 672.0, 4768.0, 270.000, FourCC("nmh1"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmh1"), 2016.0, 4768.0, 270.000, FourCC("nmh1"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmh1"), 3360.0, 4512.0, 270.000, FourCC("nmh1"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmh0"), 3808.0, 3488.0, 270.000, FourCC("nmh0"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmh0"), 4000.0, 2272.0, 270.000, FourCC("nmh0"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmh0"), 2976.0, -4000.0, 270.000, FourCC("nmh0"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmh0"), 864.0, -4064.0, 270.000, FourCC("nmh0"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmh0"), 1120.0, -3808.0, 270.000, FourCC("nmh0"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmh0"), 1824.0, -3872.0, 270.000, FourCC("nmh0"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmh0"), 2080.0, -4128.0, 270.000, FourCC("nmh0"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmh0"), 2528.0, -3872.0, 270.000, FourCC("nmh0"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmh1"), 1632.0, -4064.0, 270.000, FourCC("nmh1"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmh1"), -4192.0, 224.0, 270.000, FourCC("nmh1"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmh1"), -4384.0, 544.0, 270.000, FourCC("nmh1"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmh1"), -4448.0, -160.0, 270.000, FourCC("nmh1"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmh1"), -4128.0, -352.0, 270.000, FourCC("nmh1"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmh1"), -4128.0, -864.0, 270.000, FourCC("nmh1"))
end

function CreateUnitsForPlayer11()
    local p = Player(11)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("nmrm"), 2852.8, -3802.0, 10.031, FourCC("nmrm"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), -736.3, 1087.7, 0.000, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), -1406.1, 2627.6, 0.000, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), -2392.5, 3388.5, 283.746, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), -3197.3, 2290.6, 48.410, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), -2675.8, 2013.7, 0.000, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), -265.4, 1754.9, 180.000, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), -388.9, 2729.5, 180.000, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), -1764.1, 3402.2, 0.000, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), -3183.3, 3438.5, 0.000, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmrr"), 1368.8, -3850.1, 21.633, FourCC("nmrr"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmrr"), 2297.0, -4095.0, 107.900, FourCC("nmrr"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmrr"), 2804.5, -4072.4, 122.875, FourCC("nmrr"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmrl"), 3871.1, 2147.1, 322.052, FourCC("nmrl"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmrl"), 3880.7, 3318.2, 164.163, FourCC("nmrl"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmrm"), 3197.8, 4392.6, 350.639, FourCC("nmrm"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmrm"), 589.3, 4615.5, 83.718, FourCC("nmrm"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmrm"), -395.8, 4371.1, 349.903, FourCC("nmrm"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmrr"), -1774.2, 4251.7, 88.168, FourCC("nmrr"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmrr"), -2806.2, 4603.9, 288.092, FourCC("nmrr"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmrr"), -1304.2, 4382.9, 238.663, FourCC("nmrr"))
    u = BlzCreateUnitWithSkin(p, FourCC("ndqn"), -4118.1, 2794.7, 86.403, FourCC("ndqn"))
    SetUnitAcquireRange(u, 200.0)
    u = BlzCreateUnitWithSkin(p, FourCC("ndqv"), -3978.7, 2909.2, 88.702, FourCC("ndqv"))
    SetUnitAcquireRange(u, 200.0)
    u = BlzCreateUnitWithSkin(p, FourCC("ndqt"), -3799.9, 2743.4, 81.517, FourCC("ndqt"))
    SetUnitAcquireRange(u, 200.0)
    u = BlzCreateUnitWithSkin(p, FourCC("ndqp"), -4089.8, 3049.3, 89.130, FourCC("ndqp"))
    SetUnitAcquireRange(u, 200.0)
    u = BlzCreateUnitWithSkin(p, FourCC("ndqs"), -3851.3, 3043.6, 83.909, FourCC("ndqs"))
    SetUnitAcquireRange(u, 200.0)
    u = BlzCreateUnitWithSkin(p, FourCC("nmrm"), 2333.0, -3895.9, 150.210, FourCC("nmrm"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmrm"), 1830.5, -4010.1, 114.162, FourCC("nmrm"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmrm"), 782.1, -3817.1, 244.970, FourCC("nmrm"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmrl"), 1255.0, -3990.5, 339.246, FourCC("nmrl"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmrl"), 2063.5, -3684.1, 272.359, FourCC("nmrl"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmrl"), 2596.5, -3644.3, 193.805, FourCC("nmrl"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmrl"), 3224.9, -3889.5, 280.885, FourCC("nmrl"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmrl"), 3745.1, 2131.8, 283.467, FourCC("nmrl"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmrm"), 3744.8, 2281.8, 59.383, FourCC("nmrm"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmrm"), 3950.4, 2020.1, 250.035, FourCC("nmrm"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmrm"), 3882.3, 3675.0, 287.005, FourCC("nmrm"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmrm"), 3417.6, 4246.7, 253.352, FourCC("nmrm"))
    u = BlzCreateUnitWithSkin(p, FourCC("nscb"), 4010.7, -2813.4, 208.747, FourCC("nscb"))
    u = BlzCreateUnitWithSkin(p, FourCC("nsc3"), 3856.9, -3222.4, 25.467, FourCC("nsc3"))
    u = BlzCreateUnitWithSkin(p, FourCC("nsc2"), 3433.4, -3761.4, 112.679, FourCC("nsc2"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmsc"), 3966.9, 2463.8, 8.262, FourCC("nmsc"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmsc"), 3137.7, 4722.5, 351.738, FourCC("nmsc"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmsc"), 1859.7, 4589.0, 165.272, FourCC("nmsc"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmrv"), 2058.3, 4568.0, 93.178, FourCC("nmrv"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmsn"), 827.3, 4452.1, 134.455, FourCC("nmsn"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmtw"), 891.4, 4643.8, 162.031, FourCC("nmtw"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmtw"), -41.9, 4392.6, 165.305, FourCC("nmtw"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmtw"), -190.3, 4298.0, 165.789, FourCC("nmtw"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmbg"), -1143.7, 4374.0, 278.171, FourCC("nmbg"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmbg"), -1408.6, 4457.6, 289.301, FourCC("nmbg"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmbg"), -2957.4, 4553.6, 215.987, FourCC("nmbg"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmbg"), -2779.3, 4333.8, 137.333, FourCC("nmbg"))
    u = BlzCreateUnitWithSkin(p, FourCC("nmbg"), -2623.1, 4390.5, 336.961, FourCC("nmbg"))
    u = BlzCreateUnitWithSkin(p, FourCC("nhmc"), 3756.8, 2635.2, 113.262, FourCC("nhmc"))
    u = BlzCreateUnitWithSkin(p, FourCC("nhmc"), 4035.8, 3282.3, 131.587, FourCC("nhmc"))
    u = BlzCreateUnitWithSkin(p, FourCC("ncrb"), 3857.0, 4067.0, 231.456, FourCC("ncrb"))
    u = BlzCreateUnitWithSkin(p, FourCC("ncrb"), 3112.7, 4331.5, 118.810, FourCC("ncrb"))
    u = BlzCreateUnitWithSkin(p, FourCC("ncrb"), 2439.6, 4679.5, 122.117, FourCC("ncrb"))
    u = BlzCreateUnitWithSkin(p, FourCC("ncrb"), 1520.8, 4669.4, 101.055, FourCC("ncrb"))
    u = BlzCreateUnitWithSkin(p, FourCC("ncrb"), 450.9, 4721.4, 215.339, FourCC("ncrb"))
    u = BlzCreateUnitWithSkin(p, FourCC("ncrb"), 37.6, 4766.6, 187.378, FourCC("ncrb"))
    u = BlzCreateUnitWithSkin(p, FourCC("ncrb"), -825.2, 4495.4, 274.238, FourCC("ncrb"))
    u = BlzCreateUnitWithSkin(p, FourCC("ncrb"), -881.4, 4444.3, 236.005, FourCC("ncrb"))
    u = BlzCreateUnitWithSkin(p, FourCC("ncrb"), -3865.8, 4660.1, 108.460, FourCC("ncrb"))
    u = BlzCreateUnitWithSkin(p, FourCC("ncrb"), -4505.3, 4342.2, 209.593, FourCC("ncrb"))
    u = BlzCreateUnitWithSkin(p, FourCC("nhmc"), 1247.3, -4112.5, 276.666, FourCC("nhmc"))
end

function CreateNeutralPassiveBuildings()
    local p = Player(PLAYER_NEUTRAL_PASSIVE)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("n008"), 2176.0, -1152.0, 270.000, FourCC("n008"))
end

function CreateNeutralPassive()
    local p = Player(PLAYER_NEUTRAL_PASSIVE)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("e005"), 1563.7, -2290.8, 102.630, FourCC("e005"))
    u = BlzCreateUnitWithSkin(p, FourCC("e009"), 177.5, 2181.5, 342.921, FourCC("e009"))
    u = BlzCreateUnitWithSkin(p, FourCC("o005"), -3028.9, 2146.6, 359.290, FourCC("o005"))
    u = BlzCreateUnitWithSkin(p, FourCC("o005"), -2592.1, -3389.6, 359.290, FourCC("o005"))
    u = BlzCreateUnitWithSkin(p, FourCC("o005"), 996.7, -3800.0, 353.510, FourCC("o005"))
    u = BlzCreateUnitWithSkin(p, FourCC("e007"), 2904.6, -2346.4, 353.440, FourCC("e007"))
    gg_unit_n006_0217 = BlzCreateUnitWithSkin(p, FourCC("n006"), 3581.2, -1649.5, 269.192, FourCC("n006"))
end

function CreatePlayerBuildings()
    CreateBuildingsForPlayer5()
    CreateBuildingsForPlayer10()
    CreateBuildingsForPlayer11()
end

function CreatePlayerUnits()
    CreateUnitsForPlayer5()
    CreateUnitsForPlayer7()
    CreateUnitsForPlayer10()
    CreateUnitsForPlayer11()
end

function CreateAllUnits()
    CreateNeutralPassiveBuildings()
    CreatePlayerBuildings()
    CreateNeutralPassive()
    CreatePlayerUnits()
end

function CreateRegions()
    local we
    gg_rct_Winter = Rect(1344.0, -1696.0, 3360.0, -512.0)
    we = AddWeatherEffect(gg_rct_Winter, FourCC("SNhs"))
    EnableWeatherEffect(we, true)
    gg_rct_Saws = Rect(-3232.0, 1856.0, -320.0, 3488.0)
    gg_rct_Region_002 = Rect(-3008.0, 3200.0, -2976.0, 3232.0)
    gg_rct_TrentZone = Rect(-3360.0, -96.0, -1216.0, 1664.0)
    gg_rct_Workers = Rect(-1344.0, -2784.0, -480.0, -1952.0)
    gg_rct_Region_005 = Rect(-1824.0, -3648.0, -64.0, -1856.0)
    gg_rct_StoneZone = Rect(160.0, 1504.0, 3392.0, 3648.0)
    gg_rct_KodoZone = Rect(-800.0, -192.0, -576.0, -64.0)
    gg_rct_WalkSpawnZone = Rect(3136.0, 96.0, 3264.0, 288.0)
    gg_rct_SheepZone = Rect(-2912.0, -2720.0, -2752.0, -2528.0)
    gg_rct_StoneZoneS = Rect(3104.0, 2368.0, 3296.0, 2560.0)
    gg_rct_Lava = Rect(1248.0, -2592.0, 1472.0, -2368.0)
    gg_rct_Region_012 = Rect(4256.0, 128.0, 4288.0, 160.0)
    gg_rct_MiniWater = Rect(-768.0, 0.0, -672.0, 96.0)
    gg_rct_Morlok = Rect(-672.0, 448.0, -544.0, 576.0)
    gg_rct_Region_015 = Rect(-3200.0, 1952.0, -2848.0, 2240.0)
    we = AddWeatherEffect(gg_rct_Region_015, FourCC("LRaa"))
    EnableWeatherEffect(we, true)
    gg_rct_Region_016 = Rect(3456.0, -2400.0, 4064.0, -2080.0)
    gg_rct_EnterCave = Rect(2912.0, 1312.0, 3072.0, 1440.0)
    gg_rct_EnterTown = Rect(11360.0, 4736.0, 11552.0, 4896.0)
    gg_rct_Region_019 = Rect(11328.0, 4928.0, 11584.0, 5088.0)
    gg_rct_Region_020 = Rect(2880.0, 1120.0, 3072.0, 1216.0)
end

--CUSTOM_CODE
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 07.04.2020 3:02
---
function StartPeonAI(hero)
	--print("Запущен ИИ для "..GetUnitName(hero))
	local data=HERO[GetPlayerId(GetOwningPlayer(hero))]
	data.ReleaseW=false
	data.ReleaseA=false
	data.ReleaseS=false
	data.ReleaseD=false
	data.ReleaseLMB=false
	data.ReleaseRMB=false
	data.ReleaseRMB=true
	local LastM=0
	local ErrorTime=0
	local ErrorTime2=0
	local Base=FindUnitOfType(FourCC('o001'))
	local k=1
	local IMFree=0
	local rdelay=GetRandomReal(0.8,1.2)

	TimerStart(CreateTimer(), rdelay, true, function()
		data.ReleaseW=false
		data.ReleaseA=false
		data.ReleaseS=false
		data.ReleaseD=false

		ErrorTime2=ErrorTime2+rdelay
		local d=GetNearbyDes(hero,500*k)
		--print("Нашёл дерево, рублю"..GetDestructableName(d))
		local dra=0
		if DistanceBetweenXY(GetDestructableX(d),GetDestructableY(d),GetUnitXY(hero))>ErrorTime*30 and d then

			dra=GetRandomReal(5*ErrorTime*(-1),5*ErrorTime)
			--print("Декор далеко "..dra)
		end
		local  turn=dra+AngleBetweenXY(GetUnitX(hero),GetUnitY(hero),GetDestructableX(d),GetDestructableY(d))/bj_DEGTORAD
		data.LastTurn=turn--GetRandomReal(0,360)
		local m=DistanceBetweenXY(GetUnitX(hero),GetUnitY(hero),GetDestructableX(d),GetDestructableY(d))


		if ErrorTime>=15 then
			ErrorTime=0
		end

		if ErrorTime2>=60 then
			ErrorTime2=0
			--k=k+1-- временно убрал
			--print("радиус поиска увеличен "..k)
		end

		if IsUnitInRange(hero,Base,200) and ErrorTime>=3 and data.IsWood then --and GetLosingHP(Base)<=10
			--print("Вернул дерево на базу, новый цикл")
			ErrorTime=0
			k=1
		end


		if not d or ErrorTime>=10  then --	if not d or ErrorTime>=10  then --
			--print("хз что делать")
			IMFree=IMFree+rdelay
			local ab=nil
			if IMFree>=3 then
				ab=GetAllyBuild(hero,500)
			end
			if IMFree>=7 then
				IMFree=0
			end
			if not ab then
				local enemy=GetAnyEnemy(hero,500)
				if not enemy then
					if not ab then
						--print("Хаотично бегу "..ErrorTime)
						data.LastTurn=GetRandomReal(0,360)
						data.RangeDesMove=110
						if ErrorTime>20 then
							--print("Надоело хаотично бегать, сброс")
							ErrorTime=0
						end
					end
				else
				--	print("Бью врага "..ErrorTime)
					ErrorTime=ErrorTime+rdelay
					data.LastTurn=AngleBetweenXY(GetUnitX(hero),GetUnitY(hero),GetUnitX(enemy),GetUnitY(enemy))/bj_DEGTORAD
					data.RangeDesMove=DistanceBetweenXY(GetUnitX(hero),GetUnitY(hero),GetUnitX(enemy),GetUnitY(enemy))
				end
			else
			--	print("Чиню здание "..ErrorTime)
				ErrorTime=ErrorTime+rdelay
				data.LastTurn=AngleBetweenXY(GetUnitX(hero),GetUnitY(hero),GetUnitX(ab),GetUnitY(ab))/bj_DEGTORAD
				data.RangeDesMove=DistanceBetweenXY(GetUnitX(hero),GetUnitY(hero),GetUnitX(ab),GetUnitY(ab))
			end
		end

		if not data.IsWood then -- нет дерева
			if d then
				ErrorTime=ErrorTime+rdelay
				data.RangeDesMove=m
			end
		else--есть дерево

			ErrorTime=ErrorTime+rdelay
			local anyrandom=GetRandomReal(6*ErrorTime*(-1),6*ErrorTime)
			--print("Есть дерево, возвращаюсь на базу "..ErrorTime.." случайное время"..anyrandom)
			data.LastTurn=anyrandom+(AngleBetweenXY(GetUnitX(hero),GetUnitY(hero),GetUnitX(Base),GetUnitY(Base))/bj_DEGTORAD)
			data.RangeDesMove=DistanceBetweenXY(GetUnitX(hero),GetUnitY(hero),GetUnitX(Base),GetUnitY(Base))
			ErrorTime2=0
			k=1

			if ErrorTime>=13  then --	if not d or ErrorTime>=10  then --
				--print("я застрял, пока нёс дерево")
				data.LastTurn=GetRandomReal(0,360)
				data.RangeDesMove=110
				if ErrorTime>15 then
					--print("Сброс ошибок при возврате дерева")
					ErrorTime=0
				end
			end
		end
	end)
end

function GetNearbyDes(hero, range)
	local d=nil
	local x,y=GetUnitXY(hero)
	local this=nil
	SetRect(GlobalRect, x - range, y - range, x + range, y +range)
	EnumDestructablesInRect(GlobalRect,nil,function ()
		d=GetEnumDestructable()
		if GetDestructableLife(d)>0 and GetUnitZ(hero)>=GetTerrainZ(GetDestructableX(d),GetDestructableY(d)) then
			this=d
		end
		if GetDestructableTypeId(d)==FourCC('LTlt') then

		end
	end)
	return this
end

function GetAllyBuild(hero, range)
	local e=nil
	local x,y=GetUnitXY(hero)
	local this=nil
	GroupEnumUnitsInRange(perebor,x,y,range,nil)
	while true do
		e = FirstOfGroup(perebor)

		if e == nil then break end
		if UnitAlive(e) and IsUnitType(e,UNIT_TYPE_STRUCTURE) and IsUnitAlly(e,GetOwningPlayer(hero)) and GetLosingHP(e)>=10 then
			this=e
		end
		GroupRemoveUnit(perebor,e)
	end
	return this
end

function GetAnyEnemy(hero, range)
	local e=nil
	local x,y=GetUnitXY(hero)
	local this=nil
	GroupEnumUnitsInRange(perebor,x,y,range,nil)
	while true do
		e = FirstOfGroup(perebor)

		if e == nil then break end
		if UnitAlive(e)  and IsUnitEnemy(e,GetOwningPlayer(hero)) and IsUnitVisible(e,GetOwningPlayer(hero)) and GetUnitAbilityLevel(e,FourCC('Avul'))==0 then
			this=e
		end
		GroupRemoveUnit(perebor,e)
	end
	return this
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 02.05.2020 2:43
---

function StartTinyAI(xs,ys)
	local boss=FindUnitOfType(FourCC('e009') )
	local stoneEffModel="Abilities\\Weapons\\RockBoltMissile\\RockBoltMissile"
	local Special="Abilities\\Weapons\\ProcMissile\\ProcMissile"

	UnitAddAbility(boss,FourCC('Abun'))
	SetUnitPosition(boss,1420,2597)
	SetUnitOwner(boss,Player(10),true)
	local range=1000
	local x,y=GetUnitXY(boss)
	SetRect(GlobalRect, x - range, y - range, x + range, y +range)
	EnumDestructablesInRect(GlobalRect,nil,function ()
		local d=GetEnumDestructable()
		local dx,dy=GetDestructableX(d),GetDestructableY(d)
		if IsUnitInRangeXY(boss,dx,dy,range) then
			KillDestructable(d)
			--print("очистка зоны")
		end
	end)

	--перенос героев в случайную точку
	for i=0,3 do
		local hero=HERO[i].UnitHero
		if IsUnitInRangeXY(hero,xs,ys,300) then
			--print("герои перенесены")
			SetUnitPosition(hero,1420+GetRandomInt(-1,1)*500,2597+GetRandomInt(-1,1)*500)
		end
	end


	local FW=CreateFogModifierRectBJ(false, Player(0), FOG_OF_WAR_VISIBLE, GlobalRect)
	FogModifierStart(FW)


	--print("создаём каменный круг")

	for i=0,36 do
		local angle=10
		local dx,dy=MoveXY(x,y,range*.8,angle*i)
		local newd=CreateDestructable(FourCC('LTrc'),dx,dy,0,GetRandomInt(1,1),GetRandomInt(1,5))
		SetDestructableInvulnerable(newd,true)
		--print("создан элемент "..i)
	end


	local phase=0
	local sec=0
	TimerStart(CreateTimer(), 1, true, function()
		if not UnitAlive(boss) then
			DestroyTimer(GetExpiredTimer())
			phase=0
		end
		local xb,yb=GetUnitXY(boss)
		sec=sec+1
		if sec>=10 then
			sec=0
			phase=phase+1
			print("phase "..phase)
			if phase>=4 then
				phase=0
			end
		end
		--фазы
		if phase==1 then
			print("стреляем камнями")
			TimerStart(CreateTimer(), .3, true, function()
				local angle=GetRandomInt(0,359)
				CreateAndForceBullet(boss,angle,15,stoneEffModel,xb,yb,50)
				if  phase~=1 then
					DestroyTimer(GetExpiredTimer())
				end
			end)
		end

		--конец

	end)

end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 25.04.2020 2:49
---
function StartWolfBossAI()
local boss=FindUnitOfType(FourCC('nwwd'))--id босса
	TimerStart(CreateTimer(), 5, true, function()
		local e=nil
		local x,y=GetUnitXY(boss)
		local this={}
		local k=1
		GroupEnumUnitsInRange(perebor,x,y,700,nil)
		while true do
			e = FirstOfGroup(perebor)

			if e == nil then break end
			if UnitAlive(e) and IsUnitEnemy(e,GetOwningPlayer(boss)) then -- and IsUnitVisible(e,GetOwningPlayer(boss))
				--print("нашел...".. GetUnitName(e))
				this[k]=e
				k=k+1
			end
			GroupRemoveUnit(perebor,e)
		end

		local hero=this[GetRandomInt(1,#this)]
		if hero then
			--print("Нападаем на "..GetUnitName(hero))
			local angle= math.deg(AngleBetweenXY(GetUnitX(boss), GetUnitY(boss), GetUnitX(hero), GetUnitY(hero)))
			BlzSetUnitFacingEx(boss,angle)
			UnitAddForce(boss,angle,40,DistanceBetweenXY(GetUnitX(boss),GetUnitY(boss),GetUnitXY(hero)))
		end
		if not UnitAlive(boss) then
			DestroyTimer(GetExpiredTimer())
		end
	end)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 06.02.2020 18:00
---
---
---
---


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
		BlzFrameSetVisible(buttonsprite,false)
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
--- DateTime: 26.04.2020 2:44
function CreateAndStartClock()

	local charges= BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	local new_FrameChargesText = BlzCreateFrameByType("TEXT", "ButtonChargesText", charges, "", 0)

	BlzFrameSetTexture(charges, "ChargesTexture.blp", 0, true)
	BlzFrameSetSize(charges, 0.08, 0.02)
	BlzFrameSetAbsPoint(charges, FRAMEPOINT_CENTER,0.4-0.02 , 0.6-0.02)
	--BlzFrameSetPoint(charges, FRAMEPOINT_BOTTOM, wood, FRAMEPOINT_BOTTOM, 0,0)

	BlzFrameSetPoint(new_FrameChargesText, FRAMEPOINT_CENTER, charges, FRAMEPOINT_CENTER, 0.,0.)
	local sec=0
	local min=0
	local h=0
	TimerStart(CreateTimer(), 1, true, function()
		sec=sec+1
		if sec==60 then
			sec=0
			min=min+1
		end
		if min==60 then
			min=0
			h=h+1
		end

		BlzFrameSetText(new_FrameChargesText, Zero(h)..":"..Zero(min)..":"..Zero(sec))
	end)
end

function Zero(s)
	local ns=""
	if string.len(s)==1 then
		ns="0"..s
	else
		ns=s
	end
	return ns
end
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

	local heroico=BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	BlzFrameSetTexture(heroico, "ReplaceableTextures\\CommandButtons\\BTNPeon", 0, true)
	BlzFrameSetSize(heroico, 0.04, 0.04)
	BlzFrameSetAbsPoint(heroico, FRAMEPOINT_LEFT,0.04, 0.6-0.03)
	BlzFrameSetVisible(heroico,false)

	if GetLocalPlayer()==GetOwningPlayer(u) then
		BlzFrameSetVisible(bar,true)
		BlzFrameSetVisible(heroico,true)
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
	BlzFrameSetAbsPoint(bar, FRAMEPOINT_LEFT, 0.08, 0.58)
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
								BlzFrameSetText(PerkToolTip[k],"Восстанавливает ".."|cffffff00".."3 %|r".." от максимального ХП при убийстве врагов в ближнем бою" ) --|cffffff00AAAA|r
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
							BlzFrameSetText(PerkToolTip[k],"Поглощает ".."|cffffff00".."100% |r".." урона " ) --|cffffff00AAAA|r
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
	local i=1
	--for i=0,3 do
		local status=BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
		BlzFrameSetTexture(status, StatusTexture[i], 0, true)
		BlzFrameSetSize(status, 0.019, 0.019)
		BlzFrameSetAbsPoint(status, FRAMEPOINT_LEFT,0.08 , 0.6-0.04)
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
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 27.04.2020 3:12




function ButtonPress()
	local this = CreateTrigger()

	for i = 1, 4 do
		TriggerRegisterDialogEventBJ(this, LangDialog[i])
	end

	TriggerAddAction(this, function()
		--print("нажата кнопка диалога")
		local pid=GetPlayerId(GetTriggerPlayer())
		if GetClickedButton()==ButtonRU[pid] then
			--print("11111")
			print(GetPlayerName(GetTriggerPlayer()).."Выбрал русский "..BlzGetLocale())
			PerkButtonLineNonLocal(pid,0)

		end
		if GetClickedButton()==ButtonENG[pid] then
			--print("22222")
			print(GetPlayerName(GetTriggerPlayer()).." Chose english "..BlzGetLocale())
			HERO[pid].Lang=1
			PerkButtonLineNonLocal(pid,1)
		end
		--CreateMouseHelperNEW(pid)
	end)
end

LangDialog ={DialogCreate(),DialogCreate(),DialogCreate(),DialogCreate()}

ButtonRU={}
ButtonENG={}

function CreateLanguageDialog()
	--print("init")
	for i=0,3 do
		ButtonRU[i]=DialogAddButtonBJ(LangDialog[i+1], "Русский")
		ButtonENG[i]=DialogAddButtonBJ(LangDialog[i+1], "English")
		DialogSetMessageBJ(LangDialog[i+1], "Language?")
		DialogDisplayBJ(true, LangDialog[i+1], Player(i))
		--print("i="..i)
	end
end

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 27.04.2020 16:50
---
function CreateMouseHelperNEW(pid)
	local data=HERO[pid]
	local Mouse=BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	BlzFrameSetTexture(Mouse, "RMB", 0, true)
	BlzFrameSetSize(Mouse, 0.15, 0.15)
	BlzFrameSetAbsPoint(Mouse, FRAMEPOINT_CENTER,0.1 , 0.4)

	--[[local new_FrameChargesText = BlzCreateFrameByType("TEXT", "ButtonChargesText", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	BlzFrameSetAbsPoint(new_FrameChargesText, FRAMEPOINT_CENTER,0.1 , 0.31)
	BlzFrameSetText(new_FrameChargesText, "Удержание ЛКМ - действие")

	local new_FrameChargesText2 = BlzCreateFrameByType("TEXT", "ButtonChargesText", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	BlzFrameSetAbsPoint(new_FrameChargesText2, FRAMEPOINT_CENTER,0.1 , 0.17)
	BlzFrameSetText(new_FrameChargesText2, "Используйте кнопки WASD, для движения")

	local new_FrameChargesText3 = BlzCreateFrameByType("TEXT", "ButtonChargesText", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	BlzFrameSetAbsPoint(new_FrameChargesText3, FRAMEPOINT_CENTER,0.1 , 0.29)
	BlzFrameSetText(new_FrameChargesText3, "Удержание ПКМ - щит")

	local wasd=BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	BlzFrameSetTexture(wasd, "WASD", 0, true)
	BlzFrameSetSize(wasd, 0.10, 0.10)
	BlzFrameSetAbsPoint(wasd, FRAMEPOINT_CENTER,0.1 , 0.25)]]

	if GetLocalPlayer() ~= Player(pid) then
		BlzFrameSetVisible(Mouse, false)
	end
	--updater
	TimerStart(CreateTimer(), 1, true, function()
		--if data.
	end)
end
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
	"ReplaceableTextures\\CommandButtons\\BTNGatherGold", -- кирка
	"ReplaceableTextures\\CommandButtons\\BTNEngineeringUpgrade", -- техника безопасности
	"ReplaceableTextures\\PassiveButtons\\PASBTNDemolish",
	"ReplaceableTextures\\PassiveButtons\\PASBTNFrost",
	"ReplaceableTextures\\CommandButtons\\BTNTimberWolf",
	"ReplaceableTextures/CommandButtons/BTNResistantSkin",
	"ReplaceableTextures\\CommandButtons\\BTNPlagueCloud",
	"ReplaceableTextures\\CommandButtons\\BTNOrbOfFire",
	"ReplaceableTextures\\CommandButtons\\BTNHumanArmorUpThree",
}
Name = { --Определяет количество талантов
	"Работник месяца",
	"Бунтовщик",
	"Поблажка",
	"Лесной Болван",
	"Вкус крови",
	"Ученик Тора",
	"Ожирение 0 степени",
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
	"Принесите 25 дерева, чтобы удвоить его добычу ",
	"Ничего не делайте в течении 300 сек, чтобы поднять бунт ",
	"Умрите 15 раз, чтобы получить +100 к здоровью ",
	"Пробегите расстояние в 200000 метров, чтобы стать на 50% быстрее ",
	"Убивайте врагов, чтобы увеличить свой урон в 2 раза ",
	"Почините здания на 1000 единиц, чтобы замедлять врагов при ударе ",
	"Получите лечение в объёме 1000 ед, чтобы получить +7 к регенерации ",
	"Приручите кодоя, чтобы получить 10 ед брони ",
	"Накалите кирку до красна, чтобы увеличить урон в 5 раз ",
	"Донесите дерево с полным здоровьем, чтобы обучиться парированию. ",
	"Сломайте лесопилку людей, чтобы получить ауру ремонта зданий ",
	"Пробудьте на холоде, чтобы заморозить щит. ",
	"Убивайте волков, чтобы получить шапку волка. ",
	"Убейте каменного голема, чтобы укрепить свой щит ",
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
	"Kill stone golems ",
	"Die from sheep or kill sheep ",
	"Find the fire sphere. ",
	"Team collected wood. ",
}

function PerkButtonLineNonLocal(k,lang)
	if BlzGetLocale()~="ruRU" then
	--	lang=1
	else
		--lang=0
	end
	lang=0
	BlzLoadTOCFile("war3mapimported\\BoxedText.toc")
	local next = 0.039
	--print("start")
	--for k = 0, 3 do
		local data = HERO[k]
		for i = 1, #Name do
			-- число талантов
			--print(i.." "..k.."создаём фрейм")
			local face = BlzCreateFrameByType("GLUEBUTTON", "FaceButton", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
			BlzFrameSetAbsPoint(face, FRAMEPOINT_CENTER, 0.1 + next * (i - 1), 0.02)
			BlzFrameSetSize(face, 0.04, 0.04)
			local buttonIconFrame = BlzCreateFrameByType("BACKDROP", "FaceButtonIcon", face, "", 0)
			BlzFrameSetAllPoints(buttonIconFrame, face)
			BlzFrameSetTexture(buttonIconFrame, texture[i], 0, true)
			local faceHover = BlzCreateFrameByType("FRAME", "FaceFrame", face, "", 0)
			local tooltip = BlzCreateFrame("BoxedText", face, 0, 0)
			local UpDest = BlzGetFrameByName("BoxedTextValue", 0)
			BlzFrameSetAllPoints(faceHover, face)
			BlzFrameSetTooltip(faceHover, tooltip)
			BlzFrameSetPoint(tooltip, FRAMEPOINT_BOTTOM, face, FRAMEPOINT_TOP, 0.0, 0.0)
			BlzFrameSetSize(tooltip, 0.15, 0.08)
			BlzFrameSetText(BlzGetFrameByName("BoxedTextTitle", 0), Name[i])
			BlzFrameSetText(UpDest, description[i])
			if lang == 1 then
				BlzFrameSetText(BlzGetFrameByName("BoxedTextTitle", 0), NameENG[i])
				BlzFrameSetText(UpDest, descriptionENG[i])
			end

			local lock = BlzCreateFrameByType("BACKDROP", "Face", face, "", 0)--замочек
			BlzFrameSetPoint(lock, FRAMEPOINT_CENTER, face, FRAMEPOINT_CENTER, 0., 0.)
			BlzFrameSetSize(lock, 0.04, 0.04)
			BlzFrameSetTexture(lock, "close", 0, true)

			--выделение Хейтовские
			local buttonsprite = BlzCreateFrameByType("SPRITE", "justAName", face, "WarCraftIIILogo", 0)
			BlzFrameSetPoint(buttonsprite, FRAMEPOINT_BOTTOMLEFT, face, FRAMEPOINT_BOTTOMLEFT, 0.02, 0.02)
			BlzFrameSetSize(buttonsprite, 1., 1.)
			BlzFrameSetScale(buttonsprite, 1.)
			BlzFrameSetModel(buttonsprite, "selecter1.mdx", 0)

			BlzFrameSetVisible(buttonsprite, false)
			if GetLocalPlayer() ~= Player(k) then
				BlzFrameSetVisible(lock, false)
				BlzFrameSetVisible(face, false)
			end
			--глобалки

			data.ToolTip[i] = UpDest
			data.LockFrame[i] = lock
			data.VisualSelectorFrame[i] = buttonsprite
			data.PekFrame[i] = UpDest

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
					else
						BlzFrameSetText(data.PekFrame[i], GetLangDescription(i,lang) .. "|cffffff00" .. data.SingleWoodCount .. "/25|r") --|cffffff00AAAA|r
					end
				elseif i == 2 then
					if data.Perk2 then
						BlzFrameSetText(data.PekFrame[i], "Враждебный режим активирован до первой смерти" .. "|cffffff00" .. R2I(data.RevoltSec) .. "/300|r")
					else
						BlzFrameSetText(data.PekFrame[i], GetLangDescription(i,lang) .. "|cffffff00" .. R2I(data.RevoltSec) .. "/300|r") --|cffffff00AAAA|r
					end

				elseif i == 3 then
					BlzFrameSetText(data.PekFrame[i], GetLangDescription(i,lang) .. "|cffffff00" .. data.Dies .. "/15|r") --|cffffff00AAAA|r
				elseif i == 4 then
					BlzFrameSetText(data.PekFrame[i], GetLangDescription(i,lang).. "|cffffff00" .. R2I(data.TotalWay) .. "/200000|r") --|cffffff00AAAA|r
				elseif i == 5 then
					if data.Perk5 then
						BlzFrameSetText(data.PekFrame[i], "Урон увеличен, текущий урон: " .. "|cffffff00" .. BlzGetUnitBaseDamage(data.UnitHero, 0) .. "|r")
						if lang==1 then BlzFrameSetText(data.PekFrame[i], "Damage is increased, current: " .. "|cffffff00" .. BlzGetUnitBaseDamage(data.UnitHero, 0) .. "|r") end
						else
						BlzFrameSetText(data.PekFrame[i], GetLangDescription(i,lang).. "|cffffff00" .. data.Kills .. "/5|r") --|cffffff00AAAA|r
					end
				elseif i == 6 then
					if data.Perk6 then
						BlzFrameSetText(data.PekFrame[i], "Наносит дополнительный урон и замедляет врагов в области 150. " .. "|cffffff00" .. "90 доп. урона|r") --|cffffff00AAAA|r
						if lang==1 then BlzFrameSetText(data.PekFrame[i], "Deal addition damage in area 150 and slow enemy. " .. "|cffffff00" .. "90 damage|r") end
					else
						BlzFrameSetText(data.PekFrame[i], GetLangDescription(i,lang) .. "|cffffff00" .. R2I(data.Repairs) .. "/1000|r") --|cffffff00AAAA|r
					end
				elseif i == 7 then
					if data.Perk7 then
						if data.Perk7A then
							BlzFrameSetText(data.PekFrame[i], "Восстанавливает " .. "|cffffff00" .. "3 %|r" .. " от максимального ХП при убийстве врагов в ближнем бою")
							if lang==1 then
								BlzFrameSetText(data.PekFrame[i], "Restore " .. "|cffffff00" .. "3 %|r" .. " max HP for kill enemy in melee combat")
							end
						else
							BlzFrameSetText(data.PekFrame[i], "Продолжайте правильно питаться и овладеете вампиризмом. " .. "|cffffff00" .. R2I(data.Heals) .. "/5000|r")
							if lang==1 then
								BlzFrameSetText(data.PekFrame[i], "Gives 7 HP regen. Keep eating right for LifeSteel  " .. "|cffffff00" .. R2I(data.Heals) .. "/5000|r")
							end
						end
					else
						BlzFrameSetText(data.PekFrame[i], GetLangDescription(i,lang).. "|cffffff00" .. R2I(data.Heals) .. "/1000|r") --|cffffff00AAAA|r
					end

				elseif i == 8 then
					BlzFrameSetText(data.PekFrame[i], GetLangDescription(i,lang).. "|cffffff00" .. data.KodoCount .. "/1|r") --|cffffff00AAAA|r
				elseif i == 9 then
					if not data.Perk9 then
						BlzFrameSetText(data.PekFrame[i], GetLangDescription(i,lang) .. "|cffffff00" .. data.FireCount .. "/5|r") --|cffffff00AAAA|r
					else
						if not data.HaveAFire then

							BlzFrameSetText(data.PekFrame[i], GetLangDescription(i,lang) .. "|cffffff00" .. "Обычная|r")
							if lang==1 then
								BlzFrameSetText(data.PekFrame[i], GetLangDescription(i,lang) .. "|cffffff00" .. "Normal|r")
							end
						else
							BlzFrameSetText(data.PekFrame[i], GetLangDescription(i,lang) .. "|cffffff00" .. "Калёная|r") --|cffffff00AAAA|r
							if lang==1 then
								BlzFrameSetText(data.PekFrame[i], GetLangDescription(i,lang) .. "|cffffff00" .. "Hot|r")
							end
						end
					end
				elseif i == 10 then
					--техника безопусноти
					if data.Perk10 then
						BlzFrameSetText(data.PekFrame[i], "Парирует урон при совершении атаки в первые " .. "|cffffff00" .. "0,2 секунды|r" .. " после замаха") --|cffffff00AAAA|r
						if lang==1 then
							BlzFrameSetText(data.PekFrame[i], "Parry damage after " .. "|cffffff00" .. "0,2 sec|r" .. " attack") --|cffffff00AAAA|r
						end
					else
						BlzFrameSetText(data.PekFrame[i], GetLangDescription(i,lang) .. "|cffffff00" .. data.TreeCountOnTB .. "/10|r") --|cffffff00AAAA|r
					end
				elseif i == 11 then
					-- погром
					--print(k)
					if data.Perk11 then
						--print("0")
						BlzFrameSetText(data.PekFrame[i], "Автоматически чинит союзные здания и технику в ридиусе 400. " .. "|cffffff00" .. "10 ед. в секунду|r") --|cffffff00AAAA|r
						if lang==1 then
							BlzFrameSetText(data.PekFrame[i], "Automatic repair building in 400 area  " .. "|cffffff00" .. "10 HP per sec|r")
						end
					else
						--print("2")
						BlzFrameSetText(data.PekFrame[i], GetLangDescription(i,lang).. "|cffffff00" .. "0/1|r") --|cffffff00AAAA|r
						--print("3")
					end
					--print(k.."end")
				elseif i == 12 then
					-- ледяной щит
					--print("жвенадцать")
					if data.Perk12 then
						BlzFrameSetText(data.PekFrame[i], "При поглощении урона в щит враги замораживаются на " .. "|cffffff00" .. "3 секунды|r") --|cffffff00AAAA|r
						if lang==1 then
							BlzFrameSetText(data.PekFrame[i], "freezes enemies upon taking damage " .. "|cffffff00" .. "3 sec|r") --|cffffff00AAAA|r
						end
					else
						BlzFrameSetText(data.PekFrame[i], GetLangDescription(i,lang) .. "|cffffff00" .. R2I(data.FrozenShield) .. "/60|r") --|cffffff00AAAA|r
					end
				elseif i == 13 then
					if not data.Perk13 then
						BlzFrameSetText(data.PekFrame[i], GetLangDescription(i,lang) .. "|cffffff00" .. data.WolfCount .. "/5|r") --|cffffff00AAAA|r
					else
						BlzFrameSetText(data.PekFrame[i], "Призывает волка, который будет вам помогать. " .. "|cffffff00" .. "Автономен и неуязвим|r") --|cffffff00AAAA|r
						if lang==1 then
							BlzFrameSetText(data.PekFrame[i], "Summon spirit wolf. " .. "|cffffff00" .. "Offline and invulnerable|r") --|cffffff00AAAA|r
						end
					end
				elseif i == 14 then
					if not data.Perk14A then
						BlzFrameSetText(data.PekFrame[i], GetLangDescription(i,lang) .. "|cffffff00" .. data.StoneCount .. "/1|r") --|cffffff00AAAA|r
					else
						BlzFrameSetText(data.PekFrame[i], "Поглощает " .. "|cffffff00" .. "100% |r" .. " урона ") --|cffffff00AAAA|r
						if lang==1 then
							BlzFrameSetText(data.PekFrame[i], "Absorb " .. "|cffffff00" .. "100% |r" .. " damage ") --|cffffff00AAAA|r
						end
					end
				elseif i == 15 then
					if not data.Perk15 then
						BlzFrameSetText(data.PekFrame[i], GetLangDescription(i,lang) .. "|cffffff00" .. data.SheepCount .. "/40|r") --|cffffff00AAAA|r
					else
						BlzFrameSetText(data.PekFrame[i], "Герой взрывается при смерти нанося урон и каждую " .. "|cffffff002|r" .. " смерть воскресает") --|cffffff00AAAA|r
						if lang==1 then
							BlzFrameSetText(data.PekFrame[i], "Exploded on death and Revive every " .. "|cffffff002|r" .. " death")
						end
					end
				elseif i == 16 then
					if not data.Perk16 then
						BlzFrameSetText(data.PekFrame[i], GetLangDescription(i,lang) .. "|cffffff00" .. "Ищите за вулканом|r") --|cffffff00AAAA|r
						if lang==1 then
							BlzFrameSetText(data.PekFrame[i], GetLangDescription(i,lang) .. "|cffffff00" .. "Search beyond the volcano|r")
						end
					else
						BlzFrameSetText(data.PekFrame[i], "Даёт дальний бой, увеличивает урон в " .. "|cffffff00" .. "5 раз |r" .. " и оглушает на |cffffff00 0,5 сек. |r") --|cffffff00AAAA|r
						if lang==1 then
							BlzFrameSetText(data.PekFrame[i], " 1000 Range Attack damage multiplier" .. "|cffffff00" .. "x 5 |r" .. " and stun|cffffff00 0,5 sec |r")
						end
					end
				elseif i == 17 then
					if not data.Perk17 then
						BlzFrameSetText(data.PekFrame[i], GetLangDescription(i,lang) .. "|cffffff00" .. GTotalWood .. "/50|r") --|cffffff00AAAA|r
					else
						BlzFrameSetText(data.PekFrame[i], "Активация: удержимая ПКМ (щит), используйте удар (ЛКМ). Презезарядка: " .. "|cffffff00" .. "2 сек |r" .. "") --|cffffff00AAAA|r
						if lang==1 then
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
	--PlaySoundAtPointBJ( gg_snd_Unlock, 100, RemoveLocation(Location(GetUnitXY(data.UnitHero))), 0 )
	if GetLocalPlayer()==GetOwningPlayer(data.UnitHero) then
		--print("звук!")
		PlaySoundAtPointBJ( gg_snd_Unlock, 100, RemoveLocation(Location(GetUnitXY(data.UnitHero))), 0 )
		--print("БЫл?")
	end
	TimerStart(CreateTimer(), 10, true, function()
		BlzFrameSetVisible(data.VisualSelectorFrame[index], false)
	end)
end

function GetLangDescription(index,lang)
	local multidescr=""
	if lang==0 then
		multidescr=description[index]
	else
		multidescr=descriptionENG[index]
	end
	return multidescr
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 27.04.2020 20:07
function AddQuest(compas,hero,qx,qy,questendunit)
	local x,y=GetUnitX(hero),GetUnitY(hero)
	local model="AneuCaster"
	local player=GetOwningPlayer(hero)


	if GetLocalPlayer()~=player then
		model=""
	else
		--print("звук созданного квеста")
		StartSound(bj_questSecretSound)
	end
	local QuestPointer=AddSpecialEffect(model,x,y)
	BlzSetSpecialEffectPitch(QuestPointer,math.rad(-90))--/bj_DEGTORAD

	if compas==true then
		TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
			local z=GetUnitZ(hero)
			local xc,yc=GetUnitX(hero),GetUnitY(hero)
			if questendunit~=nil then
				qx,qy=GetUnitX(questendunit),GetUnitY(questendunit)
			end
			local Angle=AngleBetweenXY(xc,yc,qx,qy)
			BlzSetSpecialEffectPosition(QuestPointer,MoveX(xc,130,Angle/bj_DEGTORAD),MoveY(yc,130,Angle/bj_DEGTORAD),z+10)
			BlzSetSpecialEffectYaw(QuestPointer,Angle)

			--if data.isend==true then
			if IsUnitInRangeXY(hero,qx,qy,300) then
				if GetLocalPlayer()==player then
					StartSound(bj_questCompletedSound)
				end
				DestroyTimer(GetExpiredTimer())
				DestroyEffect(QuestPointer)
				--print("квест выполнен, даём награду")
			end
		end)
	end
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 15.04.2020 21:29
---
player_colors = {}
player_colors[0] = "|cffFF0202"
player_colors[1] = "|cff0041FF"
player_colors[2] = "|cff1BE5B8"
player_colors[3] = "|cff530080"
player_colors[4] = "|cffFFFC00"
player_colors[5] = "|cffFE890D"
player_colors[6] = "|cff1FBF00"
player_colors[7] = "|cffE45AAF"
player_colors[8] = "|cff949596"
player_colors[9] = "|cff7DBEF1"
player_colors[10] = "|cff0F6145"
player_colors[11] = "|cff4D2903"
function printTimed(msg,duration)
	if(duration==nil)then
		duration = 30
	end
	if(msg==nil)then
		msg = "nil"
	end
	DisplayTimedTextToPlayer(GetLocalPlayer(),0.,0.,duration,msg)
	--print("Принт тоже сработал")
end
function onChat()
	printTimed(player_colors[GetPlayerId(GetTriggerPlayer())]..GetPlayerName(GetTriggerPlayer()).."|r: "..GetEventPlayerChatString(),30)
end

function BadChat()
	local trig = CreateTrigger()

	TriggerAddCondition(trig, Condition(onChat))
	for i = 0, 11 do
		TriggerRegisterPlayerChatEvent(trig, Player(i), "", false)
	end
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
		--print("позиция")
		dx,dy=xPoz,yPoz
	end
	local dummy=CreateUnit(GetOwningPlayer(caster), DummyID, dx, dy, 0)--
	UnitApplyTimedLife(dummy,FourCC('BTLF'),0.1)
	if UnitAddAbility(dummy,id) then
	else
		--print("ошибка добавления способности")
	end
	---для одиночек

	if range==0 or range==nil then
		--IssuePointOrder(dummy,"blizzard",x,y)-- на точку
		Cast(dummy,x,y)
		--IssuePointOrder(dummy,"acidbomb",x,y)-- на точку
	end
	--print("Каст был успешен 1")
	--[[local e=nil
	GroupEnumUnitsInRange(perebor,x,y,range,nil)
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
	end]]
	--print("Каст был успешен конец")
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 06.02.2020 12:47
---
function CreateAndForceBullet(hero,angle,speed,effectmodel,xs,ys,damage)
	local CollisionRange=100
	if not damage then damage=200 end
	local xhero,yhero=GetUnitX(hero),GetUnitY(hero)
	local zhero=GetUnitZ(hero)+60
	local bullet=AddSpecialEffect(effectmodel,xs,ys)
	local bam=nil--AddSpecialEffect("Abilities/Weapons/SteamTank/SteamTankImpact.mdl",xs,ys)
	local cloud=nil--AddSpecialEffect("Abilities/Weapons/SteamTank/SteamTankImpact.mdl",xs,ys)
	local CollisionEnemy=false
	local CollisisonDestr=false
	local DamagingUnit=nil
	BlzSetSpecialEffectScale(bam,0.1)
	BlzSetSpecialEffectScale(cloud,0.02)
	DestroyEffect(bam)
	DestroyEffect(cloud)
	BlzSetSpecialEffectZ(bullet,zhero)
	local angleCurrent=angle
	local dist=0
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		dist=dist+speed
		local x,y,z=BlzGetLocalSpecialEffectX(bullet),BlzGetLocalSpecialEffectY(bullet),BlzGetLocalSpecialEffectZ(bullet)
		local zGround=GetTerrainZ(MoveX(x,speed*2,angleCurrent),MoveY(y,speed*2,angleCurrent))
		BlzSetSpecialEffectPosition(bullet,MoveX(x,speed,angleCurrent),MoveY(y,speed,angleCurrent),z-2)
		--BlzSetSpecialEffectPosition(cloud,MoveX(x,speed/3,angle),MoveY(y,speed/3,angle),z-2)
		SetFogStateRadius(GetOwningPlayer(hero),FOG_OF_WAR_VISIBLE,x,y,400,true)-- Небольгая подсветка

		--local xbam,ybam=BlzGetLocalSpecialEffectX(bam),BlzGetLocalSpecialEffectY(bam)
		--BlzSetSpecialEffectPosition(bam,MoveX(xbam,2*data.CurrentSpeed,GetUnitFacing(hero)),MoveY(ybam,2*data.CurrentSpeed,GetUnitFacing(hero)),z-50)
		local ZBullet=BlzGetLocalSpecialEffectZ(bullet)
		--print("zGround ="..zGround.."z= "..z)
		--BlzSetSpecialEffectPosition(bam,MoveX(GetUnitX(hero),120,GetUnitFacing(hero)),MoveY(GetUnitY(hero),120,GetUnitFacing(hero)),z)
		CollisionEnemy,DamagingUnit=UnitDamageArea(hero,damage,x,y,CollisionRange,ZBullet)
		CollisisonDestr=PointContentDestructable(x,y,100,false)
		local PerepadZ=zGround-z
		if  dist>1000 or CollisionEnemy or CollisisonDestr or IsUnitType(DamagingUnit,UNIT_TYPE_STRUCTURE) or PerepadZ>20 then --or zGround+z>=-70+z --z<=147
			PointContentDestructable(x,y,100,true)
			if z<=-90 then
				--CreateTorrent(x,y)
				--BlzSetSpecialEffectPosition(bullet,4000,4000,0)
			end
			--print("Условие урона прошло")
			--UnitDamageArea(hero,100,x,y,CollisionRange,ZBullet)
			if IsUnitType(hero,UNIT_TYPE_HERO) then
				local data=HERO[GetPlayerId(GetOwningPlayer(hero))]
				if data.Perk16 and IsUnitEnemy(hero,GetOwningPlayer(DamagingUnit)) and DamagingUnit then
					--print("файрболим "..GetUnitName(DamagingUnit))
					local dummy=CreateUnit(GetOwningPlayer(hero), DummyID, x, y, 0)--
					UnitAddAbility(dummy,FourCC('A00G'))
					UnitApplyTimedLife(dummy,FourCC('BTLF'),0.1)
					Cast(dummy,0,0,DamagingUnit)
					--DestroyEffect(bullet)
					--DestroyTimer(GetExpiredTimer())
				end
			end
			--блок разворота снаряда
			if IsUnitType(DamagingUnit,UNIT_TYPE_HERO) then
				local data=HERO[GetPlayerId(GetOwningPlayer(DamagingUnit))]
				if data.ReleaseLMB and data.Perk14 then
					local AngleUnitRad = math.rad(GetUnitFacing(DamagingUnit))  -- data.LastTurn
					--local AngleSource = math.deg(AngleBetweenXY(GetUnitX(caster), GetUnitY(caster), GetUnitX(target), GetUnitY(target)))
					local Vector3 = wGeometry.Vector3
					local UnitFacingVector = Vector3:new(math.cos(AngleUnitRad), math.sin(AngleUnitRad), 0)  -- вектор поворота юнита
					local AngleSourceVector = Vector3:new(GetUnitX(hero) - GetUnitX(DamagingUnit), GetUnitY(hero) - GetUnitY(DamagingUnit), 0)  -- вектор получения от урона (by Doc)
					AngleSourceVector = AngleSourceVector:normalize()
					local dot = UnitFacingVector:dotProduct(AngleSourceVector)
					--print(dot)
					if 0 < dot then
						--print("Отклонение снаряда щитом")
						angleCurrent=GetUnitFacing(DamagingUnit)
						BlzSetSpecialEffectPosition(bullet,MoveX(x,speed*2,angleCurrent),MoveY(y,speed*2,angleCurrent),z-2)
					else
						DestroyEffect(bullet)
						DestroyTimer(GetExpiredTimer())
					end
				else
					DestroyEffect(bullet)
					DestroyTimer(GetExpiredTimer())
				end
			else
				DestroyEffect(bullet)
				DestroyTimer(GetExpiredTimer())
			end

			if not DamagingUnit then
				DestroyEffect(bullet)
				DestroyTimer(GetExpiredTimer())
			end
		end
	end)
end

function SingleCannon(hero,angle,modelEff,damage)
	if not angle then angle=GetUnitFacing(hero) end
	local x=MoveX(GetUnitX(hero),80,angle)
	local y=MoveY(GetUnitY(hero),80,angle)
	--print("x создания="..x.." y="..y..GetUnitName(hero))
	if not modelEff then modelEff="Abilities/Weapons/BoatMissile/BoatMissile.mdl" end
	CreateAndForceBullet(hero,angle,30,modelEff,x,y,damage)
end

---@param board real
function BoardCannon(hero,board,cannon) -- left -90 right+90
	local facing=GetUnitFacing(hero)
	local angle=facing+board
	local x=MoveX(GetUnitX(hero),60,angle)
	local y=MoveY(GetUnitY(hero),60,angle)
	local inverse=-1
	if board==-90 then inverse =1 end
	local x1=MoveX(x,30,facing)
	local y1=MoveY(y,30,facing)
	local x2=MoveX(x,-30,facing)
	local y2=MoveY(y,-30,facing)
	local x3=MoveX(x,-60,facing)
	local y3=MoveY(y,-60,facing)
	local x4=MoveX(x,-90,facing)
	local y4=MoveY(y,-90,facing)
	if cannon>=1 then
		CreateAndForceBullet(hero,angle,30,"Abilities/Weapons/BoatMissile/BoatMissile.mdl",x,y)--Центр
	end
	if cannon>=2 then
		CreateAndForceBullet(hero,angle+5*inverse,30,"Abilities/Weapons/BoatMissile/BoatMissile.mdl",x1,y1)--Спереди
	end
	if cannon>=3 then
		CreateAndForceBullet(hero,angle-5*inverse,30,"Abilities/Weapons/BoatMissile/BoatMissile.mdl",x2,y2)--Сзади 1
	end
	if cannon>=4 then
		CreateAndForceBullet(hero,angle-10*inverse,30,"Abilities/Weapons/BoatMissile/BoatMissile.mdl",x3,y3)--Сзади 2
	end
	if cannon>=5 then
		CreateAndForceBullet(hero,angle-15*inverse,30,"Abilities/Weapons/BoatMissile/BoatMissile.mdl",x4,y4)--Сзади 3
	end
end

function CreateFire(hero,board)
	local data=HERO[GetPlayerId(GetOwningPlayer(hero))]
	local facing=GetUnitFacing(hero)
	--board=board+90
	local angle=facing+board
	local x=MoveX(GetUnitX(hero),60,angle)
	local y=MoveY(GetUnitY(hero),60,angle)

	--local fire=AddSpecialEffect("FireGun.mdl",x,y)
	local fire=AddSpecialEffect("Flame Thrower.mdl",x,y)
	local inverse=1
	if board==1 then inverse=-1 end
	BlzSetSpecialEffectMatrixScale(fire,1,1,1)

	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		--local xf,yf,zf=BlzGetLocalSpecialEffectX(fire),BlzGetLocalSpecialEffectY(fire),BlzGetLocalSpecialEffectZ(fire)
		local xhero,yhero=GetUnitX(hero),GetUnitY(hero)
		--local nx,ny=MoveX(xhero,80,GetUnitFacing(hero)-board),MoveY(yhero,80,GetUnitFacing(hero)-board)
		local nx,ny=MoveXY(xhero,yhero,10,GetUnitFacing(hero)-board)
		local z=GetUnitZ(hero)
		BlzSetSpecialEffectPosition(fire,nx,ny,z-140+89)
		BlzPlaySpecialEffect(fire,ANIM_TYPE_BIRTH)
		--HeroUpdateWeaponCharges(hero,4,1)

		--print("z Огня="..BlzGetLocalSpecialEffectZ(fire))

		if board==0 then
			BlzSetSpecialEffectYaw(fire,math.rad(GetUnitFacing(hero)+board-5-90))
			UnitDamageLine(hero,10,nx,ny,80,80*6,GetUnitFacing(hero)+board-5-90,GetUnitZ(hero)+50)
		else
			local problem=GetUnitFacing(hero)+board-5+90
			--print("проблемный угол="..problem)
			BlzSetSpecialEffectYaw(fire,math.rad(problem))
			UnitDamageLine(hero,10,nx,ny,80,80*6,GetUnitFacing(hero)+board-5+90,GetUnitZ(hero)+50)
		end
		if (data.ReleaseRMB==false and board==0)  then
			--print("отключен вручную")
			DestroyEffect(fire)
			DestroyTimer(GetExpiredTimer())
			BlzPlaySpecialEffect(fire,ANIM_TYPE_DEATH)
		end
		if (data.ReleaseLMB==false and board==1)  then
			DestroyEffect(fire)
			DestroyTimer(GetExpiredTimer())
			BlzPlaySpecialEffect(fire,ANIM_TYPE_DEATH)
		end
		if Ammo[GetPlayerId(GetOwningPlayer(hero))].Count.Fire<=0 then
			--print("закончились заряды")
			DestroyEffect(fire)
			DestroyTimer(GetExpiredTimer())
			BlzPlaySpecialEffect(fire,ANIM_TYPE_DEATH)
		end
		HeroUpdateWeaponCharges(hero,4,1)
	end)
end

function CreateBarrel(hero,angle,dist)
	local x,y=GetUnitXY(hero)
	local id=GetPlayerId(GetOwningPlayer(hero))
	local barrel=AddSpecialEffect("Barrel_Unit.mdl",x,y)
	if angle==nil then	angle=AngleBetweenXY(x,y,GetPlayerMouseX[id],GetPlayerMouseY[id])/bj_DEGTORAD end
	if dist==nil then dist=DistanceBetweenXY(x,y,GetPlayerMouseX[id],GetPlayerMouseY[id]) end
	if dist>=200 then dist=200 end
	if dist<=100 then dist=100 end
	BlzSetSpecialEffectYaw(barrel,math.rad(angle))
	BlzPlaySpecialEffect(barrel,ANIM_TYPE_WALK)
	BlzSetSpecialEffectZ(barrel,GetUnitZ(hero))
	JumpEffect(barrel,dist/20,150,angle,dist,hero,1)
end

function CreateArtToss(hero,effectmodel,angle,dist,flag)
	local x,y=GetUnitXY(hero)
	local id=GetPlayerId(GetOwningPlayer(hero))
	local art=AddSpecialEffect(effectmodel,x,y)
	if angle==nil then angle=AngleBetweenXY(x,y,GetPlayerMouseX[id],GetPlayerMouseY[id])/bj_DEGTORAD end
	if dist==nil then dist=DistanceBetweenXY(x,y,GetPlayerMouseX[id],GetPlayerMouseY[id]) end
	if dist>=1200 then dist=1200 end
	if dist<=200 then dist=200 end
	local speed=dist/50
	BlzSetSpecialEffectYaw(art,math.rad(angle))
	---BlzPlaySpecialEffect(barrel,ANIM_TYPE_WALK)
	if flag==nil then
		JumpEffect(art,speed,700,angle,dist,hero,2)
	elseif flag==3 then--Стрельба простых пушек
		JumpEffect(art,speed*2,200,angle,dist*.7,hero,flag,GetUnitZ(hero)+150)--осколочный мелкий
	else
		JumpEffect(art,speed,300,angle,dist,hero,flag)--любой другой
	end
end

function JumpEffect(eff,speed, maxHeight,angle,distance,hero,flag,ZStart)
	local i=0
	if ZStart==nil then ZStart=GetUnitZ(hero) end
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		local x,y=BlzGetLocalSpecialEffectX(eff),BlzGetLocalSpecialEffectY(eff)
		local nx,ny=MoveXY(x,y,speed,angle)
		local f=ParabolaZ(maxHeight,distance,i*speed)+ZStart
		local z=BlzGetLocalSpecialEffectZ(eff)
		local zGround=GetTerrainZ(nx,ny)
		BlzSetSpecialEffectPosition(eff,nx,ny,f)
		i=i+1
		if i==10 then
			if flag==4 then
				EffectAddRegistrationCollision(eff,hero,150,0,1)
			end
		end


		if z<=zGround and i>5 then
			if flag==nil then -- без флага

			end

			if flag==1 then -- бочка со взрывчаткой и таймером
				BlzPlaySpecialEffect(eff,ANIM_TYPE_STAND)
				if CreateTorrent(nx,ny) then
					WaveEffect(eff)
					EffectAddExplodedTimer(eff,3,hero)
				else
					--BlzSetSpecialEffectZ(eff,z+30)
					ExplodeEffect(eff,3)
					UnitDamageArea(hero,500,nx,ny,250)
				end
			elseif flag==2 then -- навесной разделяющийся
				CreateTorrent(nx,ny)
				if ExplodeEffect(eff,3)==false then-- взрыв не на воде
					--print("разделяемся")
					--[[for i=1,7 do
						local cluster=AddSpecialEffect("Abilities/Spells/Other/Volcano/VolcanoMissile.mdl",nx,ny)
						BlzSetSpecialEffectZ(cluster,z)
						BlzSetSpecialEffectScale(cluster,0.4)
						JumpEffect(cluster,10,GetRandomInt(50,150),GetRandomInt(0,359),GetRandomInt(50,200),hero,3)
					end]]
				end
				DestroyEffect(eff)
				UnitDamageArea(hero,210,nx,ny,150,127)
				--print("урон прошел")
			elseif  flag==3 then-- осколки
				CreateTorrent(nx,ny)
				DestroyEffect(eff)
				UnitDamageArea(hero,100,nx,ny,200,z)
			elseif  flag==4 then-- выпрыгнул гоблин
				if CreateTorrent(nx,ny,0.1) then
					BlzSetSpecialEffectZ(eff,-90)

				else
					DestroyEffect(eff)
				end
			end
			DestroyTimer(GetExpiredTimer())
		end
	end)
end

function EffectAddRegistrationCollision(eff,hero,range,duration,flag)
	local sec=duration
	local infinity=false
	if duration==nil or duration==0 then infinity=true end
	TimerStart(CreateTimer(), 0.1, true, function()
		local x,y,z=BlzGetLocalSpecialEffectX(eff),BlzGetLocalSpecialEffectY(eff),BlzGetLocalSpecialEffectZ(eff)
		local e=nil
		GroupEnumUnitsInRange(perebor,x,y,range,nil)
		while true do
			e = FirstOfGroup(perebor)
			if e == nil then break end
			if UnitAlive(e) and IsUnitZCollision(e,z) then
				--print("Эффет столкнулся с "..GetUnitName(e))
				if flag==1 then-- орк в уточке
					if IsUnitType(hero,UNIT_TYPE_HERO) then
						RemoveEffect(eff)
						PlaySoundAtPointBJ( gg_snd_Load, 100, Location(x,y), 0 )
						DestroyTimer(GetExpiredTimer())
						HealUnit(hero,100)
						--print("Лечение подбор орка для"..GetUnitName(hero))
					end
				elseif flag==2 then-- глубоководная мина
					if IsUnitEnemy(e,GetOwningPlayer(hero)) then
						UnitDamageArea(hero,100,x,y,200,z)
					end
				end
			end
			GroupRemoveUnit(perebor,e)
		end
		sec=sec-1
		if sec<0 and infinity==false then
			DestroyEffect(eff)
			DestroyTimer(GetExpiredTimer())
		end
	end)
end

function CreateLightingCharges(hero)
	local data=HERO[GetPlayerId(GetOwningPlayer(hero))]
	--print("1")
	TimerStart(CreateTimer(), 0.7, true, function()
		if data.ReleaseRMB then
			HeroUpdateWeaponCharges(hero,7,-1)
			FindEnemyForLighting(hero,500)
		else
			DestroyTimer(GetExpiredTimer())
		end
	end)
end

function FindEnemyForLighting(hero, range)
	local e=nil
	local x,y=GetUnitXY(hero)

	GroupEnumUnitsInRange(perebor,x,y,range,nil)
	--print("2")
	while true do
		e = FirstOfGroup(perebor)
		if e == nil then break end
		if UnitAlive(e) and IsUnitEnemy(e,GetOwningPlayer(hero)) and IsUnitVisible(e,GetOwningPlayer(hero))  then
			--print("найден враг")
			if HeroUpdateWeaponCharges(hero,7,1) then
				local dummy=CreateUnit(GetOwningPlayer(hero), DummyID, GetUnitX(hero), GetUnitY(hero), 0)
				SetUnitZ(dummy,GetUnitZ(hero)+90)
				UnitAddAbility(dummy,FourCC('A00B'))-- молния
				UnitApplyTimedLife(dummy,DummyID,1)
				if not Cast(dummy,0,0,e) then
					HeroUpdateWeaponCharges(hero,7,-1)
				end
			else
				DestroyTimer(GetExpiredTimer())
			end
		end
		GroupRemoveUnit(perebor,e)
	end
end

function SawActivated(hero)
	local data=HERO[GetPlayerId(GetOwningPlayer(hero))]
	local saw=AddSpecialEffect(SawDiskModel,GetUnitXY(hero))
	local id=UnitGetPid(hero)
	BlzSetSpecialEffectScale(saw,0.7)
	--HeroUpdateWeaponCharges(hero,8,-1)
	--print("пила активирована")
	local CurAngle=GetUnitFacing(hero)
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		local x,y=GetUnitXY(hero)
		local angle=AngleBetweenXY(x,y,GetPlayerMouseX[id],GetPlayerMouseY[id])/bj_DEGTORAD
		--angle=math.abs(angle)
		--print(angle)
		--if CurAngle>=angle-10 and CurAngle<=angle+10 then
		if data.ReleaseRMB then
			if CurAngle <=angle then
				if CurAngle<angle-10 then
					CurAngle=CurAngle+5
				end
			else
				CurAngle=CurAngle-5
			end
		end

		local nx,ny=MoveXY(x,y,130,angle)

		if UnitDamageArea(hero,30,nx,ny,150,GetUnitZ(hero)+50,"Abilities/Weapons/AncestralGuardianMissile/AncestralGuardianMissile.mdl") then
			--[[if HeroUpdateWeaponCharges(hero,8,1) then
			else
				DestroyTimer(GetExpiredTimer())
				DestroyEffect(saw)
			end]]
		end


		BlzSetSpecialEffectPosition(saw,nx,ny,GetUnitZ(hero)+20)
		if  data.WeaponIndex~=8 then
			DestroyTimer(GetExpiredTimer())
			DestroyEffect(saw)
		end
	end)
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
			--print(GetUnitName(caster).." атаковал "..GetUnitName(target))
			if IsUnitType(target,UNIT_TYPE_HERO) then --Prometheus Прометей
				--print("Герой получил урон")
				local data=HERO[GetPlayerId(GetOwningPlayer(target))]

				if data.Reflection and data.Perk10 then -- парирование с талантом
					--print("Урон парирован")
					local eff=AddSpecialEffect("DefendCaster",GetUnitXY(target))
					PlaySoundAtPointBJ( gg_snd_Reflect, 100, RemoveLocation(Location(GetUnitXY(target))), 0 )
					BlzSetSpecialEffectYaw(eff,math.rad(GetUnitFacing(target)))
					DestroyEffect(eff)
					BlzSetEventDamage(0)
				end


				if data.ReleaseLMB and data.Perk14 then  -- Зажата левая кнопка мыши и есть щит
					local AngleUnitRad = math.rad(GetUnitFacing(target))  -- data.LastTurn
					local AngleSource = math.deg(AngleBetweenXY(GetUnitX(caster), GetUnitY(caster), GetUnitX(target), GetUnitY(target)))
					local Vector3 = wGeometry.Vector3
					local UnitFacingVector = Vector3:new(math.cos(AngleUnitRad), math.sin(AngleUnitRad), 0)  -- вектор поворота юнита
					local AngleSourceVector = Vector3:new(GetUnitX(caster) - GetUnitX(target), GetUnitY(caster) - GetUnitY(target), 0)  -- вектор получения от урона (by Doc)
					AngleSourceVector = AngleSourceVector:normalize()
					local dot = UnitFacingVector:dotProduct(AngleSourceVector)
					local dist=damage
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
							DestroyEffect(BlzSetSpecialEffectScale(AddSpecialEffect("D9_blood_effect1",GetUnitXY(target))),0.1)
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
						DestroyEffect(BlzSetSpecialEffectScale(AddSpecialEffect("D9_blood_effect1",GetUnitXY(target))),0.1)
						DestroyEffect(BlzSetSpecialEffectScale(AddSpecialEffect("D9_blood_effect1",GetUnitXY(caster))),0.1)
					end
				end
			end
			--любой получил урон
			if GetUnitTypeId(target)==FourCC('e009')  then --урон по тинику
				--local x,y=GetUnitXY()
				BlzSetEventDamage(0)
				local AngleSource = math.deg(AngleBetweenXY(GetUnitX(caster), GetUnitY(caster), GetUnitX(target), GetUnitY(target)))
				local eff=AddSpecialEffect("DefendCaster",GetUnitXY(target))
				BlzSetSpecialEffectYaw(eff,math.rad(AngleSource-180))
				DestroyEffect(eff)
				PlaySoundAtPointBJ( gg_snd_Reflect, 100, RemoveLocation(Location(GetUnitXY(target))), 0 )


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
				TimerStart(CreateTimer(), 2, false, function()
					IssueImmediateOrder(target,"stop")
					DestroyTimer(GetExpiredTimer())
				end)

			end
		end
	end)
end




perebor=CreateGroup()
function UnitDamageArea(u,damage,x,y,range,ZDamageSource,EffectModel)
	local isdamage=false
	local e=nil
	local hero=nil
	--if ZDamageSource==nil then ZDamageSource=GetUnitZ(u)+60 end

	--print("Поиск целей в на высоте "..ZDamageSource)
	GroupEnumUnitsInRange(perebor,x,y,range,nil)
	while true do
		e = FirstOfGroup(perebor)
		if e == nil then break end
		if UnitAlive(e) and IsUnitEnemy(e,GetOwningPlayer(u))  then --and IsUnitZCollision(e,ZDamageSource)  -- момент урона
			if EffectModel~=nil then
				--print("эффеет")
				local DE=AddSpecialEffect(EffectModel,GetUnitX(e),GetUnitY(e))
				--BlzSetSpecialEffectZ(DE,ZDamageSource)
				DestroyEffect(DE)
			end
			if IsUnitType(u,UNIT_TYPE_HERO) then
				local data=HERO[GetPlayerId(GetOwningPlayer(u))]
				--if data.

				if data.HaveAFire then
					damage=damage*5
					data.HaveAFire=false
					if not data.Perk16 then
						UnitRemoveAbility(u,FourCC('A006'))
					end
					FlyTextTagCriticalStrike(e,I2S(R2I(damage)),GetOwningPlayer(u))
				end

			end
			UnitDamageTarget( u, e, damage, true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
			isdamage=true
			hero=e
		end
		--ремонт
		if  UnitAlive(e) and IsUnitAlly(e,GetOwningPlayer(u)) and e~=u and true then -- момент ремонта
			local data=HERO[GetPlayerId(GetOwningPlayer(u))]
			if GetUnitTypeId(e)==FourCC('n007') then-- попытка ударить свинку лечилку
				if DistanceBetweenXY(GetUnitX(u),GetUnitY(u),GetUnitXY(e))<=150 then
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
			local data=HERO(UnitGetPid(hero))
			--print("атака по мертвому "..GetUnitName(hero))
			data.IsWood=true
		end
	end)
	return content
end

function CreateFreeWood(x,y)
	local  new=CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), FourCC('e002'),x,y , 0)
	UnitAddAbility(new,FourCC('A000'))
	IssueImmediateOrder(new,"WindWalk")
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
			--print("x="..BlzGetTriggerPlayerMouseX().." y="..BlzGetTriggerPlayerMouseY())
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
HERO = {}
do
	local InitGlobalsOrigin = InitGlobals -- записываем InitGlobals в переменную
	function InitGlobals()
		InitGlobalsOrigin() -- вызываем оригинальную InitGlobals из переменной
		InitGameCore()
		InitMouseMoveTrigger()
		InitDamage()
		InitUnitDeath()
		InitAllZones()
		LeavePlayer()
		HeroEnterSaws()


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
	EnableDragSelect(false, false)
	CreateWoodFrame()
	HideEverything()
	TimerStart(CreateTimer(), 0.5, false, function()
		--ButtonPress()
		--CreateLanguageDialog()
		for i=0,3 do
			if GetPlayerSlotState(Player(i)) == PLAYER_SLOT_STATE_PLAYING and GetPlayerController(Player(i)) == MAP_CONTROL_USER then
				PerkButtonLineNonLocal(i,0)
				CreateStatusBar(i)
			end
		end
	end)
	TimerStart(CreateTimer(), 1, false, function()
		CreateMouseHelper()

		--PerkButtonLineNonLocal()-- табличка перков новая
	end)
	TestFrame()
	--VisualUnlock()--убирание выделение каждые 10 сек

	CreateAndStartClock()
	--CreateStatusBar() --нанель статусов, ещё не готова
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
			ForcesCount = 0,
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
			PlayerIsLeave = false,
			--ChargeEff=nil,
			---накопление перков
			SingleWoodCount = 0,
			RevoltSec = 0,
			Dies = 0,
			TotalWay = 0,
			Kills = 0,
			Repairs = 0,
			Heals = 0,
			KodoCount = 0,
			FireCount = 0,
			HaveAFire = false,
			StoneCount = 0,
			WolfCount = 0,
			WolfHelper = nil,
			TreeCountOnTB = 0,
			SheepCount = 0,
			---открытие перков
			Perk1 = false, --Работник
			Perk2 = false, -- Бунт
			Perk3 = false, -- Суицидник
			Perk4 = false, -- Лесной болван
			Perk5 = false, -- Убийца
			Perk6 = false, -- Ученика кузнеца
			Perk7 = false, -- Ожирение
			Perk7A = false, -- Ожирение 2 степени
			Perk8 = false, -- Кодой
			Perk9 = false, -- Кирка
			Perk10 = false, -- Кирка
			Perk11 = false, -- Кирка
			Perk12 = false, -- ледяной щит
			Perk13 = false, -- Кирка
			Perk14 = true, -- Щит 50 всегда ВКл, а то щит сломается
			Perk14A = true, -- щит 100
			Perk15 = false, -- овечья болезнь
			Perk16 = false, -- Фаерболы
			Perk17 = false, --Рывок
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
			VisualSelectorFrame = {}
		}

		if HERO[i] then
			local hero = HERO[i].UnitHero
			SelectUnitForPlayerSingle(hero, GetOwningPlayer(hero))
			RegisterCollision(hero)
			HealthBarAdd(hero)
			AddSpecialEffectTarget("GeneralHeroGlow", hero, "origin")
			SetUnitColor(hero, ConvertPlayerColor(i))
			--UnitAddAbility(hero,FourCC('A00O')) --Режим бАгов

			if GetPlayerController(GetOwningPlayer(hero)) == MAP_CONTROL_COMPUTER then
				StartPeonAI(hero)
			end
			--print("111111")
		end
	end

	-----------------------------------------------------------------OSKEY_W
	local gg_trg_EventUpW = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
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
			SetUnitAnimationByIndex(data.legs, 16)
		end
	end)
	local TrigDepressW = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
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
		local player = Player(i)
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
			SetUnitAnimationByIndex(data.legs, 16)
		end
	end)
	local TrigDepressS = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
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
		local player = Player(i)
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
			SetUnitAnimationByIndex(data.legs, 16)
		end
	end)
	local TrigDePressD = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
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
		local player = Player(i)
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
			SetUnitAnimationByIndex(data.legs, 16)
		end
	end)
	local TrigDePressA = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
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
		local player = Player(i)
		TriggerRegisterPlayerEvent(TrigPressLMB, Player(i), EVENT_PLAYER_MOUSE_DOWN)
	end
	TriggerAddAction(TrigPressLMB, function()
		--print("any")
		if BlzGetTriggerPlayerMouseButton() == MOUSE_BUTTON_TYPE_RIGHT then
			--это леваый клик всё внутри LMB

			local pid = GetPlayerId(GetTriggerPlayer())
			local data = HERO[pid]
			if not data.ReleaseLMB then
				data.ReleaseLMB = true
			end
			if data.ReleaseRMB and data.ShieldForce then
				-- толчек щитом
				--print("mini force")
				data.ShieldForce = false
				local x, y = MoveXY(GetUnitX(data.UnitHero), GetUnitY(data.UnitHero), 55, GetUnitFacing(data.UnitHero))
				local IsDamage, DamagingUnit = UnitDamageArea(data.UnitHero, 1, x, y, 100)
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
				UnitAddAbility(data.UnitHero, FourCC('A007'))
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
	end)
	local TrigDePressLMB = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		TriggerRegisterPlayerEvent(TrigDePressLMB, Player(i), EVENT_PLAYER_MOUSE_UP)
	end

	TriggerAddAction(TrigDePressLMB, function()
		--print("any")
		if BlzGetTriggerPlayerMouseButton() == MOUSE_BUTTON_TYPE_RIGHT then
			local pid = GetPlayerId(GetTriggerPlayer())
			local data = HERO[pid]
			data.ReleaseLMB = false
			UnitRemoveAbility(data.UnitHero, FourCC('A007'))
			UnitRemoveAbility(data.UnitHero, FourCC('A00I'))
		end
	end)
	-----------------------------------------------------------------RMB swap LMB
	local TrigPressRMB = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		TriggerRegisterPlayerEvent(TrigPressRMB, Player(i), EVENT_PLAYER_MOUSE_DOWN)
	end

	TriggerAddAction(TrigPressRMB, function()
		--print("any")
		if GetLocalPlayer() == GetTriggerPlayer() then
			EnableUserControl(true)
			--print("клик левой")
		end
		if BlzGetTriggerPlayerMouseButton() == MOUSE_BUTTON_TYPE_LEFT then

			-- это правая кнопка
			local pid = GetPlayerId(GetTriggerPlayer())
			local data = HERO[pid]
			if not data.ReleaseRMB then
				data.ReleaseRMB = true
			end
			if data.ReleaseLMB and data.ChargeIsReady and data.Perk17 then
				-- И талант на рывок
				UnitAddVectorForce(data.UnitHero, data.LastTurn, 30, 300, false)
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

				TimerStart(CreateTimer(), 2, false, function()
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
	end)
	local TrigDePressRMB = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
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
					SetUnitAnimationByIndex(hero, 11)
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
			ForceUIKeyBJ(GetOwningPlayer(hero), "M")
			IssueImmediateOrder(hero, "stop")
		end
	end)

	------------------------------ТЕСТ АНИМАЦИЙ
	local ai = 0
	TimerStart(CreateTimer(), 2, true, function()
		local data = HERO[0]
		local hero = data.legs
		--SetUnitAnimationByIndex(hero,ai)
		--SetUnitAnimationByIndex(hero,8)
		--print(ai)
		ai = ai + 1
	end)



	--local sec=0
	--local sec2=0
	--local secattack=0
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		for i, data in pairs(HERO) do
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
			local WalkCart = false

			local turn = 0
			if GetPlayerController(GetOwningPlayer(hero)) == MAP_CONTROL_USER and GetPlayerSlotState(GetOwningPlayer(hero)) == PLAYER_SLOT_STATE_PLAYING then
				if not data.IsFrizzyDisabled then
					turn = AngleBetweenXY(x, y, GetPlayerMouseX[id], GetPlayerMouseY[id]) / bj_DEGTORAD
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

			local Vector3 = wGeometry.Vector3



			--Камера
			if UnitAlive(hero) then
				SetCameraQuickPosition(GetUnitX(hero), GetUnitY(hero))
				SetCameraTargetControllerNoZForPlayer(p, hero, 10, 10, true) -- не дергается
			else
				SetCameraQuickPosition(GetUnitX(data.legs), GetUnitY(data.legs))
				SetCameraTargetControllerNoZForPlayer(GetOwningPlayer(data.legs), data.legs, 10, 10, true)
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
			if not data.Perk2 then
				if data.RevoltSec >= 300 then
					data.Perk2 = true
					PerkUnlocker(data, 2)
					--print("Рабочий поднял бунт")
					MakeUnitAllEnemy(hero)
				end
			end
			if data.ReleaseRMB then
				data.MHoldSec = data.MHoldSec + TIMER_PERIOD
			end

			local aSpeed = 0.7
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
					data.LastTurn = turn
				end
			else
				turn = data.LastTurn
				--print("нет")
			end

			if GetPlayerController(GetOwningPlayer(hero)) == MAP_CONTROL_COMPUTER or data.PlayerIsLeave then
				angle = data.LastTurn
				if data.RangeDesMove > 100 then
					IiMoving = true
				end
			end

			local dif = 100
			if angle + dif > turn and angle - dif < turn then
				SetUnitTimeScale(data.legs, speed * .1)
			else
				SetUnitTimeScale(data.legs, -1 * (speed * .1))
			end

			--Любой тик движения
			local k = data.ForcesCount
			local WASDMoving = Vector3:copyFromUnit(hero)
			local newPos = WASDMoving

			if data.AfterMoving then
				-- вектор внешней силы if false then--
				--print("true")
				local f = 0
				for i = 1, k do
					if data.ForceRemain[i] > 0 then
						--print("Внешняя сила="..data.ForceRemain[i])

						f = f + 1
						newPos = newPos + WASDMoving:yawPitchOffset(data.ForceSpeed[i], data.ForceAngle[i] * (math.pi / 180), 0.0)
						--newPos=newPos+Vector3:new(-5, 0, 0)
						--newPos=WASDMoving+WASDMoving:yawPitchOffset( speed, angle * ( math.pi / 180 ), 0.0 )
						--newPos=Vector3:copyFromUnit(hero)+Vector3:new(data.ForceSpeed[i], data.ForceAngle[i] * ( math.pi / 180 ), 0)
						data.ForceRemain[i] = data.ForceRemain[i] - data.ForceSpeed[i]
					else
						if data.IsForce[i] then
							data.IsForce[i] = false
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
							SetUnitAnimationByIndex(data.legs, 16)
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
						SetUnitAnimationByIndex(data.legs, 11)
					end
					startwalk = false
					BlzSetUnitFacingEx(data.legs, turn)
				end
			end

			if data.AfterMoving == false then
				-- вектор внешней силы
				--print("false")
				local f = 0
				for i = 1, k do
					if data.ForceRemain[i] > 0 then
						--print("Внешняя сила="..data.ForceRemain[i])
						if data.OnCharge then
							--print("В процессе толкания")
							local IsDamage, DamagingUnit = UnitDamageArea(hero, 1, GetUnitX(hero), GetUnitY(hero), 150)
							local angleU = AngleBetweenUnits(hero, DamagingUnit)
							--print(angleU)
							if not DamagingUnit then
								--print("толкаемый герой не определён")
							end

							if data.Perk12 then
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
						newPos = newPos + WASDMoving:yawPitchOffset(data.ForceSpeed[i], data.ForceAngle[i] * (math.pi / 180), 0.0)
						--newPos=newPos+Vector3:new(-5, 0, 0)
						--newPos=WASDMoving+WASDMoving:yawPitchOffset( speed, angle * ( math.pi / 180 ), 0.0 )
						--newPos=Vector3:copyFromUnit(hero)+Vector3:new(data.ForceSpeed[i], data.ForceAngle[i] * ( math.pi / 180 ), 0)
						data.ForceRemain[i] = data.ForceRemain[i] - data.ForceSpeed[i]
					else
						if data.IsForce[i] then
							data.IsForce[i] = false
						end
					end
				end
				if f == 0 then
					data.ForcesCount = 0
					data.IsDisabled = false
					SetUnitPathing(hero, true)
					if data.OnCharge then
						data.OnCharge = false
						UnitRemoveAbility(hero, FourCC('A00E')) --красный
						UnitRemoveAbility(hero, FourCC('A00F')) --Синий
						UnitDamageArea(hero, 100, GetUnitX(hero), GetUnitY(hero), 150)
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
							SetUnitAnimationByIndex(hero, 7)
						else
							SetUnitAnimationByIndex(hero, 3)
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
									SetUnitAnimationByIndex(hero, 11)
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
									SetUnitAnimationByIndex(hero, 16)
								else
									SetUnitAnimationByIndex(hero, 1)
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

			if UnitAlive(hero) then
				SetUnitPositionSmooth(hero, newPos.x, newPos.y)
				--Синхронизация ног
				SetUnitX(data.legs, newPos.x)
				SetUnitY(data.legs, newPos.y)
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
			if UnitAlive(hero) then
				SetUnitFacing(hero, turn)
			else
				ResetUnitAnimation(data.legs)
			end
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


---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 19.04.2020 17:39
function LeavePlayer()
	local this = CreateTrigger()
	TriggerRegisterPlayerEventLeave(this, Player(0))
	TriggerRegisterPlayerEventLeave(this, Player(1))
	TriggerRegisterPlayerEventLeave(this, Player(2))
	TriggerRegisterPlayerEventLeave(this, Player(3))

	TriggerAddAction(this, function()
		local p=GetTriggerPlayer()
		print("Разумом "..GetPlayerName(p).." овладел ИИ")
		if BlzGetLocale()=="ruRU" then
			print("|cff8080ffСистема: |r".."Разумом "..GetPlayerName(p).." овладел ИИ")
		else
			print("|cff8080ffSystem: |r"..GetPlayerName(p).." Lose control")
		end
		local data=HERO[GetPlayerId(p)]
		data.PlayerIsLeave=true
		StartPeonAI(data.UnitHero)
	end)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 23.01.2020 20:11
function InitUnitDeath()
	local gg_trg_DEADGUI = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(gg_trg_DEADGUI, EVENT_PLAYER_UNIT_DEATH)--меня полностью устраивает это событие
	TriggerAddAction(gg_trg_DEADGUI, function()
		--print("EventDead")
		local DeadUnit=GetTriggerUnit()--умерший
		local Killer=GetKillingUnit()--убийца

		if IsUnitType(DeadUnit,UNIT_TYPE_HERO) then --герой умер
			local x,y=GetUnitXY(DeadUnit)
			local PD=GetOwningPlayer(DeadUnit)
			local pid=GetPlayerId(PD)
			local data=HERO[pid]

			--data.CartUnit=nil
			--SetUnitOwner(data.CartUnit,Player(PLAYER_NEUTRAL_PASSIVE),true)
			--SetUnitAnimationByIndex(data.CartUnit,0)
			if data.Perk15 then -- взрыв от смерти
				SetUnitExploded(DeadUnit, true)
				DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\Mortar\\MortarMissile",x,y))
				UnitDamageArea(DeadUnit,200,x,y,250)
			end
			data.Dies=data.Dies+1
			if data.Dies==15 then
				if not data.Perk3 then
					BlzSetUnitMaxHP(DeadUnit,GetUnitState(DeadUnit,UNIT_STATE_MAX_LIFE)+100)
				end
				data.Perk3=true
				PerkUnlocker(data,3)
			end
			if data.IsWood then
				CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), FourCC('e002'), x,y, 0)--дровишко
			end
			TimerStart(CreateTimer(), 2.5, false, function()

				--data.Alive=true
				if data.Perk15 then
					if data.ReviveOnBase then
						ReviveHero(DeadUnit,GetPlayerStartLocationX(PD),GetPlayerStartLocationY(PD),true)
						data.ReviveOnBase=false
					else
						ReviveHero(DeadUnit,x,y,true)
						data.ReviveOnBase=true
					end

				else
					ReviveHero(DeadUnit,GetPlayerStartLocationX(PD),GetPlayerStartLocationY(PD),true)
				end
				SelectUnitForPlayerSingle(DeadUnit,PD)
				data.IsWood=false
				MakeUnitAllAlly(DeadUnit)
				data.RevoltSec=0
				data.Perk2=false
				DestroyTimer(GetExpiredTimer())
			end)
		end

		if IsUnitType(Killer,UNIT_TYPE_HERO)  and true then --герои убил кого-то
			--print("герой убил")
			local PD=GetOwningPlayer(Killer)
			local pid=GetPlayerId(PD)
			local data=HERO[pid]

			if data.Perk7A and DistanceBetweenXY(GetUnitX(Killer),GetUnitY(Killer),GetUnitXY(DeadUnit))<=150 then
				local amount=BlzGetUnitMaxHP(Killer)*0.03
				HealUnit(Killer,amount)
			end

			if data.Perk15 then
				SetUnitExploded(DeadUnit, true)
				local x,y=GetUnitXY(DeadUnit)
				DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\Mortar\\MortarMissile",x,y))
				--UnitDamageArea(Killer,200,x,y,250)
			end


			data.Kills=data.Kills+1
			data.RevoltSec=0
			if data.Kills==5 then
				if not data.Perk5 then
					BlzSetUnitBaseDamage(Killer,BlzGetUnitBaseDamage(Killer,0)*2,0)
				end
				data.Perk5=true
				PerkUnlocker(data,5)
			end
			if GetUnitTypeId(DeadUnit)==FourCC('n002') then--голем
				data.StoneCount=data.StoneCount+1

				if data.StoneCount==1 then
					--UnitAddAbility(Killer,FourCC('A007'))
					data.Perk14A=true
					PerkUnlocker(data,14)
				end
			end
			if GetUnitTypeId(DeadUnit)==FourCC('n001') then--овцы овца

				data.SheepCount=data.SheepCount+1
				if data.SheepCount==40 then
					data.Perk15=true
					UnitAddAbility(Killer,FourCC('A00J'))
					PerkUnlocker(data,15)
				end
			end
			if GetUnitTypeId(DeadUnit)==FourCC('e001') then-- убил энта
				CreateFreeWood(GetUnitXY(DeadUnit))
			end
			if GetUnitTypeId(DeadUnit)==FourCC('n000') then--волк
				data.WolfCount=data.WolfCount+1

				if data.WolfCount==5 then
					--UnitAddAbility(Killer,FourCC('A007'))
					AddSpecialEffectTarget("Wolf Cap by Sunchips",Killer,"head")
					data.WolfHelper=CreateUnit(PD,FourCC('o006'),GetUnitX(Killer),GetUnitY(Killer),0)
					UnitAddAbility(data.WolfHelper,FourCC('Aloc'))

					if not data.Perk13 then
						data.Perk13=true
						PerkUnlocker(data,13)
					end

					TimerStart(CreateTimer(), 1, true, function()
						local x,y=GetUnitXY(Killer)
						local distance=DistanceBetweenXY(x,y,GetUnitX(data.WolfHelper),GetUnitY(data.WolfHelper))
						if distance>600 then
							local effmodel="Abilities\\Spells\\NightElf\\Blink\\BlinkCaster"
							DestroyEffect(AddSpecialEffect(effmodel,GetUnitXY(data.WolfHelper)))
							DestroyEffect(AddSpecialEffect(effmodel,x,y))
							local r=GetRandomInt(-50,50)
							SetUnitPosition(data.WolfHelper,x+r,y+r)
						else
							if GetUnitCurrentOrder(data.WolfHelper)~=String2OrderIdBJ("Attack") then
								local rx,ry=x+GetRandomInt(-500,500),y+GetRandomInt(-500,500)
								IssuePointOrder(data.WolfHelper,"attack", rx,ry)
							end
						end
					end)


					if GetLocalPlayer()==PD then
						BlzFrameSetVisible(PerkIsLock[13],false)
					end
				end
			end
		end
		----------------- смерть простых типов юнитов
		---FourCC('e003')
		--break --[[
		Humans=CreateGroup()
		if GetUnitTypeId(DeadUnit)==FourCC('hpea') then--Крестьянин
		--	print("Погиб крестьянин")
			local x,y=GetUnitXY(DeadUnit)
			local lum=FindUnitOfType(FourCC('hlum'),600,x,y)
			if lum then
				TimerStart(CreateTimer(), 5, false, function()
				--	print("создан новый рабочий")
					local xlim,ylum=GetUnitXY(lum)
					local new=CreateUnit(Player(10), FourCC('hpea'),xlim, ylum, 0)
					IssueImmediateOrder(new,"autoharvestlumber")
					DestroyTimer(GetExpiredTimer())
				end)
			end

		end
		if GetUnitTypeId(DeadUnit)==FourCC('e003') then--Злое дерево
			local x,y=GetUnitXY(DeadUnit)
			for _=1,7 do
				local r=GetRandomInt(-100,100)
				local r2=GetRandomInt(-100,100)
				CreateFreeWood(x+r,y+r2)
			end
		end

		if GetUnitTypeId(DeadUnit)==FourCC('o001') and not Ending then--лесопилка орков
			--print("О нет, лесопилка разрушена, теперь пеонам никогда не выбраться с острова")
			if BlzGetLocale()=="ruRU" then
				print("|cff8080ffСистема: |r".."О нет, лесопилка разрушена, теперь пеонам никогда не выбраться с острова")
			else
				print("|cff8080ffSystem: |r".."Oh no, the sawmill is destroyed, now the peons never get out of the island")
			end
			TimerStart(CreateTimer(), 5, false, function()
				CustomDefeatBJ(Player(0),"Вы проиграли")
				CustomDefeatBJ(Player(1),"Вы проиграли")
				CustomDefeatBJ(Player(2),"Вы проиграли")
				CustomDefeatBJ(Player(3),"Вы проиграли")
				DestroyTimer(GetExpiredTimer())
			end)
		end
		if GetUnitTypeId(DeadUnit)==FourCC('h001') then--лесопилка орков
			local x,y=GetUnitX(DeadUnit)
			ShowUnit(DeadUnit,false)
			DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\Mortar\\MortarMissile",x,y))
		end

		if GetUnitTypeId(DeadUnit)==FourCC('hlum') then -- лесопилка людей
			for i=0,3 do
				local data=HERO[i]
				local hero=data.UnitHero
				local distance=DistanceBetweenXY(GetUnitX(hero),GetUnitY(hero),GetUnitX(DeadUnit),GetUnitY(DeadUnit))
				if distance<=500 then
					if not data.Perk11 then
						--Действие перка погрома
						AddSpecialEffectTarget("GearAura",hero,"origin")
						TimerStart(CreateTimer(), 1, true, function()
							local e=nil
							local x,y=GetUnitXY(hero)
							GroupEnumUnitsInRange(perebor,x,y,400,nil)
							while true do
								e = FirstOfGroup(perebor)
								if e == nil then break end

								--ремонт
								if true and UnitAlive(e) and IsUnitAlly(e,GetOwningPlayer(hero)) and (IsUnitType(e,UNIT_TYPE_STRUCTURE) or IsUnitType(e,UNIT_TYPE_MECHANICAL)) then
									local amount=HealUnit(e,10)
									data.Repairs=data.Repairs+amount
								end
								GroupRemoveUnit(perebor,e)
							end
						end)

						data.Perk11=true
						PerkUnlocker(data,11)
					end
				end
			end
		end

	end)
end
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 03.01.2020 12:16

TargetOrders={"innerfire","slow","heal","controlmagic","invisibility","magicleash","spellsteal","polymorph","repair","thunderbolt","banish","holybolt","load","unstableconcoctoin","spirintlink",
"bloodlust","ensnare","devour","purge","lightingshield","healingwave","hex","chainlightning","antimagicshell","unholyfrenzy","possession","web","absorbmana","curse","restoration","cripple","frostarmor",
"deathpact","sleep","darkritual","faeriefire","renew","autodispel","cyclone","entanglingroots","flamingarrows","manaburn","shadowstrike","creepthunderbolt","mindrot","deathcoil",
"parasite","charm","creepdevour","forkedlighting","cripple","blackarrow","acidbomb","doom","soulburn","transmute","rejuvination","frostnova"}

PointOrders={"flare","dispel","cloudoffog","flamestrike","blizzard","healingward","stasistrap","evileye","farsight","eathquake","ward","serpentward","shockwave","inferno","impale","deathanddecay","carrionswarm",
"detonate","forceofnature","blink","selfdestruct","silence","rainoffire","breathofirre","volcano","stampede","healingspray","clusterrockets","summonfactory","drunkenhaze"}

ImmediateOrders={"defend","magicdefense","militia","townbellon","avatar","divineshield","resurrection","massteleport","waterelemental","thunderclap","summonphoenix","etherealform","berserk",
"battlestations","corporealform","whirlwind","stomp","spiritwolf","locustswarm","mirrorimage","voodoo","windwalk","raisedead","recharge","replenish","borrow","stoneform","cannibalize","sphinksform","replenishlife",
"replenishmana","carrionscarabs","animatedead","coupletarget","manaflareon","vengeance","ravenform","bearform","taunt","roar","ambush", "fanofknives","starfall","metamorphosis","immolation",
"tranquility","monsoon","frenzy","howlofterror","manashield","battleroar","elementalfury","wateryminion","slimemonster","robogoblin","tornado","chemicalrage","phaseshift"}
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
				UnitAddAbility(hero,FourCC('A004'))-- переделать на триггерное лечение может быть когда нибудь.. не столь важное
				PerkUnlocker(data,7)
			end
		end
		if not data.Perk7A and data.Heals>=5000 then
			--print("7A")
			data.Perk7A=true
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

function GetLosingHP(hero)
	local MaxHP=BlzGetUnitMaxHP(hero)
	local CurrentHP=GetUnitState(hero,UNIT_STATE_LIFE)
	local LoosingHP=MaxHP-CurrentHP
	return LoosingHP
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

--Bergi
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

function AngleBetweenUnits(caster,target)
	local yb,ya,xb,xa=GetUnitY(target),GetUnitY(caster),GetUnitX(target),GetUnitX(caster)
	return Atan2BJ(yb - ya, xb - xa)
end

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 30.04.2020 15:07
---
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

function FlyTextTagShieldXY(x,y, text, player)--™
	return FlyTextTag(""..text, 0.018, x, y, 150, 128, 128, 128, 255, 0, 0.03, 1, 3, player)
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
	--	print("Ошибка получено "..k.." юнитов")
	end
	if unit==nil then
	--	print("Не найдено живых юнитов данного типа")
	end
	return unit,k
end
---------ВЕКТОРА
function UnitAddVectorForce(hero,Angle,Speed,Distance,AfterMoving)
	local data=nil
	local k=0
	local h=0
	--print("ForceFor "..GetUnitName(hero))
	if IsUnitType(hero,UNIT_TYPE_HERO) then
		h=GetPlayerId(GetOwningPlayer(hero))

	else
		h=GetHandleId(hero)
	--	print("НЕГЕРОЙ толкаемый "..GetUnitName(hero))
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

	if  AfterMoving==nil then
		AfterMoving=true
	end
	if  data.AfterMoving==nil then
		data.AfterMoving=AfterMoving
	end
	data.AfterMoving=AfterMoving
	--print("параметры заданы"..GetUnitName(hero)..k)
end

function UnitAddForce(hero,angle,speed,distance)-- псевдо вектор использовать только для юнитов
	local currentdistance=0
	if not IsUnitType(hero,UNIT_TYPE_STRUCTURE) then
		TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
			currentdistance=currentdistance+speed
			--print(currentdistance)
			local x,y=GetUnitX(hero),GetUnitY(hero)
			local newX,newY=MoveX(x,speed,angle),MoveY(y,speed,angle)
			local dx=math.abs(x-newX)

			SetUnitPositionSmooth(hero,newX,newY)


			if currentdistance>=distance   then --or (data.OnWater and data.OnTorrent==false)
				--data.IsDisabled=false
				--data.OnWater=false
				DestroyTimer(GetExpiredTimer())
				--print("stop cur="..currentdistance.." dist="..distance)
			end
		end)
	end
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
		local damage=BlzGetUnitBaseDamage(hero,0)--*50
		data.Reflection=true
		if not data.ReleaseLMB and data.ReleaseRMB and UnitAlive(hero) then
			local OnAttack,CUnit= UnitDamageArea(hero,damage,x,y,70)
			if OnAttack then
				data.RevoltSec=0
			end

			if (data.HaveAFire or data.Perk16 ) and ((not GetOwningPlayer(CUnit,UNIT_TYPE_MECHANICAL)  and  not IsUnitAlly(hero,GetOwningPlayer(CUnit))) or GetUnitTypeId(CUnit)==FourCC('o005')) then
				SingleCannon(hero,GetUnitFacing(hero),"Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl",damage*5)
				if (data.HaveAFire and data.Perk16)  then
					SingleCannon(hero,GetUnitFacing(hero)-15,"Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl",damage*5)
					SingleCannon(hero,GetUnitFacing(hero)+15,"Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl",damage*5)
				end
				if not data.Perk16 then
					data.HaveAFire=false
					UnitRemoveAbility(hero,FourCC('A006'))
				end
			end


		end
		if data.Perk6 and true then -- удар тора
			--data.Perk6=false
			--print("удар тора")

			if UnitDamageArea(hero,90,x,y,150)  then
				CastArea(hero,FourCC('A003'),x,y)
				DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster",x,y))
			end
			--print("ПОСТ удар тора")
		end
		TimerStart(CreateTimer(), 0.2, false, function()
			data.Reflection=false
			DestroyTimer(GetExpiredTimer())
		end)
		DestroyTimer(GetExpiredTimer())
	end)
end

function MakeUnitAllEnemy(hero)
	--SetPlayerAlliance()
	local p=GetOwningPlayer(hero)
	SetPlayerAllianceStateBJ(p, Player(0), bj_ALLIANCE_UNALLIED)
	SetPlayerAllianceStateBJ(p, Player(1), bj_ALLIANCE_UNALLIED)
	SetPlayerAllianceStateBJ(p, Player(2), bj_ALLIANCE_UNALLIED)
	SetPlayerAllianceStateBJ(p, Player(3), bj_ALLIANCE_UNALLIED)
	SetPlayerAllianceStateBJ(p, Player(5), bj_ALLIANCE_UNALLIED)

	SetPlayerAllianceStateBJ(Player(0),p, bj_ALLIANCE_UNALLIED)
	SetPlayerAllianceStateBJ(Player(1),p, bj_ALLIANCE_UNALLIED)
	SetPlayerAllianceStateBJ(Player(2),p, bj_ALLIANCE_UNALLIED)
	SetPlayerAllianceStateBJ(Player(3),p, bj_ALLIANCE_UNALLIED)
	SetPlayerAllianceStateBJ(Player(5),p, bj_ALLIANCE_UNALLIED)
end

function MakeUnitAllAlly(hero)
	--SetPlayerAlliance()
	local p=GetOwningPlayer(hero)
	SetPlayerAllianceStateBJ(p, Player(0), bj_ALLIANCE_ALLIED_VISION)
	SetPlayerAllianceStateBJ(p, Player(1), bj_ALLIANCE_ALLIED_VISION)
	SetPlayerAllianceStateBJ(p, Player(2), bj_ALLIANCE_ALLIED_VISION)
	SetPlayerAllianceStateBJ(p, Player(3), bj_ALLIANCE_ALLIED_VISION)
	SetPlayerAllianceStateBJ(p, Player(5), bj_ALLIANCE_ALLIED_VISION)

	SetPlayerAllianceStateBJ(Player(0),p, bj_ALLIANCE_ALLIED_VISION)
	SetPlayerAllianceStateBJ(Player(1),p, bj_ALLIANCE_ALLIED_VISION)
	SetPlayerAllianceStateBJ(Player(2),p, bj_ALLIANCE_ALLIED_VISION)
	SetPlayerAllianceStateBJ(Player(3),p, bj_ALLIANCE_ALLIED_VISION)
	SetPlayerAllianceStateBJ(Player(5),p, bj_ALLIANCE_ALLIED_VISION)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 28.03.2020 1:00
---
TotalStones=0 --подсчет камней для тиника
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

			if GetUnitTypeId(CollisionUnit)==FourCC('o008')  then --Таурен
				--print("защищайте кодоев")
				SetUnitFacing(CollisionUnit,AngleBetweenUnits(CollisionUnit,hero))
				PlaySoundAtPointBJ( gg_snd_SaveKodo, 100, RemoveLocation(Location(GetUnitXY(CollisionUnit))), 0 )
			end


			if GetUnitTypeId(CollisionUnit)==FourCC('e009')  and GetUnitAbilityLevel(CollisionUnit,FourCC('A00L'))>0 then --Тини
				if BlzGetLocale()=="ruRU" then
					print("|cff8080ffТиник: |r".."Уничтожьте камни для нашей битвы "..TotalStones.."/30")
				else
					print("|cff8080ffTinyc: |r".."Destroy stones for battle")
				end
				--FlyTextTagManaBurn(CollisionUnit,TotalStones,GetOwningPlayer(hero))
				if TotalStones>=0 then
					UnitRemoveAbility(CollisionUnit,FourCC('A00L'))
					StartTinyAI(GetUnitXY(CollisionUnit))
					--print("тут должна быть эпичная битва но её ещё нет")
				end
			end


			if GetUnitTypeId(CollisionUnit)==FourCC('oshy')  then --ферфь
				if GetUnitAbilityLevel(CollisionUnit,FourCC('A00L'))>0 then
				if GTotalWood>=100 then
					UnitRemoveAbility(CollisionUnit,FourCC('A00L'))
					if BlzGetLocale()=="ruRU" then
						print("|cff8080ffСистема: |r".."Приступайте к строительсву корабля")
					else
						print("|cff8080ffSystem: |r".."Repair the ship")
					end

				end
					if Ending then
						UnitRemoveAbility(CollisionUnit,FourCC('A00L'))
						if BlzGetLocale()=="ruRU" then
							print("|cff8080ffСистема: |r".."Помогайте строить корабль, чего стоите")
						else

						end
					else
						if BlzGetLocale()=="ruRU" then
							print("|cff8080ffСистема: |r".."Добудьте 100 древисины чтобы построить корабль")
						else
							print("|cff8080ffСистема: |r".."You need 100 timber to build a ship")
						end
					end

				end
			end

			if GetUnitTypeId(CollisionUnit)==FourCC('n006')  then--тускарец с восклицательным знаком
				if GetUnitAbilityLevel(CollisionUnit,FourCC('A00L'))>0 then
				UnitRemoveAbility(CollisionUnit,FourCC('A00L'))
					--print("Тускарец: где-то винзу есть рычаг")
					if BlzGetLocale()=="ruRU" then
						print("|cff8080ffТускарец: |r".." Где-то внизу есть рычаг")
					else
						print("|cff8080ffWalrus: |r".." Below there is a lever from this gate")
					end

				end
			end

			if GetUnitTypeId(CollisionUnit)==FourCC('o005')  and not data.CartUnit then--тележка
				if GetOwningPlayer(CollisionUnit)==Player(PLAYER_NEUTRAL_PASSIVE) then
					SetUnitOwner(CollisionUnit,GetOwningPlayer(hero),true)
					data.CartUnit=CollisionUnit
				end
			end
			if GetUnitTypeId(CollisionUnit)==FourCC('n007') then-- свинка лечилка свинья
				if GetLosingHP(hero)>1 then
					HealUnit(hero,GetUnitState(CollisionUnit,UNIT_STATE_LIFE))
					KillUnit(CollisionUnit)
				end
			end
			if GetUnitTypeId(CollisionUnit)==FourCC('e007') then--Сфрера огня
				--print("Подобрана сфера огня, учим героя метать фаер болы")
				KillUnit(CollisionUnit)
				if not data.Perk16 then
					data.Perk16=true
					UnitAddAbility(hero,FourCC('A006'))--огонёк
					PerkUnlocker(data,16)
				end
			end
			if GetUnitTypeId(CollisionUnit)==FourCC('o001') then--дрова на лесопилке
				local k=1
				if data.Perk1 then
					k=k+1
				end
				if data.IsWood then
					if GetLosingHP(hero)<=5 then-- Техника безопасности
						--print("Полное хп")
						data.TreeCountOnTB=k+data.TreeCountOnTB
						if data.TreeCountOnTB>=10 and not data.Perk10 then
							data.Perk10=true
							PerkUnlocker(data,10)
						end
					end
					data.IsWood=false
					--рывок перемещён в другое место в интерфейс
					data.SingleWoodCount=data.SingleWoodCount+k
					--print("дерево в личном зачете "..data.SingleWoodCount)
					if data.SingleWoodCount>=25  and not data.Perk1 then -- Перкс работник месяца
						data.Perk1=true
						PerkUnlocker(data,1)
					end
					--print(data.SingleWoodCount)

					HealUnit(hero,1000)
					AddLumber(k,hero)
					MoveWoodAsFarm(hero,k)
					UnitAddItemById(hero,FourCC('I000'))-- ускорение
					data.RevoltSec=0
				end
				if data.CartUnit  and GetUnitUserData(data.CartUnit)>0 then -- дрова из тележки на лесопилке
					local wc=GetUnitUserData(data.CartUnit)
					--k=wc*k

					if GetLosingHP(hero)<=5 then-- Техника безопасности
						--print("Полное хп")
						data.TreeCountOnTB=k+data.TreeCountOnTB
						if data.TreeCountOnTB>=10 and not data.Perk10 then
							data.Perk10=true
							PerkUnlocker(data,10)
						end
					end


					HealUnit(hero,1000)
					AddLumber(k,hero)
					UnitAddItemById(hero,FourCC('I000'))-- ускорение
					TimerStart(CreateTimer(), 0.1, true, function()
						MoveWoodAsFarm(hero,k)
						data.SingleWoodCount=data.SingleWoodCount+k
						--print("дерево в личном зачете "..data.SingleWoodCount)
						if data.SingleWoodCount>=25  and not data.Perk1 then -- Перкс работник месяца
							data.Perk1=true
							BlzFrameSetVisible(data.LockFrame[1],false)
							BlzFrameSetVisible(data.VisualSelectorFrame[1],true)
							TimerStart(CreateTimer(), 10, true, function()
								BlzFrameSetVisible(data.VisualSelectorFrame[1],false)
							end)
						end
						data.RevoltSec=0
						SetUnitUserData(data.CartUnit,GetUnitUserData(data.CartUnit)-1)
						SetVisualWood(data.CartUnit,GetUnitUserData(data.CartUnit))
						if GetUnitUserData(data.CartUnit)==0 then
							DestroyTimer(GetExpiredTimer())
						end
					end)
				end
			end
			if GetUnitTypeId(CollisionUnit)==FourCC('e002') then-- дрова у юнита
				if data.CartUnit then
					local wc=GetUnitUserData(data.CartUnit)
					if wc<=5 then
						SetUnitUserData(data.CartUnit,wc+1)
						wc=wc+1
						--print("Всего дерева в тачке="..wc)
						PlaySoundAtPointBJ( gg_snd_Load, 100, RemoveLocation(Location(GetUnitXY(hero))), 0 )
						KillUnit(CollisionUnit)
						SetVisualWood(data.CartUnit,wc)
					end
				else
					if not data.IsWood then
						--print("звук подбора")
						if not data.ReleaseLMB then
							PlaySoundAtPointBJ( gg_snd_Load, 100, RemoveLocation(Location(GetUnitXY(hero))), 0 )
							KillUnit(CollisionUnit)
							data.IsWood=true
						end
					end
				end




			end
			if GetUnitTypeId(CollisionUnit)==FourCC('n001') then -- овца
					data.SheepCount=data.SheepCount+1
					if data.SheepCount==40 then
						data.Perk15=true
						UnitAddAbility(hero,FourCC('A00J'))
						PerkUnlocker(data,15)
					end


				SetUnitExploded(CollisionUnit,true)
				local nx,ny=GetUnitXY(CollisionUnit)
				UnitDamageArea(CollisionUnit,100,nx,ny,150)
				DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\Mortar\\MortarMissile",nx,ny))
				KillUnit(CollisionUnit)
				local data=AnyData[GetHandleId(CollisionUnit)]
				local x,y=data.x,data.y
				TimerStart(CreateTimer(), 30, false, function()
					local new =CreateUnit(Player(PLAYER_NEUTRAL_AGGRESSIVE), FourCC('n001'), x, y, 0)
					AnyData[GetHandleId(new)]={
						x=x,
						y=y,
					}
					DestroyTimer(GetExpiredTimer())
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

		--print("Опыт добавлен")
	end
end

function SetVisualWood(CartUnit,wc)
	UnitRemoveAbility(CartUnit,FourCC('A008'))--1
	UnitRemoveAbility(CartUnit,FourCC('A009'))--2
	UnitRemoveAbility(CartUnit,FourCC('A00A'))--3
	UnitRemoveAbility(CartUnit,FourCC('A00B'))--4
	UnitRemoveAbility(CartUnit,FourCC('A00C'))--5
	UnitRemoveAbility(CartUnit,FourCC('A00D'))--6
	if wc==1 then
		UnitAddAbility(CartUnit,FourCC('A008'))--1
	elseif wc==2  then
		UnitAddAbility(CartUnit,FourCC('A008'))--1
		UnitAddAbility(CartUnit,FourCC('A009'))--2
	elseif wc==3  then
		UnitAddAbility(CartUnit,FourCC('A008'))--1
		UnitAddAbility(CartUnit,FourCC('A009'))--2
		UnitAddAbility(CartUnit,FourCC('A00A'))--3
	elseif wc==4  then
		UnitAddAbility(CartUnit,FourCC('A008'))--1
		UnitAddAbility(CartUnit,FourCC('A009'))--2
		UnitAddAbility(CartUnit,FourCC('A00A'))--3
		UnitAddAbility(CartUnit,FourCC('A00B'))--4
	elseif wc==5  then
		UnitAddAbility(CartUnit,FourCC('A008'))--1
		UnitAddAbility(CartUnit,FourCC('A009'))--2
		UnitAddAbility(CartUnit,FourCC('A00A'))--3
		UnitAddAbility(CartUnit,FourCC('A00B'))--4
		UnitAddAbility(CartUnit,FourCC('A00C'))--5
	elseif wc==6  then
		UnitAddAbility(CartUnit,FourCC('A008'))--1
		UnitAddAbility(CartUnit,FourCC('A009'))--2
		UnitAddAbility(CartUnit,FourCC('A00A'))--3
		UnitAddAbility(CartUnit,FourCC('A00B'))--4
		UnitAddAbility(CartUnit,FourCC('A00C'))--5
		UnitAddAbility(CartUnit,FourCC('A00D'))--6
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
	StartAllSaw() -- зона пил
	TimerStart(CreateTimer(), 120, false, function()
		WaveAttack(60)-- волны
		DestroyTimer(GetExpiredTimer())
	end)
	SetSheepPoint()-- овцы
	StartWinter()--ветер
	CreateVulkano(913,-2550)--вулкан
	StartAllTorch()--фонарики
	FarmOfPig()
	--Normadia()--Высадка пехотинцев
	StartWolfBossAI()
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 24.04.2020 22:53

function FarmOfPig()
	local farm=FindUnitOfType(FourCC('npgf')) --свинья хрюшка
	local x,y=GetUnitXY(farm)
	local mf=0
	TimerStart(CreateTimer(), 60, true, function()
		local new=CreateUnit(Player(5),FourCC('n007'),x,y,180)
		mf=mf+1
		local hp=200+mf
		BlzSetUnitMaxHP(new,hp)
		HealUnit(new,hp)
	end)
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
				local range=80
				TimerStart(CreateTimer(), 10, false, function()
					SetRect(GlobalRect, x - range, y - range, x + range, y +range)
					EnumDestructablesInRect(GlobalRect,nil,function ()
						local d=GetEnumDestructable()
						if GetDestructableTypeId(d)==FourCC('LTlt') then
							if GetDestructableLife(d)>0 then
								KillDestructable(d)

								local new=CreateUnit(Player(10), FourCC('e001'), GetDestructableX(d), GetDestructableY(d), 0)
								SetUnitAnimation(new,"birth")
								TimerStart(CreateTimer(), 1, false, function()
									RemoveDestructable(d)
									DestroyTimer(GetExpiredTimer())
								end)
							end
						end
					end)
					DestroyTimer(GetExpiredTimer())
				end)
			end
			GroupRemoveUnit(perebor,e)
		end

	end)


end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 22.04.2020 0:28
---
---
function Normadia()
	--print("Нормандия")
	TimerStart(CreateTimer(), 10, true, function()
		CreateTransportShip(-5000,-5000,-2600,-3500)-- зона людей ПРОВЕРЕНО
		CreateTransportShip(4800,-4800,3500,-3500)--ЗОНА огня
		CreateTransportShip(4800,-4800,4000,-1200)--Зона льда
		CreateTransportShip(-5300,5400,-4000,4500)-- лесопилки маньяка
		CreateTransportShip(5100,5400,3800,2000)-- каменоломни
		CreateTransportShip(-5000,-5000,-4600,200)-- Верфь орды
	end)
end

function CreateTransportShip(x,y,xend,yend)
	--x,y,xend,yend=-5000,-4900,-2600,-3500
	local new=CreateUnit(Player(10), FourCC('h003'), x, y, 0) -- корабль
	local time=0
	local IsFull=true
	TimerStart(CreateTimer(), 2, true, function()
		time=time+2
		local xp,yp=GetUnitXY(new)
		local z=GetTerrainZ(MoveXY(xp,yp,200,GetUnitFacing(new)))
		--print(z)
		if IsFull then
			IssuePointOrder(new,"move",xend,yend)
		end

		if time>60 then
			DestroyTimer(GetExpiredTimer())
			KillUnit(new)
		end
		if z>0 and IsFull then
			IsFull=false
			--print("высадка")
			--
			CreateEnemy(new,FourCC('hfoo'),4)
			IssuePointOrder(new,"move",x,y)
		end
		if IsUnitInRangeXY(new,x,y,300) and time>=20 then
			DestroyTimer(GetExpiredTimer())
			KillUnit(new)
			--print("вернулся на базу")
		end
	end)
end

footmans=0
nextfootmans=1
function CreateEnemy(ship,id,k)
	local x,y=GetUnitXY(ship)
	local temp,n=FindUnitOfType(id)



	if footmans>=100*nextfootmans then
		--print("Число пехотинцев перевалило за "..100*nextfootmans)
		nextfootmans=nextfootmans+1
	end
	if n<50 then
		for i=1,k do
			local new=CreateUnit(Player(10), id, x, y, 0)
			footmans=footmans+1
			--print("создан")
			IssuePointOrder(new,"attack",-4935.0, 809.5)
		end
	else
	--	print("Заспамлено больше 50 пехотинцев"..n)
	end


end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 14.04.2020 1:01
---
function StartAllTorch()
	local e--временный юнит
	local k=0
	local id=FourCC('e006') -- Факел

	GroupEnumUnitsInRect(perebor,bj_mapInitialPlayableArea,nil)
	while true do
		e = FirstOfGroup(perebor)
		if e == nil then break end
		if UnitAlive(e) and GetUnitTypeId(e)==id then
			k=k+1
			local rf=GetRandomReal(-.5,.5)
			local angle=GetUnitFacing(e)
			local torch=e
			TimerStart(CreateTimer(), 2+rf, true, function()
				--print("стреляем "..GetUnitName(torch))
				SingleCannon(torch,angle,"Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl")
			end)
		end
		GroupRemoveUnit(perebor,e)
	end
	--print("Запущено факелов: "..k)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 09.04.2020 13:46
---
function CreateVulkano(x,y)
	local caster=CreateUnit(Player(10),DummyID,x,y,180)
	local angle=0--GetRandomReal(0,360)
	TimerStart(CreateTimer(), 0.3, true, function()
		--print("выпускаем огонь")
		CreateArtToss(caster,"Abilities/Spells/Other/Volcano/VolcanoMissile.mdl",angle,500)
		CreateArtToss(caster,"Abilities/Spells/Other/Volcano/VolcanoMissile.mdl",angle+180,500)
		angle=angle+15
		if angle==359 then
			--angle=0
		end
	end)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 08.04.2020 17:34
---
function StartWinter()
	local x,y=2236,-1112--0,0--
	local caster=CreateUnit(Player(10),FourCC('e008'),x,y,180) --дамми ветерок
	UnitAddAbility(caster,FourCC('A005'))
	--local nx,ny=MoveXY(x,y)
	Cast(caster,x-100,y)
	--SetUnitX(caster,3400)
	--SetUnitY(caster,-1200)
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

SawDiskModel="Chakram_04"--"Abilities\\Weapons\\SentinelMissile\\SentinelMissile.mdl"
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
	local DamageDealer=CreateUnit(GetOwningPlayer(hero),DummyID,xs,ys,0)
	ShowUnit(DamageDealer,false)
	local SS=true

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
		SetUnitX(DamageDealer,nx)
		SetUnitY(DamageDealer,ny)
		angle=angle+speed

		OnDamage,ReflectorUnit=UnitDamageArea(DamageDealer,20,nx,ny,150,z-90,CollisionEffect)

		if OnDamage and ReflectorUnit then
			--PlaySoundAtPointBJ( gg_snd_Saw, 100, RemoveLocation(Location(GetUnitXY(hero))), 0 )
			local dummy=CreateUnit(Player(0), DummyID, nx ,ny, 0)
			UnitAddAbility(dummy,FourCC('Apsh'))
			IssueImmediateOrder(dummy,"phaseshift")
			UnitApplyTimedLife(dummy,FourCC('BTLF'),0.1)
		end
		if OnDamage and IsUnitType(ReflectorUnit,UNIT_TYPE_HERO) then
			local data=HERO[GetPlayerId(GetOwningPlayer(ReflectorUnit))]
			if data.Reflection then
				speed=speed*(-1)
			end
		end

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
	UnitAddAbility(hero,FourCC('Aloc'))
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		local x,y=0,0

		local OnDamage=false
		local ReflectorUnit=nil


		if OnDamage and IsUnitType(ReflectorUnit,UNIT_TYPE_HERO) then
			local data=HERO[GetPlayerId(GetOwningPlayer(ReflectorUnit))]
			if data.Reflection then
				--speed=speed*(-1)
				--turn=true
			end
		end


		if not turn then
			i=i+1
		else
			i=i-1
		end
		--print(i)
		x,y=MoveXY(xs,ys,step*i,angle)
		if InMapXY(x,y) then
			SetUnitX(hero,x)
			SetUnitY(hero,y)
		else
		--	print("ERROR - NOTINMAP"..x.." "..y)
			DestroyTimer(GetExpiredTimer())
			KillUnit(hero)
		end
		BlzSetSpecialEffectPosition(saw,x,y,z)
		OnDamage,ReflectorUnit=UnitDamageArea(hero,20,x,y,60,z-90,CollisionEffect)
		local nx,ny=MoveXY(x,y,60,angle)
		UnitDamageArea(hero,20,nx,ny,60,z-90,CollisionEffect)
		nx,ny=MoveXY(x,y,-60,angle)
		UnitDamageArea(hero,20,nx,ny,60,z-90,CollisionEffect)

		if OnDamage and ReflectorUnit then
			local dummy=CreateUnit(Player(0), DummyID, nx ,ny, 0)
			UnitAddAbility(dummy,FourCC('Apsh'))
			IssueImmediateOrder(dummy,"phaseshift")
			UnitApplyTimedLife(dummy,FourCC('BTLF'),0.1)
			--ShowUnit(dummy,false)
			--PlaySoundAtPointBJ( gg_snd_Saw, 100, RemoveLocation(Location(GetUnitXY(hero))), 0 )
		end


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
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 21.04.2020 21:03
function HeroEnterSaws()

	local FW={}
	FW[1]=CreateFogModifierRectBJ(false, Player(0), FOG_OF_WAR_VISIBLE, gg_rct_Saws)
	FW[2]=CreateFogModifierRectBJ(false, Player(1), FOG_OF_WAR_VISIBLE, gg_rct_Saws)
	FW[3]=CreateFogModifierRectBJ(false, Player(2), FOG_OF_WAR_VISIBLE, gg_rct_Saws)
	FW[4]=CreateFogModifierRectBJ(false, Player(3), FOG_OF_WAR_VISIBLE, gg_rct_Saws)

	local thisE = CreateTrigger()
	TriggerRegisterEnterRectSimple(thisE, gg_rct_Saws)
	TriggerAddAction(thisE, function()
		local hero=GetTriggerUnit()
		local pid=GetPlayerId(GetOwningPlayer(hero))
		--print("вошел в регион")
		FogModifierStart(FW[pid+1])
	end)

	local thisA = CreateTrigger()
	TriggerRegisterLeaveRectSimple(thisA, gg_rct_Saws)
	TriggerAddAction(thisA, function()
		local hero=GetTriggerUnit()
		local pid=GetPlayerId(GetOwningPlayer(hero))
		--print("вошел в регион")
		FogModifierStop(FW[pid+1])
	end)
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
				SetUnitExploded(e,true)
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
--- DateTime: 25.04.2020 15:24

function CreateStoneCircle(x,y)
	local distance=400
	local id=FourCC('LTlt')-- id камня
	for i=0,11 do
		local angle=30*i
		local xn,yn=MoveXY(x,y,distance,angle)
		CreateDestructable(id,xn,yn,angle,1,1)
	end
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 05.04.2020 18:56
function WaveAttack(delay)
	local new
	local x,y=0,0
	local loc=nil
	local OrkStove=FindUnitOfType(FourCC('o001'))
	TimerStart(CreateTimer(), 60+delay, true, function() --волки
		x,y=GetRectCenterX(gg_rct_WalkSpawnZone),GetRectCenterY(gg_rct_WalkSpawnZone)
		new=CreateUnit(Player(10), FourCC('n000'), x, y, 0)
		IssuePointOrder(new,"attack",0,0)
	end)
	TimerStart(CreateTimer(), 70+delay, true, function() --энты
		if not FindUnitOfType(FourCC('e003')) then
			DestroyTimer(GetExpiredTimer())
		else
			loc =GetRandomLocInRect(gg_rct_TrentZone)
			x,y=GetLocationX(loc),GetLocationY(loc)
			--print("энт "..x)
			new=CreateUnit(Player(10), FourCC('e001'), x, y, 0)
			IssuePointOrder(new,"attack",0,0)
		end
	end)
	TimerStart(CreateTimer(), 80+delay, true, function() -- камни големы
		loc =GetRandomLocInRect(gg_rct_StoneZoneS)
		x,y=GetLocationX(loc),GetLocationY(loc)
		new=CreateUnit(Player(10), FourCC('n002'), x, y, 0)
		IssuePointOrder(new,"attack",0,0)
	end)
	TimerStart(CreateTimer(), 90+delay, true, function() --лава
		loc =GetRandomLocInRect(gg_rct_Lava)
		x,y=GetLocationX(loc),GetLocationY(loc)
		new=CreateUnit(Player(10), FourCC('n004'), x, y, 0)
		IssuePointOrder(new,"attack",0,0)
	end)
	TimerStart(CreateTimer(), 50+delay, true, function() --люди
			loc =GetRandomLocInRect(gg_rct_Workers)
			x,y=GetLocationX(loc),GetLocationY(loc)
		if not FindUnitOfType(FourCC('hlum'),1000,x,y) then-- лесопилка
			DestroyTimer(GetExpiredTimer())
		else
			new=CreateUnit(Player(10), FourCC('hpea'), x, y, 0)
			IssuePointOrder(new,"attack",0,0)
		end

	end)
	TimerStart(CreateTimer(), 60+delay, true, function() --овцы
		loc =GetRandomLocInRect(gg_rct_SheepZone)
		x,y=GetLocationX(loc),GetLocationY(loc)
		new=CreateUnit(Player(10), FourCC('n001'), x, y, 0)
		AnyData[GetHandleId(new)]={
			x=GetUnitX(new),
			y=GetUnitY(new),
		}
		IssuePointOrder(new,"move",0,0)
	end)
	TimerStart(CreateTimer(), 90+delay, true, function() --мурлоки
		--print("Мурлоки")
		loc =GetRandomLocInRect(gg_rct_Morlok)
		x,y=GetLocationX(loc),GetLocationY(loc)
		for _=1,GetRandomInt(1,3) do
			new=CreateUnit(Player(11), FourCC('n005'), x, y, 0)
			IssueTargetOrder(new,"attack",OrkStove)
			local torrent=AddSpecialEffect("Torrent",x,y)
			--BlzSetSpecialEffectMatrixScale(torrent,size,size,size/10)
			DestroyEffect(torrent)
		end
	end)
	--RemoveLocation(loc)
end

--CUSTOM_CODE
function Trig_In_Conditions()
    if (not (IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true)) then
        return false
    end
    return true
end

function Trig_In_Actions()
    SetUnitPositionLoc(GetTriggerUnit(), GetRectCenter(gg_rct_EnterTown))
end

function InitTrig_In()
    gg_trg_In = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_In, gg_rct_EnterCave)
    TriggerAddCondition(gg_trg_In, Condition(Trig_In_Conditions))
    TriggerAddAction(gg_trg_In, Trig_In_Actions)
end

function Trig_Out_Conditions()
    if (not (IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true)) then
        return false
    end
    return true
end

function Trig_Out_Actions()
    SetUnitPositionLoc(GetTriggerUnit(), GetRectCenter(gg_rct_Region_020))
end

function InitTrig_Out()
    gg_trg_Out = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_Out, gg_rct_Region_019)
    TriggerAddCondition(gg_trg_Out, Condition(Trig_Out_Conditions))
    TriggerAddAction(gg_trg_Out, Trig_Out_Actions)
end

function Trig_GuiInit_Func003A()
    IssueTargetDestructableOrder(GetEnumUnit(), "harvest", gg_dest_LTlt_0364)
end

function Trig_GuiInit_Func004A()
    SetDestructableMaxLifeBJ(GetEnumDestructable(), 100.00)
end

function Trig_GuiInit_Actions()
    SetUnitAnimation(gg_unit_o001_0001, "stand work")
    CreateFogModifierRectBJ(true, Player(10), FOG_OF_WAR_VISIBLE, gg_rct_TrentZone)
    ForGroupBJ(GetUnitsInRectAll(gg_rct_Workers), Trig_GuiInit_Func003A)
    EnumDestructablesInRectAll(gg_rct_Region_005, Trig_GuiInit_Func004A)
end

function InitTrig_GuiInit()
    gg_trg_GuiInit = CreateTrigger()
    TriggerAddAction(gg_trg_GuiInit, Trig_GuiInit_Actions)
end

function Trig_Open_Func003A()
    KillDestructable(GetEnumDestructable())
end

function Trig_Open_Actions()
    QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_COMPLETED, "TRIGSTR_072")
    UnitRemoveAbilityBJ(FourCC("A00L"), gg_unit_n006_0217)
    EnumDestructablesInRectAll(gg_rct_Region_016, Trig_Open_Func003A)
end

function InitTrig_Open()
    gg_trg_Open = CreateTrigger()
    TriggerRegisterDeathEvent(gg_trg_Open, gg_dest_DTlv_1234)
    TriggerAddAction(gg_trg_Open, Trig_Open_Actions)
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
    InitTrig_In()
    InitTrig_Out()
    InitTrig_GuiInit()
    InitTrig_Open()
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
    SetStartLocPrioCount(0, 3)
    SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(0, 1, 2, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(0, 2, 3, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(1, 1)
    SetStartLocPrio(1, 0, 3, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(2, 2)
    SetStartLocPrio(2, 0, 1, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(2, 1, 3, MAP_LOC_PRIO_HIGH)
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
    SetCameraBounds(-6400.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -5120.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 12544.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 5632.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -6400.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 5632.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 12544.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -5120.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
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
    DefineStartLocation(0, 448.0, 1984.0)
    DefineStartLocation(1, -128.0, 0.0)
    DefineStartLocation(2, 0.0, -192.0)
    DefineStartLocation(3, 0.0, 0.0)
    DefineStartLocation(4, 960.0, -2560.0)
    DefineStartLocation(5, 0.0, 512.0)
    InitCustomPlayerSlots()
    InitCustomTeams()
    InitAllyPriorities()
end

