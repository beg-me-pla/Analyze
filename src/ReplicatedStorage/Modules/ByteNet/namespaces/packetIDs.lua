-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:07
-- Luau version 6, Types version 3
-- Time taken: 0.000332 seconds

local module_upvr = {}
return {
	set = function(arg1, arg2) -- Line 11, Named "set"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		module_upvr[arg1] = arg2
	end;
	ref = function() -- Line 16, Named "ref"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		return module_upvr
	end;
}