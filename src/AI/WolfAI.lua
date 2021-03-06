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
		if hero and GetUnitAbilityLevel(boss,FourCC('BPSE'))==0 then
			--print("Нападаем на "..GetUnitName(hero))
			local angle= math.deg(AngleBetweenXY(GetUnitX(boss), GetUnitY(boss), GetUnitX(hero), GetUnitY(hero)))
			BlzSetUnitFacingEx(boss,angle)
			UnitAddForce(boss,angle,40,DistanceBetweenXY(GetUnitX(boss),GetUnitY(boss),GetUnitXY(hero)))
		end
		if not UnitAlive(boss) then
			DestroyTimer(GetExpiredTimer())
			for _=1,10 do
				local r=GetRandomInt(-100,100)
				local r2=GetRandomInt(-100,100)
				CreateFreeWood(x+r,y+r2)
			end
		end
	end)
end