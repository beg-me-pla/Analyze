-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:25
-- Luau version 6, Types version 3
-- Time taken: 0.000366 seconds

local function DeepCopy_upvr(arg1) -- Line 2, Named "DeepCopy"
	--[[ Upvalues[1]:
		[1]: DeepCopy_upvr (readonly)
	]]
	local clone = table.clone(arg1)
	for i, v in clone do
		if type(v) == "table" then
			clone[i] = DeepCopy_upvr(v)
		end
	end
	return clone
end
return DeepCopy_upvr