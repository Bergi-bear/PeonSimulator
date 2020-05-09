---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 27.03.2020 22:59
---
function AfterAttack(hero, delay)
	local x,y=MoveXY(GetUnitX(hero),GetUnitY(hero),70,GetUnitFacing(hero))
	local data=HERO[GetPlayerId(GetOwningPlayer(hero))]
	local damage=BlzGetUnitBaseDamage(hero,0)--*50
	TimerStart(CreateTimer(), delay, false, function()

		data.Reflection=true
		if not data.ReleaseLMB and data.ReleaseRMB and UnitAlive(hero) then
			local OnAttack,CUnit= UnitDamageArea(hero,damage,x,y,70)
			--OnAttack,CUnit=UnitDamageArea(hero,damage,x,y,70)
			--OnAttack,CUnit=UnitDamageArea(hero,damage,x,y,70)
			--OnAttack,CUnit=UnitDamageArea(hero,damage,x,y,70)
			--OnAttack,CUnit=UnitDamageArea(hero,damage,x,y,70)
			--OnAttack,CUnit=UnitDamageArea(hero,damage,x,y,70)

			if OnAttack then
				data.RevoltSec=0
			end

			--if (data.HaveAFire or data.Perk16 ) and ) then
			if (data.HaveAFire or data.Perk16 )  and true then
				if  IsUnitType(CUnit,UNIT_TYPE_MECHANICAL)  and   IsUnitAlly(hero,GetOwningPlayer(CUnit))  and DistanceBetweenXY(GetUnitX(hero),GetUnitY(hero),GetUnitXY(CUnit)) <=200 and
						GetUnitTypeId(CUnit)~=FourCC('o005') and GetUnitTypeId(CUnit)~=FourCC('e002')  then
					--print("в плотную нет огня "..GetUnitName(CUnit))
					DestroyTimer(GetExpiredTimer())
					return
				end
				SingleCannon(hero,GetUnitFacing(hero),"Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl",damage*5)
				if (data.HaveAFire and data.Perk16)  then
					SingleCannon(hero,GetUnitFacing(hero)-15,"Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl",damage*5)
					SingleCannon(hero,GetUnitFacing(hero)+15,"Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl",damage*5)
				end
				if not data.Perk16 then
					data.HaveAFire=false
					UnitRemoveAbility(hero,FourCC('A006'))
				end
			end


		end
		if true and data.Perk6 and data.Thor then -- удар тора
			--data.Perk6=false
			--print("удар тора")

			local cd=2

			if UnitDamageArea(hero,damage*.5,x,y,150)  then --дополнительный урон на торе
				StartFrameCD(2,data,6)
				data.Thor=false
				TimerStart(CreateTimer(), cd, false, function()
					data.Thor=true
				end)
				--CastArea(hero,FourCC('A00Q'),x,y)
				UnitAddItemById(hero,FourCC('I001'))
				DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster",x,y))
			end
			--print("ПОСТ удар тора")
		end
		TimerStart(CreateTimer(), 0.2, false, function()
			data.Reflection=false
			DestroyTimer(GetExpiredTimer())
		end)
		DestroyTimer(GetExpiredTimer())
	end)
end

function MakeUnitAllEnemy(hero)
	--SetPlayerAlliance()
	local p=GetOwningPlayer(hero)
	SetPlayerAllianceStateBJ(p, Player(0), bj_ALLIANCE_UNALLIED)
	SetPlayerAllianceStateBJ(p, Player(1), bj_ALLIANCE_UNALLIED)
	SetPlayerAllianceStateBJ(p, Player(2), bj_ALLIANCE_UNALLIED)
	SetPlayerAllianceStateBJ(p, Player(3), bj_ALLIANCE_UNALLIED)
	SetPlayerAllianceStateBJ(p, Player(5), bj_ALLIANCE_UNALLIED)

	SetPlayerAllianceStateBJ(Player(0),p, bj_ALLIANCE_UNALLIED)
	SetPlayerAllianceStateBJ(Player(1),p, bj_ALLIANCE_UNALLIED)
	SetPlayerAllianceStateBJ(Player(2),p, bj_ALLIANCE_UNALLIED)
	SetPlayerAllianceStateBJ(Player(3),p, bj_ALLIANCE_UNALLIED)
	SetPlayerAllianceStateBJ(Player(5),p, bj_ALLIANCE_UNALLIED)
end

function MakeUnitAllAlly(hero)
	--SetPlayerAlliance()
	local p=GetOwningPlayer(hero)
	SetPlayerAllianceStateBJ(p, Player(0), bj_ALLIANCE_ALLIED_VISION)
	SetPlayerAllianceStateBJ(p, Player(1), bj_ALLIANCE_ALLIED_VISION)
	SetPlayerAllianceStateBJ(p, Player(2), bj_ALLIANCE_ALLIED_VISION)
	SetPlayerAllianceStateBJ(p, Player(3), bj_ALLIANCE_ALLIED_VISION)
	SetPlayerAllianceStateBJ(p, Player(5), bj_ALLIANCE_ALLIED_VISION)

	SetPlayerAllianceStateBJ(Player(0),p, bj_ALLIANCE_ALLIED_VISION)
	SetPlayerAllianceStateBJ(Player(1),p, bj_ALLIANCE_ALLIED_VISION)
	SetPlayerAllianceStateBJ(Player(2),p, bj_ALLIANCE_ALLIED_VISION)
	SetPlayerAllianceStateBJ(Player(3),p, bj_ALLIANCE_ALLIED_VISION)
	SetPlayerAllianceStateBJ(Player(5),p, bj_ALLIANCE_ALLIED_VISION)
end