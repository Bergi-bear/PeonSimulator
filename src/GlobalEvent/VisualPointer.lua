---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 18.05.2020 21:36
---


---CreateVisualPointerForUnit
---@param hero "герой"
---@param flag "Параметры_завершения"
---@param long "Число_блоков"
---@param step "Ширина_блока"
---@param minlong "Милимальное_число_отображаемых_блоков"
function CreateVisualPointerForUnit(hero,flag,long,step,minlong)
	local effMain={}
	local pid=GetPlayerId(GetOwningPlayer(hero))
	local data=HERO[pid]
	--local step=50
	local size=step/100
	--local k=10
	local LastMouseX=0
	local blockname="s_cube1"
	local arrowname="s_arr1"

	if GetLocalPlayer()~=Player(pid) then
		blockname=""
		arrowname=""
	end

	for i=1,long do
		if i==long then
			effMain[i]=AddSpecialEffect(arrowname,5000,5000)
		else
			effMain[i]=AddSpecialEffect(blockname,5000,5000)
		end
		--print(size)
		--Does the BlzSetSpecialEffectMatrixScale function work?
		--BlzResetSpecialEffectMatrix(effMain[i])
		--BlzSetSpecialEffectMatrixScale(effMain[i],size,0,0) --does not work
		BlzSetSpecialEffectScale(effMain[i],size) -- is work
		BlzSetSpecialEffectAlpha(effMain[i],128)
		BlzSetSpecialEffectColor(effMain[i],0,255,0)
	end

	local distance=0
	local mouseMoving=false
	local savedDistance=0
	local lastAngle=0
	local delta=0
	local angle=0
	local function Destroy()
		DestroyTimer(GetExpiredTimer())
		data.FirePointer=false
		--print("destroy")
		for i=1,#effMain do
			BlzSetSpecialEffectPosition(effMain[i],6000,6000,0)
			DestroyEffect(effMain[i])
		end
	end
	local curAngle=0
	local nd=CreateDestructable(FourCC('LTrc'), 0, 0, 0, GetRandomInt(1, 1), GetRandomInt(1, 5))
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		--angle=GetUnitFacing(hero)
		--local xs,ys=MoveXY(GetUnitX(hero),GetUnitY(hero),10,angle-30)
		local xs,ys=GetUnitXY(hero)
		angle=data.AngleMouse--AngleBetweenXY(xs, ys, GetPlayerMouseX[pid], GetPlayerMouseY[pid])/bj_DEGTORAD
		curAngle=lerpTheta(curAngle,angle,TIMER_PERIOD*8)
		if LastMouseX == GetPlayerMouseX[pid] then
			mouseMoving=false
			--savedDistance=DistanceBetweenXY(GetPlayerMouseX[pid],GetPlayerMouseY[pid],GetUnitXY(hero))
		else
			mouseMoving=true
			--print("движется")
		end
		LastMouseX = GetPlayerMouseX[pid]
		delta=curAngle-lastAngle
		lastAngle=curAngle


		--angle=data.LastTurn--/bj_DEGTORAD


		--print(delta)
		if mouseMoving then
			distance=DistanceBetweenXY(GetPlayerMouseX[pid],GetPlayerMouseY[pid],GetUnitXY(hero))
			savedDistance=DistanceBetweenXY(GetPlayerMouseX[pid],GetPlayerMouseY[pid],GetUnitXY(hero))
		else
			distance=savedDistance
		end
		local block=0

		for _=1,#effMain do
			distance=distance-step
			if distance>=0 then
				block=block+1
			end
		end
		if minlong~=nil then
			block=minlong
		end
		--print(block)
		for i=1,#effMain do
			if i<block then
				local nx,ny=MoveXY(xs,ys,(step)*i,curAngle)
				BlzSetSpecialEffectPosition(effMain[i],nx,ny,GetUnitZ(hero)-60*size) --100*size
				BlzSetSpecialEffectYaw(effMain[i], math.rad(curAngle))
				--SetFogStateRadius(GetOwningPlayer(hero), FOG_OF_WAR_VISIBLE, nx,ny, 500*size, true)
			--print(GetUnitZ(hero))
			else
				if i==#effMain then
					local nx,ny=MoveXY(xs,ys,(step)*block,curAngle)
					BlzSetSpecialEffectPosition(effMain[i],nx,ny,GetUnitZ(hero)-60*size)
					BlzSetSpecialEffectYaw(effMain[i], math.rad(curAngle))

					KillDestructable(nd)
					ShowDestructable(nd,false)
					nd=CreateDestructable(FourCC('LTrc'), nx,ny, 0, GetRandomInt(1, 1), GetRandomInt(1, 1))
					SetFogStateRadius(GetOwningPlayer(hero), FOG_OF_WAR_VISIBLE, nx,ny, 200*size, true)
				else
					BlzSetSpecialEffectPosition(effMain[i],6000,6000,0)
				end

			end
		end

		if flag==1 then
			if not data.HaveAFire then
				Destroy()
			end
		end
	end)
end