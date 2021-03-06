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
						if GetDestructableTypeId(d)==FourCC('LTlt')  then
							if GetDestructableLife(d)>0 and GetTerrainZ(GetDestructableX(d), GetDestructableY(d))<=150 then
								KillDestructable(d)

								local new=CreateUnit(Player(10), FourCC('e001'), GetDestructableX(d), GetDestructableY(d), 0)
								SetUnitAnimation(new,"birth")
								TimerStart(CreateTimer(), 1, false, function()
									SetUnitAnimation(new,"stand")
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