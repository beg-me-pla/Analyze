-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:08
-- Luau version 6, Types version 3
-- Time taken: 0.001691 seconds

local var1_upvw
local function functionPasser_upvr(arg1, ...) -- Line 8, Named "functionPasser"
	--[[ Upvalues[1]:
		[1]: var1_upvw (read and write)
	]]
	var1_upvw = nil
	arg1(...)
	var1_upvw = var1_upvw
end
local function yielder_upvr() -- Line 15, Named "yielder"
	--[[ Upvalues[1]:
		[1]: functionPasser_upvr (readonly)
	]]
	while true do
		functionPasser_upvr(coroutine.yield())
	end
end
local function runListener_upvr(arg1, ...) -- Line 21, Named "runListener"
	--[[ Upvalues[2]:
		[1]: var1_upvw (read and write)
		[2]: yielder_upvr (readonly)
	]]
	if var1_upvw == nil then
		var1_upvw = coroutine.create(yielder_upvr)
		coroutine.resume(var1_upvw)
	end
	task.spawn(var1_upvw, arg1, ...)
end
local readRefs_upvr = require(script.Parent.readRefs)
local any_ref_result1_upvr = require(script.Parent.Parent.namespaces.packetIDs).ref()
return function(arg1, arg2, arg3) -- Line 30
	--[[ Upvalues[3]:
		[1]: readRefs_upvr (readonly)
		[2]: any_ref_result1_upvr (readonly)
		[3]: runListener_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local const_number = 0
	readRefs_upvr.set(arg2)
	while const_number < buffer.len(arg1) do
		local var14 = any_ref_result1_upvr[buffer.readu8(arg1, const_number)]
		local any_reader_result1, _ = var14.reader(arg1, const_number + 1)
		for _, v in var14.getListeners() do
			runListener_upvr(v, any_reader_result1, arg3)
			local _
		end
	end
end