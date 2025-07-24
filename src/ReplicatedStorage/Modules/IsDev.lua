-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:24
-- Luau version 6, Types version 3
-- Time taken: 0.000554 seconds

local any_IsStudio_result1_upvr = game:GetService("RunService"):IsStudio()
return function() -- Line 6
	--[[ Upvalues[1]:
		[1]: any_IsStudio_result1_upvr (readonly)
	]]
	local var4 = true
	if game.GameId ~= 7500518143 then
		var4 = true
		if game.GameId ~= 7835737630 then
			var4 = any_IsStudio_result1_upvr
		end
	end
	return var4
end