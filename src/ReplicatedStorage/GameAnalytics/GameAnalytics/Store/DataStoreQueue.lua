-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:09
-- Luau version 6, Types version 3
-- Time taken: 0.002723 seconds

local module_upvr = {
	QR = true;
	Queue = {};
	Process = 0;
}
local tbl_upvr = {}
task.spawn(function() -- Line 7
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	while module_upvr.QR do
		task.wait()
		if 0 < #module_upvr.Queue then
			local _1_upvr = module_upvr.Queue[1]
			table.remove(module_upvr.Queue, 1)
			if not tbl_upvr[_1_upvr.Key] then
				tbl_upvr[_1_upvr.Key] = 0
			end
			local var5 = module_upvr
			var5.Process += 1
			var5 = _1_upvr.Delay + tbl_upvr[_1_upvr.Key] - DateTime.now().UnixTimestamp
			local var6 = var5
			if var6 <= 0 then
				var6 = 0
			end
			task.delay(var6, function() -- Line 22
				--[[ Upvalues[3]:
					[1]: tbl_upvr (copied, readonly)
					[2]: _1_upvr (readonly)
					[3]: module_upvr (copied, readonly)
				]]
				local var8
				repeat
					tbl_upvr[_1_upvr.Key] = DateTime.now().UnixTimestamp
					local pcall_result1, pcall_result2, pcall_result3 = pcall(_1_upvr.Func)
					local var12 = pcall_result1
					local var13 = pcall_result2
					var8 = pcall_result3
					if not var12 then
						warn(var13)
					end
					if not var12 or var13 then break end
					if not _1_upvr.Delay then break end
					task.wait(_1_upvr.Delay)
				until not var12 or var13
				_1_upvr.Event:Fire(var12, var13, var8)
				local var14 = module_upvr
				var14.Process -= 1
				tbl_upvr[_1_upvr.Key] = DateTime.now().UnixTimestamp
			end)
		end
	end
end)
function module_upvr.AddRequest(arg1, arg2, arg3) -- Line 41
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local BindableEvent = Instance.new("BindableEvent")
	local tbl = {}
	tbl.Key = arg1
	tbl.Delay = arg3
	tbl.Func = arg2
	tbl.Event = BindableEvent
	table.insert(module_upvr.Queue, tbl)
	local any_Wait_result1, any_Wait_result2, any_Wait_result3 = BindableEvent.Event:Wait()
	return any_Wait_result1, any_Wait_result2, any_Wait_result3
end
function module_upvr.RemoveKey(arg1) -- Line 55
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	tbl_upvr[arg1] = nil
end
return module_upvr