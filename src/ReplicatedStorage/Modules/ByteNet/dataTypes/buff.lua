-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:04
-- Luau version 6, Types version 3
-- Time taken: 0.001080 seconds

local bufferWriter = require(script.Parent.Parent.process.bufferWriter)
local module_upvr = {
	read = function(arg1, arg2) -- Line 9, Named "read"
		local buffer_readu16_result1 = buffer.readu16(arg1, arg2)
		local buffer_create_result1 = buffer.create(buffer_readu16_result1)
		buffer.copy(buffer_create_result1, 0, arg1, arg2 + 2, buffer_readu16_result1)
		return buffer_create_result1, buffer_readu16_result1 + 2
	end;
}
local u16_upvr = bufferWriter.u16
local dyn_alloc_upvr = bufferWriter.dyn_alloc
local copy_upvr = bufferWriter.copy
function module_upvr.write(arg1) -- Line 18
	--[[ Upvalues[3]:
		[1]: u16_upvr (readonly)
		[2]: dyn_alloc_upvr (readonly)
		[3]: copy_upvr (readonly)
	]]
	local buffer_len_result1 = buffer.len(arg1)
	u16_upvr(buffer_len_result1)
	dyn_alloc_upvr(buffer_len_result1)
	copy_upvr(arg1)
end
return function() -- Line 29
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr
end