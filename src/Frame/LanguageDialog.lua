---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 27.04.2020 3:12




function ButtonPress()
	local this = CreateTrigger()

	for i = 1, 4 do
		TriggerRegisterDialogEventBJ(this, LangDialog[i])
	end

	TriggerAddAction(this, function()
		--print("нажата кнопка диалога")
		local pid=GetPlayerId(GetTriggerPlayer())
		if GetClickedButton()==ButtonRU[pid] then
			--print("11111")
			print(GetPlayerName(GetTriggerPlayer()).."Выбрал русский "..BlzGetLocale())
			PerkButtonLineNonLocal(pid,0)

		end
		if GetClickedButton()==ButtonENG[pid] then
			--print("22222")
			print(GetPlayerName(GetTriggerPlayer()).." Chose english "..BlzGetLocale())
			HERO[pid].Lang=1
			PerkButtonLineNonLocal(pid,1)
		end
		--CreateMouseHelperNEW(pid)
	end)
end

LangDialog ={DialogCreate(),DialogCreate(),DialogCreate(),DialogCreate()}

ButtonRU={}
ButtonENG={}

function CreateLanguageDialog()
	--print("init")
	for i=0,3 do
		ButtonRU[i]=DialogAddButtonBJ(LangDialog[i+1], "Русский")
		ButtonENG[i]=DialogAddButtonBJ(LangDialog[i+1], "English")
		DialogSetMessageBJ(LangDialog[i+1], "Language?")
		DialogDisplayBJ(true, LangDialog[i+1], Player(i))
		--print("i="..i)
	end
end
