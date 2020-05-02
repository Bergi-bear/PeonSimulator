---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 02.01.2020 15:39
---
---
function InitTrig_Entire()
	gg_trg_EntireGui = CreateTrigger()
	TriggerRegisterEnterRectSimple(gg_trg_EntireGui, GetPlayableMapRect())
	TriggerAddAction(gg_trg_EntireGui, function()
		local EntireUnit=GetTriggerUnit()
		if GetUnitTypeId(EntireUnit)==FourCC('n002')   then
			TimerStart(CreateTimer(), 3, true, function()
				for i = 0, 3 do
					local hero = HERO[i].UnitHero
					if IsUnitInRange(hero, EntireUnit, 500) then
						Cast(EntireUnit,0,0,hero)
					end
				end
				if not UnitAlive(EntireUnit) then
					DestroyTimer(GetExpiredTimer())
				end
			end)
		end
	end)
end