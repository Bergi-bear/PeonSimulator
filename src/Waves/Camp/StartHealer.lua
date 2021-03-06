---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 11.05.2020 16:10
---
function StartHealerCamp()
	local camp=FindUnitOfType(FourCC('n003'))
	TimerStart(CreateTimer(), 2, true, function()
		--print("масс")
		HealAreaPercent(camp,300,5)
		if not UnitAlive(camp) then
			DestroyTimer(GetExpiredTimer())
		end
	end)
end

function HealAreaPercent(hero,range,amount)
	local x,y=GetUnitXY(hero)
	local e=nil
	GroupEnumUnitsInRange(perebor,x,y,range,nil)
	while true do
		e = FirstOfGroup(perebor)

		if e == nil then break end
		if UnitAlive(e) and IsUnitAlly(e,GetOwningPlayer(hero))  then
			local amountHeal=BlzGetUnitMaxHP(e)*amount/100
			--print("лечение "..amountHeal)
			HealUnit(e,amountHeal)
		end
		GroupRemoveUnit(perebor,e)
	end
end
function AddAutoHeal(hero,amount)
	TimerStart(CreateTimer(), 1, true, function()
		HealUnit(hero,amount)
	end)
end