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