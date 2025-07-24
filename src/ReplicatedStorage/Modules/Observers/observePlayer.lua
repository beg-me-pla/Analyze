-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:21
-- Luau version 6, Types version 3
-- Time taken: 0.001320 seconds

local Players_upvr = game:GetService("Players")
return function(arg1) -- Line 21, Named "observePlayer"
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	local tbl_upvr = {}
	local var3_upvw
	local function OnPlayerAdded_upvr(arg1_2) -- Line 27, Named "OnPlayerAdded"
		--[[ Upvalues[3]:
			[1]: var3_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: tbl_upvr (readonly)
		]]
		if not var3_upvw.Connected then
		else
			task.spawn(function() -- Line 32
				--[[ Upvalues[4]:
					[1]: arg1 (copied, readonly)
					[2]: arg1_2 (readonly)
					[3]: var3_upvw (copied, read and write)
					[4]: tbl_upvr (copied, readonly)
				]]
				local arg1_result1 = arg1(arg1_2)
				if typeof(arg1_result1) == "function" then
					if var3_upvw.Connected and arg1_2.Parent then
						tbl_upvr[arg1_2] = arg1_result1
						return
					end
					task.spawn(arg1_result1)
				end
			end)
		end
	end
	var3_upvw = Players_upvr.PlayerAdded:Connect(OnPlayerAdded_upvr)
	local var7_upvw = var3_upvw
	task.defer(function() -- Line 57
		--[[ Upvalues[3]:
			[1]: var7_upvw (read and write)
			[2]: Players_upvr (copied, readonly)
			[3]: OnPlayerAdded_upvr (readonly)
		]]
		if not var7_upvw.Connected then
		else
			for _, v in Players_upvr:GetPlayers() do
				task.spawn(OnPlayerAdded_upvr, v)
			end
		end
	end)
	local any_Connect_result1_upvw = Players_upvr.PlayerRemoving:Connect(function(arg1_3) -- Line 44, Named "OnPlayerRemoving"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		local var6 = tbl_upvr[arg1_3]
		tbl_upvr[arg1_3] = nil
		if typeof(var6) == "function" then
			task.spawn(var6)
		end
	end)
	return function() -- Line 68
		--[[ Upvalues[3]:
			[1]: var7_upvw (read and write)
			[2]: any_Connect_result1_upvw (read and write)
			[3]: tbl_upvr (readonly)
		]]
		var7_upvw:Disconnect()
		any_Connect_result1_upvw:Disconnect()
		local next_result1 = next(tbl_upvr)
		while next_result1 do
			local var17 = next_result1
			local var18 = tbl_upvr[var17]
			tbl_upvr[var17] = nil
			if typeof(var18) == "function" then
				task.spawn(var18)
			end
		end
	end
end