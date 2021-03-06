---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 15.05.2020 16:44
---
do
	local InitGlobalsOrigin = InitGlobals
	function InitGlobals()
		InitGlobalsOrigin()

		FogEnable(false)
		FogMaskEnable(false)
		EnableMinimapFilterButtons(false, false)

		EnableDragSelect(false, false)
		EnablePreSelect(false, true)
		EnableSelect(false, false)

		BlzEnableUIAutoPosition(false)
		ShowInterface(false, 0)

		BlzLoadTOCFile('UI/Frame/Main.toc')

		local GameUI     = BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0)
		local WorldFrame = BlzGetOriginFrame(ORIGIN_FRAME_WORLD_FRAME, 0)
		BlzFrameSetAllPoints(WorldFrame, GameUI)

		local Portrait = BlzGetOriginFrame(ORIGIN_FRAME_PORTRAIT, 0)
		BlzFrameClearAllPoints(Portrait)
		BlzFrameSetAbsPoint(Portrait, FRAMEPOINT_CENTER, 0.288, 0.095)

		local InfoBackdrop     = BlzCreateFrame('Steel-Backdrop', WorldFrame, 0, 0)
		local PortraitBackdrop = BlzCreateFrame('Portrait-Backdrop', GameUI, 0, 0)
		BlzFrameSetPoint(PortraitBackdrop, FRAMEPOINT_TOP, Portrait, FRAMEPOINT_TOP, -0.037, 0.008)
		BlzFrameSetPoint(InfoBackdrop, FRAMEPOINT_BOTTOMLEFT, PortraitBackdrop, FRAMEPOINT_BOTTOMRIGHT, 0, 0)
		BlzFrameSetSize(InfoBackdrop, 0.172, 0.072)

		local StatusBackdrop = BlzCreateFrame('Steel-Backdrop', WorldFrame, 0, 0)
		BlzFrameSetPoint(StatusBackdrop, FRAMEPOINT_TOPRIGHT, InfoBackdrop, FRAMEPOINT_BOTTOMRIGHT, 0, -0.002)
		BlzFrameSetPoint(StatusBackdrop, FRAMEPOINT_TOPLEFT, InfoBackdrop, FRAMEPOINT_BOTTOMLEFT, 0.02, -0.002)
		BlzFrameSetSize(StatusBackdrop, 0, 0.024)

		local width, height = 0.089, 0.014
		local LevelBar      = BlzGetFrameByName('SimpleHeroLevelBar', 0)
		BlzFrameClearAllPoints(LevelBar)
		BlzFrameSetPoint(LevelBar, FRAMEPOINT_TOPLEFT, Portrait, FRAMEPOINT_BOTTOMLEFT, -0.048, 0)
		BlzFrameSetSize(LevelBar, width, height)

		local LevelVal = BlzGetFrameByName('SimpleNameValue', 0)
		BlzFrameClearAllPoints(LevelVal)
		BlzFrameSetPoint(LevelVal, FRAMEPOINT_CENTER, LevelBar, FRAMEPOINT_CENTER, 0, 0.016)

		BlzFrameSetSize(BlzGetOriginFrame(ORIGIN_FRAME_HERO_BUTTON, 0), 0, 0)
		local HpBar = BlzGetOriginFrame(ORIGIN_FRAME_HERO_HP_BAR, 0)
		BlzFrameClearAllPoints(HpBar)
		BlzFrameSetParent(HpBar, WorldFrame)
		BlzFrameSetPoint(HpBar, FRAMEPOINT_TOP, LevelBar, FRAMEPOINT_BOTTOM, 0, -0.008)
		BlzFrameSetSize(HpBar, width, height)

		local MpBar = BlzGetOriginFrame(ORIGIN_FRAME_HERO_MANA_BAR, 0)
		BlzFrameSetSize(MpBar, width, height)

		local frames = { { '', 0 }, { '', 2 }, { 'HeroStrength', 6 }, { 'HeroAgility', 6 }, { 'HeroIntellect', 6 } }
		local frame  = {}
		for i = #frames, 1, -1 do
			frame[i] = BlzGetFrameByName('InfoPanelIcon' .. frames[i][1] .. 'Label', frames[i][2])
			BlzFrameClearAllPoints(frame[i])
			BlzFrameSetSize(frame[i], 0.05, BlzFrameGetHeight(frame[i]))
			local val = BlzGetFrameByName('InfoPanelIcon' .. frames[i][1] .. 'Value', frames[i][2])
			BlzFrameClearAllPoints(val)
			BlzFrameSetPoint(val, FRAMEPOINT_LEFT, frame[i], FRAMEPOINT_RIGHT, 0, 0)
		end

		local IconAttack = BlzGetFrameByName('InfoPanelIconBackdrop', 0)
		BlzFrameClearAllPoints(IconAttack)
		BlzFrameSetPoint(IconAttack, FRAMEPOINT_TOPRIGHT, PortraitBackdrop, FRAMEPOINT_TOPLEFT, 0, 0)

		local IconArmor = BlzGetFrameByName('InfoPanelIconBackdrop', 2)
		BlzFrameClearAllPoints(IconArmor)
		BlzFrameSetPoint(IconArmor, FRAMEPOINT_TOP, IconAttack, FRAMEPOINT_BOTTOM, 0, 0)

		local IconAttr = BlzGetFrameByName('InfoPanelIconHeroIcon', 6)
		BlzFrameClearAllPoints(IconAttr)
		BlzFrameSetPoint(IconAttr, FRAMEPOINT_TOP, IconArmor, FRAMEPOINT_BOTTOM, 0, 0)

		local Map         = BlzGetOriginFrame(ORIGIN_FRAME_MINIMAP, 0)
		local MapBackdrop = BlzCreateFrame('Map-Backdrop', WorldFrame, 0, 0)
		BlzFrameSetSize(MapBackdrop, 0.15, 0.15)
		BlzFrameSetPoint(MapBackdrop, FRAMEPOINT_CENTER, Map, FRAMEPOINT_CENTER, 0, 0)
		local MapBtnPing = BlzGetOriginFrame(ORIGIN_FRAME_MINIMAP_BUTTON, 0)
		BlzFrameClearAllPoints(MapBtnPing)
		BlzFrameSetPoint(MapBtnPing, FRAMEPOINT_TOPRIGHT, MapBackdrop, FRAMEPOINT_TOPRIGHT, -0.002, -0.002)
		local MapBtnOpacity = BlzGetOriginFrame(ORIGIN_FRAME_MINIMAP_BUTTON, 1)
		BlzFrameClearAllPoints(MapBtnOpacity)
		BlzFrameSetPoint(MapBtnOpacity, FRAMEPOINT_TOP, MapBtnPing, FRAMEPOINT_BOTTOM, 0, 0)
		for i = 2, 4 do
			BlzFrameSetVisible(BlzGetOriginFrame(ORIGIN_FRAME_MINIMAP_BUTTON, i), false)
		end

		local ResourceBar = BlzGetFrameByName('ResourceBarFrame', 0)
		BlzFrameSetSize(ResourceBar, 0, 0)

		local GoldIcon = BlzCreateFrame('Steel-Backdrop', WorldFrame, 0, 0)
		BlzFrameSetTexture(GoldIcon, 'UI/Widgets/ToolTips/Human/ToolTipGoldIcon.blp', 0, true)
		BlzFrameSetSize(GoldIcon, 0.018, 0.018)
		BlzFrameSetPoint(GoldIcon, FRAMEPOINT_RIGHT, InfoBackdrop, FRAMEPOINT_RIGHT, -0.038, 0.008)

		local GoldText = BlzGetFrameByName('ResourceBarGoldText', 0)
		BlzFrameClearAllPoints(GoldText)
		BlzFrameSetPoint(GoldText, FRAMEPOINT_LEFT, GoldIcon, FRAMEPOINT_LEFT, 0.018, 0)

		local LumberIcon = BlzCreateFrame('Steel-Backdrop', WorldFrame, 0, 0)
		BlzFrameSetTexture(LumberIcon, 'UI/Widgets/ToolTips/Human/ToolTipStonesIcon.blp', 0, true)
		BlzFrameSetSize(LumberIcon, 0.018, 0.018)
		BlzFrameSetPoint(LumberIcon, FRAMEPOINT_RIGHT, InfoBackdrop, FRAMEPOINT_RIGHT, -0.038, -0.008)

		local LumberText = BlzGetFrameByName('ResourceBarLumberText', 0)
		BlzFrameClearAllPoints(LumberText)
		BlzFrameSetPoint(LumberText, FRAMEPOINT_LEFT, LumberIcon, FRAMEPOINT_LEFT, 0.018, 0)

		local InvBackdrop = {}
		for i = 0, 5 do
			InvBackdrop[i] = BlzCreateFrame('Item-Backdrop', WorldFrame, 0, 0)
			BlzFrameSetSize(InvBackdrop[i], 0.034, 0.034)
			if i == 0 then
				BlzFrameSetPoint(InvBackdrop[i], FRAMEPOINT_TOPLEFT, InfoBackdrop, FRAMEPOINT_TOPRIGHT, 0, 0)
			elseif i < 2 then
				BlzFrameSetPoint(InvBackdrop[i], FRAMEPOINT_LEFT, InvBackdrop[i - 1], FRAMEPOINT_RIGHT, -0.001, 0)
			else
				BlzFrameSetPoint(InvBackdrop[i], FRAMEPOINT_TOP, InvBackdrop[i - 2], FRAMEPOINT_BOTTOM, 0, 0.001)
			end
			local item = BlzGetOriginFrame(ORIGIN_FRAME_ITEM_BUTTON, i)
			BlzFrameClearAllPoints(item)
			--BlzFrameSetSize(item, 0.026, 0.026)
			BlzFrameSetPoint(item, FRAMEPOINT_CENTER, InvBackdrop[i], FRAMEPOINT_CENTER, 0, 0)
		end

		local BtnBackdrop = {}
		for i = 5, 11 do
			BtnBackdrop[i] = BlzCreateFrame('Button-Backdrop', WorldFrame, 0, 0)
			BlzFrameSetSize(BtnBackdrop[i], 0.044, 0.044)
			if i == 5 then
				BlzFrameSetPoint(BtnBackdrop[i], FRAMEPOINT_TOPLEFT, PortraitBackdrop, FRAMEPOINT_TOPRIGHT, 0, 0)
			else
				BlzFrameSetPoint(BtnBackdrop[i], FRAMEPOINT_LEFT, BtnBackdrop[i - 1], FRAMEPOINT_RIGHT, 0, 0)
			end
		end

		local MenuBtn = {}
		for i = 0, 3 do
			MenuBtn[i] = BlzGetOriginFrame(ORIGIN_FRAME_SYSTEM_BUTTON, i)
			BlzFrameClearAllPoints(MenuBtn[i])
			if i == 0 then
				BlzFrameSetPoint(MenuBtn[i], FRAMEPOINT_BOTTOMLEFT, InvBackdrop[5], FRAMEPOINT_BOTTOMRIGHT, 0, 0)
			else
				BlzFrameSetPoint(MenuBtn[i], FRAMEPOINT_BOTTOM, MenuBtn[i - 1], FRAMEPOINT_TOP, 0, 0.004)
			end
			BlzFrameSetSize(MenuBtn[i], 0.2, 0.022)
		end

		TimerStart(CreateTimer(), 0, false, function()
			for i = 1, #frames do
				if i == 3 then
					BlzFrameSetPoint(frame[i], FRAMEPOINT_LEFT, InfoBackdrop, FRAMEPOINT_LEFT, 0.01, 0)
				elseif i > 3 then
					BlzFrameSetPoint(frame[i], FRAMEPOINT_TOPLEFT, frame[i - 1], FRAMEPOINT_BOTTOMLEFT, 0, -0.003)
				else
					BlzFrameSetPoint(frame[i], FRAMEPOINT_BOTTOMLEFT, frame[i + 1], FRAMEPOINT_TOPLEFT, 0, 0.003)
				end
			end

			for i = 0, 11 do
				local btn = BlzGetOriginFrame(ORIGIN_FRAME_COMMAND_BUTTON, i)
				BlzFrameClearAllPoints(btn)
				if i <= 4 then
					BlzFrameSetPoint(btn, FRAMEPOINT_TOPRIGHT, WorldFrame, FRAMEPOINT_BOTTOMLEFT, 0, 0)
				else
					BlzFrameSetPoint(btn, FRAMEPOINT_CENTER, BtnBackdrop[i], FRAMEPOINT_CENTER, 0, 0)
				end
			end

			for i = 0, 3 do
				BlzFrameSetSize(MenuBtn[i], 0.07, 0.022)
			end

			local UberTooltip = BlzGetOriginFrame(ORIGIN_FRAME_UBERTOOLTIP, 0)
			BlzFrameClearAllPoints(UberTooltip)
			BlzFrameSetAbsPoint(UberTooltip, FRAMEPOINT_BOTTOM, 0.4, 0.148)

			ShowInterface(true, 0)
			BlzFrameSetVisible(Portrait, true)
			BlzFrameSetAlpha(HpBar, 100)
			BlzFrameSetAlpha(MpBar, 100)

			DestroyTimer(GetExpiredTimer())

			local X, Y = GetPlayerStartLocationX(GetLocalPlayer()), GetPlayerStartLocationY(GetLocalPlayer())
			local HERO = CreateUnit(GetLocalPlayer(), FourCC('Ogrh'), X, Y, 270)
			SelectUnit(HERO, true)
			--PanCameraToTimed(X, Y, 0)
		end)

		--{ TEST
		local V = 0.198
		local function change(add)
			V = V + add
			ClearTextMessages()
			print(V)
		end
		--} TEST

		--{ Debug frame values
		local OnKeyArrow = function(event, count)
			local OnKeyArrowTrigger = CreateTrigger()
			for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
				TriggerRegisterPlayerEvent(OnKeyArrowTrigger, Player(i), event)
			end
			TriggerAddAction(OnKeyArrowTrigger, function()
				change(count)
			end)
		end
		OnKeyArrow(EVENT_PLAYER_ARROW_UP_DOWN, 0.001)
		OnKeyArrow(EVENT_PLAYER_ARROW_DOWN_DOWN, -0.001)
		OnKeyArrow(EVENT_PLAYER_ARROW_LEFT_DOWN, 0.01)
		OnKeyArrow(EVENT_PLAYER_ARROW_RIGHT_DOWN, -0.01)
		--}
	end
end