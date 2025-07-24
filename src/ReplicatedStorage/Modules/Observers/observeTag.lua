-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:20
-- Luau version 6, Types version 3
-- Time taken: 0.003231 seconds

local CollectionService_upvr = game:GetService("CollectionService")
function observeTag(arg1, arg2, arg3) -- Line 56
	--[[ Upvalues[1]:
		[1]: CollectionService_upvr (readonly)
	]]
	local tbl_upvr_2 = {}
	local tbl_upvr = {}
	local function _(arg1_2) -- Line 63, Named "IsGoodAncestor"
		--[[ Upvalues[1]:
			[1]: arg3 (readonly)
		]]
		if arg3 == nil then
			return true
		end
		for _, v in arg3 do
			if arg1_2:IsDescendantOf(v) then
				return true
			end
		end
		return false
	end
	local function _(arg1_3) -- Line 77, Named "AttemptStartup"
		--[[ Upvalues[3]:
			[1]: tbl_upvr_2 (readonly)
			[2]: arg2 (readonly)
			[3]: arg1 (readonly)
		]]
		tbl_upvr_2[arg1_3] = "__inflight__"
		task.defer(function() -- Line 82
			--[[ Upvalues[4]:
				[1]: tbl_upvr_2 (copied, readonly)
				[2]: arg1_3 (readonly)
				[3]: arg2 (copied, readonly)
				[4]: arg1 (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [5] 5. Error Block 2 start (CF ANALYSIS FAILED)
			do
				return
			end
			-- KONSTANTERROR: [5] 5. Error Block 2 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [6] 6. Error Block 3 start (CF ANALYSIS FAILED)
			local xpcall_result1, _ = xpcall(function(arg1_4) -- Line 88
				--[[ Upvalues[1]:
					[1]: arg2 (copied, readonly)
				]]
				local arg2_result1 = arg2(arg1_4)
				local var9
				if arg2_result1 ~= nil then
					if typeof(arg2_result1) ~= "function" then
						var9 = false
					else
						var9 = true
					end
					assert(var9, "callback must return a function or nil")
				end
				return arg2_result1
			end, debug.traceback, arg1_3)
			-- KONSTANTERROR: [6] 6. Error Block 3 end (CF ANALYSIS FAILED)
		end)
	end
	local function _(arg1_5) -- Line 120, Named "AttemptCleanup"
		--[[ Upvalues[1]:
			[1]: tbl_upvr_2 (readonly)
		]]
		local var12 = tbl_upvr_2[arg1_5]
		tbl_upvr_2[arg1_5] = "__dead__"
		if typeof(var12) == "function" then
			task.spawn(var12)
		end
	end
	local function _(arg1_6) -- Line 129, Named "OnAncestryChanged"
		--[[ Upvalues[4]:
			[1]: arg3 (readonly)
			[2]: tbl_upvr_2 (readonly)
			[3]: arg2 (readonly)
			[4]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
		if arg3 == nil then
			-- KONSTANTWARNING: GOTO [19] #17
		end
		-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 5. Error Block 16 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 5. Error Block 16 end (CF ANALYSIS FAILED)
	end
	local var13_upvw
	local function OnInstanceAdded_upvr(arg1_7) -- Line 139, Named "OnInstanceAdded"
		--[[ Upvalues[6]:
			[1]: var13_upvw (read and write)
			[2]: tbl_upvr_2 (readonly)
			[3]: tbl_upvr (readonly)
			[4]: arg3 (readonly)
			[5]: arg2 (readonly)
			[6]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 25 start (CF ANALYSIS FAILED)
		if not var13_upvw.Connected then return end
		if tbl_upvr_2[arg1_7] ~= nil then return end
		tbl_upvr_2[arg1_7] = "__dead__"
		tbl_upvr[arg1_7] = arg1_7.AncestryChanged:Connect(function() -- Line 149
			--[[ Upvalues[5]:
				[1]: arg1_7 (readonly)
				[2]: arg3 (copied, readonly)
				[3]: tbl_upvr_2 (copied, readonly)
				[4]: arg2 (copied, readonly)
				[5]: arg1 (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
			if arg3 == nil then
				-- KONSTANTWARNING: GOTO [20] #18
			end
			-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [6] 6. Error Block 16 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [6] 6. Error Block 16 end (CF ANALYSIS FAILED)
		end)
		if arg3 == nil then
			-- KONSTANTWARNING: GOTO [45] #39
		end
		-- KONSTANTERROR: [0] 1. Error Block 25 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [31] 27. Error Block 20 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [31] 27. Error Block 20 end (CF ANALYSIS FAILED)
	end
	var13_upvw = CollectionService_upvr:GetInstanceAddedSignal(arg1):Connect(OnInstanceAdded_upvr)
	local var17_upvw = var13_upvw
	task.defer(function() -- Line 172
		--[[ Upvalues[4]:
			[1]: var17_upvw (read and write)
			[2]: CollectionService_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: OnInstanceAdded_upvr (readonly)
		]]
		if not var17_upvw.Connected then
		else
			for _, v_2 in CollectionService_upvr:GetTagged(arg1) do
				task.spawn(OnInstanceAdded_upvr, v_2)
			end
		end
	end)
	local any_Connect_result1_upvw = CollectionService_upvr:GetInstanceRemovedSignal(arg1):Connect(function(arg1_8) -- Line 155, Named "OnInstanceRemoved"
		--[[ Upvalues[2]:
			[1]: tbl_upvr_2 (readonly)
			[2]: tbl_upvr (readonly)
		]]
		local var15 = tbl_upvr_2[arg1_8]
		tbl_upvr_2[arg1_8] = "__dead__"
		if typeof(var15) == "function" then
			task.spawn(var15)
		end
		local var16 = tbl_upvr[arg1_8]
		if var16 then
			var16:Disconnect()
			tbl_upvr[arg1_8] = nil
		end
		tbl_upvr_2[arg1_8] = nil
	end)
	return function() -- Line 183
		--[[ Upvalues[4]:
			[1]: var17_upvw (read and write)
			[2]: any_Connect_result1_upvw (read and write)
			[3]: tbl_upvr_2 (readonly)
			[4]: tbl_upvr (readonly)
		]]
		var17_upvw:Disconnect()
		any_Connect_result1_upvw:Disconnect()
		local next_result1 = next(tbl_upvr_2)
		while next_result1 do
			local var27 = next_result1
			local var28 = tbl_upvr_2[var27]
			tbl_upvr_2[var27] = "__dead__"
			if typeof(var28) == "function" then
				task.spawn(var28)
			end
			local var29 = tbl_upvr[var27]
			if var29 then
				var29:Disconnect()
				tbl_upvr[var27] = nil
			end
			tbl_upvr_2[var27] = nil
		end
	end
end
return observeTag