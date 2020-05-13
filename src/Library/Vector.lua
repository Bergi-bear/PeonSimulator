---------ВЕКТОРА
function UnitAddVectorForce(hero, Angle, Speed, Distance, AfterMoving)
	local data = nil
	local k = 0
	local h = 0
	--print("ForceFor "..GetUnitName(hero))
	if IsUnitType(hero, UNIT_TYPE_HERO) then
		h = GetPlayerId(GetOwningPlayer(hero))

	else
		h = GetHandleId(hero)
		--	print("НЕГЕРОЙ толкаемый "..GetUnitName(hero))
	end
	if not HERO[h] then
		--print("первый толчек для "..GetUnitName(hero))
		HERO[h] = {
			ForcesCount = 0,
			ForceRemain = {},
			ForceAngle = {},
			ForceSpeed = {},
			IsForce = {}
		}
		--data=HERO[GetHandleId(hero)]
		--MovingSystem(hero)
	end
	data = HERO[h]
	data.ForcesCount = data.ForcesCount + 1
	k = data.ForcesCount
	data.ForceRemain[k] = Distance
	data.ForceSpeed[k] = Speed
	data.ForceAngle[k] = Angle
	data.IsForce[k] = true
	data.AngleForce = Angle

	if AfterMoving == nil then
		AfterMoving = true
	end
	if data.AfterMoving == nil then
		data.AfterMoving = AfterMoving
	end
	data.AfterMoving = AfterMoving
	--print("параметры заданы"..GetUnitName(hero)..k)
end

onForces = {}
function UnitAddForce(hero, angle, speed, distance)
	-- псевдо вектор использовать только для юнитов
	local currentdistance = 0
	if onForces[GetHandleId(hero)] == nil then
		onForces[GetHandleId(hero)] = true
	end
	if GetUnitTypeId(hero) == FourCC('e009') or GetUnitTypeId(hero) == FourCC('o009') or GetUnitTypeId(hero) == FourCC('o00A') then -- типы юнитов которые нельзя толкать
		return
	end
	if not IsUnitType(hero, UNIT_TYPE_STRUCTURE) and onForces[GetHandleId(hero)]  then
		onForces[GetHandleId(hero)]=false
		TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
			currentdistance = currentdistance + speed
			--print(currentdistance)
			local x, y = GetUnitX(hero), GetUnitY(hero)
			local newX, newY = MoveX(x, speed, angle), MoveY(y, speed, angle)

			SetUnitPositionSmooth(hero, newX, newY)

			if currentdistance >= distance then
				--or (data.OnWater and data.OnTorrent==false)
				--data.IsDisabled=false
				--data.OnWater=false
				DestroyTimer(GetExpiredTimer())
				onForces[GetHandleId(hero)]=true
				--print("stop cur="..currentdistance.." dist="..distance)
			end
		end)
	end
end