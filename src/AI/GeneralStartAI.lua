---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 07.04.2020 3:02
---
function StartPeonAI(hero)
	--print("Запущен ИИ для "..GetUnitName(hero))
	local data=HERO[GetPlayerId(GetOwningPlayer(hero))]
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
			k=k+1
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