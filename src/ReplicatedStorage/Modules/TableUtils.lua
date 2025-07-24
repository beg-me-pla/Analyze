-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:00
-- Luau version 6, Types version 3
-- Time taken: 0.000456 seconds

local module_upvr = {}
function module_upvr.DeepCopy(arg1, arg2) -- Line 8
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local clone = table.clone(arg2)
	for i, v in clone do
		if type(v) == "table" then
			clone[i] = module_upvr:DeepCopy(v)
		end
	end
	return clone
end
return module_upvr