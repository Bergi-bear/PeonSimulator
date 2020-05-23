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
---@param minlong "Милимальное_число_отображаемых_блоков"ы
function CreateVisualPointerForUnitBySplat(hero,flag,long,step,minlong)
	--local effMain={}
	local image={}
	local pid=GetPlayerId(GetOwningPlayer(hero))
	local data=HERO[pid]
	--local step=50
	--local size=step/100
	--local k=10
	local LastMouseX=0


	if GetLocalPlayer()~=Player(pid) then
	end

	for i=1,long do
		image[i]=CreateImage("pointer.dds",16,16,16,4000,4000,0,0,0,150,4)
		SetImageColor(image[i],0,255,0,128)
		SetImageRenderAlways(image[i], true)
		ShowImage(image[i],true)
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
		for i=1,#image do
			DestroyImage(image[i])
		end
	end
	local curAngle=0

	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		--angle=GetUnitFacing(hero)
		--local xs,ys=MoveXY(GetUnitX(hero),GetUnitY(hero),10,angle-30)
		local xs,ys=MoveXY(GetUnitX(hero)-16,GetUnitY(hero)-16,40,curAngle)--стартовое смещение
		xs,ys=MoveXY(xs,ys,40,curAngle+90)
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

		for _=1,#image do
			distance=distance-step
			if distance>=0 then
				block=block+1
			end
		end
		if minlong~=nil then
			block=minlong
		end
		--print(block)
		local k=0
		for i=1,#image do
			if i<block then
				local nx,ny=0,0
				--print("block="..block)



				if i>=block-40 and i<=block-20 then
					--print(i.."создаём стрелочку")
					local axs,ays=MoveXY(xs,ys,(block-40)*step,curAngle)
					k=k+1
					nx,ny=MoveXY(axs,ays,step*k,curAngle+90)
					SetImagePosition(image[i],nx,ny,0)
				else
					nx,ny=MoveXY(xs,ys,step*i,curAngle)--вот так вс отлично работает
					SetImagePosition(image[i],nx,ny,0)
				end



				--local z=GetTerrainZ(nx,ny)
				--SetImageConstantHeight()
				--ShowImage(image[i],true)
			else --меньшение
				SetImagePosition(image[i],6000,6000,0)
				--ShowImage(image[i],false)
			end
		end

		if flag==1 then
			if not data.HaveAFire then
				Destroy()
			end
		end
	end)
end