-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:06
-- Luau version 6, Types version 3
-- Time taken: 0.000598 seconds

local bufferWriter = require(script.Parent.Parent.process.bufferWriter)
local module_upvr = {
	read = function(arg1, arg2) -- Line 12, Named "read"
		return Vector2.new(buffer.readf32(arg1, arg2), buffer.readf32(arg1, arg2 + 4)), 8
	end;
}
local alloc_upvr = bufferWriter.alloc
local f32NoAlloc_upvr = bufferWriter.f32NoAlloc
function module_upvr.write(arg1) -- Line 16
	--[[ Upvalues[2]:
		[1]: alloc_upvr (readonly)
		[2]: f32NoAlloc_upvr (readonly)
	]]
	alloc_upvr(8)
	f32NoAlloc_upvr(arg1.X)
	f32NoAlloc_upvr(arg1.Y)
end
return function() -- Line 23
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr
end