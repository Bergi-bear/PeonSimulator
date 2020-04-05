---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 28.03.2020 1:00
---
function RegisterCollision(hero)
	local ThisTrigger = CreateTrigger()
	local IsWork=false
	if  hero then
		IsWork=true
	end
	TriggerRegisterUnitInRangeSimple(ThisTrigger, 80, hero)
	TriggerAddAction(ThisTrigger, function()
		local CollisionUnit=GetTriggerUnit()
		local data=HERO[GetPlayerId(GetOwningPlayer(hero))]
		--hero - юнит к которому подошли
		--print("any reg "..GetUnitName(CollisionUnit))
		--Общее условие
		if UnitAlive(CollisionUnit) then
			if GetUnitTypeId(CollisionUnit)==FourCC('o001') then
				if data.IsWood then
					local k=1
					if data.Perk1 then
						k=k+1
					end
					data.SingleWoodCount=data.SingleWoodCount+k
					--print(data.SingleWoodCount)
					if data.SingleWoodCount>=25 then
						data.Perk1=true
						if GetLocalPlayer()==GetOwningPlayer(hero) then
							BlzFrameSetVisible(PerkIsLock[1],false)
						end
					end
					HealUnit(hero,1000)
					AddLumber(k,hero)
					MoveWoodAsFarm(hero,k)
					UnitAddItemById(hero,FourCC('I000'))-- ускорение

					--CreateItem(FourCC('I000'),0,0)
				end
			end
			if GetUnitTypeId(CollisionUnit)==FourCC('e002') then

				if not data.IsWood then
					--print("звук подбора")
					PlaySoundAtPointBJ( gg_snd_Load, 100, RemoveLocation(Location(GetUnitXY(hero))), 0 )
					KillUnit(CollisionUnit)
					data.IsWood=true
				end
			end
			if GetUnitTypeId(CollisionUnit)==FourCC('n001') then -- овца
				SetUnitExploded(CollisionUnit,true)
				local data=AnyData[GetHandleId(CollisionUnit)]
				local x,y=data.x,data.y
				UnitDamageArea(CollisionUnit,100,x,y,150)
				DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\Mortar\\MortarMissile",x,y))
				KillUnit(CollisionUnit)
				TimerStart(CreateTimer(), 30, false, function()
					local new =CreateUnit(Player(PLAYER_NEUTRAL_AGGRESSIVE), FourCC('n001'), x, y, 0)
					AnyData[GetHandleId(new)]={
						x=x,
						y=y,
					}
				end)
			end

		end

	end)
	return IsWork
end

function AddLumber (ttk,caster)
	local data=HERO[GetPlayerId(GetOwningPlayer(caster))]
	local ownplayer=GetOwningPlayer(caster)
	if ttk>0 and data.IsWood then
		FlyTextTagLumberBounty(caster,"+"..ttk,ownplayer)
		AdjustPlayerStateBJ(ttk, ownplayer, PLAYER_STATE_RESOURCE_LUMBER )
		data.IsWood=false
	end
end