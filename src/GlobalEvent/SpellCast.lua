
----------------------------------
----------------------------------
----------------------------------
---

function InitSpellTrigger()
	local SpellTrigger = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		TriggerRegisterPlayerUnitEvent(SpellTrigger, player, EVENT_PLAYER_UNIT_SPELL_CAST)
	end
	TriggerAddAction(SpellTrigger, function()

		local caster           = GetTriggerUnit()
		local target=GetSpellTargetUnit()
		local casterX, casterY = GetUnitX(caster), GetUnitY(caster)
		local x,y=GetSpellTargetX(),GetSpellTargetY()
		local spellId          = GetSpellAbilityId()
		local ownplayer=GetOwningPlayer(caster)
		local id=GetPlayerId(ownplayer)



		if spellId == FourCC('ACtb') and IsUnitType(target,UNIT_TYPE_HERO) then -- Стано голема
			local data=HERO[GetPlayerId(GetOwningPlayer(target))]
			if data.ReleaseLMB then
				data.StoneCount=data.StoneCount+1
				if data.StoneCount==20 then
					data.Perk14A=true
					PerkUnlocker(data,14)
				end
			end
		end


	end)
end
TempUnit={}