---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 22.04.2020 0:28
---
---
function Normadia()
	--print("Нормандия")
	SetPlayerAllianceStateBJ(Player(14), Player(9), bj_ALLIANCE_ALLIED_VISION)
	SetPlayerAllianceStateBJ(Player(14), Player(10), bj_ALLIANCE_ALLIED_VISION)
	SetPlayerAllianceStateBJ(Player(9), Player(14), bj_ALLIANCE_ALLIED_VISION)
	SetPlayerAllianceStateBJ(Player(9), Player(10), bj_ALLIANCE_ALLIED_VISION)
	SetPlayerAllianceStateBJ(Player(10), Player(14), bj_ALLIANCE_ALLIED_VISION)
	SetPlayerAllianceStateBJ(Player(10), Player(9), bj_ALLIANCE_ALLIED_VISION)

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
	local new=CreateUnit(Player(9), FourCC('h003'), x, y, 0) -- корабль
	local time=0
	local IsFull=true
	TimerStart(CreateTimer(), 2, true, function()
		time=time+2
		local xp,yp=GetUnitXY(new)
		local z=GetTerrainZ(MoveXY(xp,yp,200,GetUnitFacing(new)))
		--print(z)
		if IsFull then
			if GetUnitCurrentOrder(new)~=String2OrderIdBJ("move") then
				IssuePointOrder(new,"move",xend,yend)
			end
		end

		if time>30 then
			DestroyTimer(GetExpiredTimer())
			KillUnit(new)
		end
		if z>0 and IsFull then
			IsFull=false
			--print("высадка")
			--
			CreateEnemy(new,FourCC('hfoo'),4)
			if GetUnitCurrentOrder(new)~=String2OrderIdBJ("move") then
				IssuePointOrder(new,"move",x,y)
			end
		end
		if IsUnitInRangeXY(new,x,y,300) and time>=15 then
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
	local ship=FindUnitOfType(FourCC("o007"))
	if n<50 then
		for i=1,k do
			local new=CreateUnit(Player(14), id, x, y, 0)
			footmans=footmans+1
			--print("создан")
			if GetUnitCurrentOrder(new)~=String2OrderIdBJ("attack") then
				if ship then
					IssuePointOrder(new,"attack",-4935.0, 809.5)
				else
					IssuePointOrder(new,"attack",0, 0)
				end
			end
		end
	else
	--	print("Заспамлено больше 50 пехотинцев"..n)
	end


end