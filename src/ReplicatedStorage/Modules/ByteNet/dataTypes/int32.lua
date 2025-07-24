-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:05
-- Luau version 6, Types version 3
-- Time taken: 0.000397 seconds

local module_upvr = {
	write = require(script.Parent.Parent.process.bufferWriter).i32;
	read = function(arg1, arg2) -- Line 9, Named "read"
		return buffer.readi32(arg1, arg2), 4
	end;
}
return function() -- Line 14
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr
end