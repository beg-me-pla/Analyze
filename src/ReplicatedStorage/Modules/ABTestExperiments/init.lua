-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:00
-- Luau version 6, Types version 3
-- Time taken: 0.000516 seconds

for _, v in script.Experiments:GetChildren() do
	if v:IsA("ModuleScript") then
		local v_2 = require(v)
		local RemoteConfig = v_2.RemoteConfig
		if 16 < #RemoteConfig then
			warn(`RemoteConfig '{RemoteConfig}' is longer than the maximum of 15 characters, skipping '{v.Name}' experiment.`)
		else
			({})[v.Name] = v_2
		end
	end
end
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
return {}