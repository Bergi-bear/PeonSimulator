---------ВЕКТОРА
function UnitAddVectorForce(hero,Angle,Speed,Distance)
	local data=nil
	local k=0
	local h=0
	if IsUnitType(hero,UNIT_TYPE_HERO) then
		h=UnitGetPid(hero)

	else
		h=GetHandleId(hero)
		print("НЕГЕРОЙ толкаемый")
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
	--print("параметры заданы"..GetUnitName(hero)..k)
end