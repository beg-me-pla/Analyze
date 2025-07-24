-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:09
-- Luau version 6, Types version 3
-- Time taken: 0.002535 seconds

local HttpService_upvr = game:GetService("HttpService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
if not ReplicatedStorage:FindFirstChild("PostieSent") then
	local RemoteEvent = Instance.new("RemoteEvent")
	RemoteEvent.Name = "PostieSent"
	RemoteEvent.Parent = ReplicatedStorage
end
if not ReplicatedStorage:FindFirstChild("PostieReceived") then
	local RemoteEvent_2 = Instance.new("RemoteEvent")
	RemoteEvent_2.Name = "PostieReceived"
	RemoteEvent_2.Parent = ReplicatedStorage
end
local PostieSent_upvr = ReplicatedStorage.PostieSent
local PostieReceived_upvr = ReplicatedStorage.PostieReceived
local any_IsServer_result1_upvr = game:GetService("RunService"):IsServer()
local tbl_upvr = {}
local tbl_upvr_2 = {}
local module = {
	invokeClient = function(arg1, arg2, arg3, ...) -- Line 81, Named "invokeClient"
		--[[ Upvalues[4]:
			[1]: any_IsServer_result1_upvr (readonly)
			[2]: HttpService_upvr (readonly)
			[3]: tbl_upvr_2 (readonly)
			[4]: PostieSent_upvr (readonly)
		]]
		assert(any_IsServer_result1_upvr, "Postie.invokeClient can only be called from the server")
		local current_thread_upvr = coroutine.running()
		local var12_upvw = false
		local any_GenerateGUID_result1_upvr_2 = HttpService_upvr:GenerateGUID(false)
		tbl_upvr_2[any_GenerateGUID_result1_upvr_2] = function(arg1_2, arg2_2, ...) -- Line 89
			--[[ Upvalues[5]:
				[1]: arg2 (readonly)
				[2]: var12_upvw (read and write)
				[3]: tbl_upvr_2 (copied, readonly)
				[4]: any_GenerateGUID_result1_upvr_2 (readonly)
				[5]: current_thread_upvr (readonly)
			]]
			if arg1_2 ~= arg2 then
			else
				var12_upvw = true
				tbl_upvr_2[any_GenerateGUID_result1_upvr_2] = nil
				if arg2_2 then
					task.spawn(current_thread_upvr, true, ...)
					return
				end
				task.spawn(current_thread_upvr, false)
			end
		end
		task.delay(arg3, function() -- Line 104
			--[[ Upvalues[4]:
				[1]: var12_upvw (read and write)
				[2]: tbl_upvr_2 (copied, readonly)
				[3]: any_GenerateGUID_result1_upvr_2 (readonly)
				[4]: current_thread_upvr (readonly)
			]]
			if var12_upvw then
			else
				tbl_upvr_2[any_GenerateGUID_result1_upvr_2] = nil
				task.spawn(current_thread_upvr, false)
			end
		end)
		PostieSent_upvr:FireClient(arg2, arg1, any_GenerateGUID_result1_upvr_2, ...)
		return coroutine.yield()
	end;
	invokeServer = function(arg1, arg2, ...) -- Line 118, Named "invokeServer"
		--[[ Upvalues[4]:
			[1]: any_IsServer_result1_upvr (readonly)
			[2]: HttpService_upvr (readonly)
			[3]: tbl_upvr_2 (readonly)
			[4]: PostieSent_upvr (readonly)
		]]
		assert(not any_IsServer_result1_upvr, "Postie.invokeServer can only be called from the client")
		local current_thread_upvr_2 = coroutine.running()
		local var17_upvw = false
		local any_GenerateGUID_result1_upvr = HttpService_upvr:GenerateGUID(false)
		tbl_upvr_2[any_GenerateGUID_result1_upvr] = function(arg1_3, ...) -- Line 126
			--[[ Upvalues[4]:
				[1]: var17_upvw (read and write)
				[2]: tbl_upvr_2 (copied, readonly)
				[3]: any_GenerateGUID_result1_upvr (readonly)
				[4]: current_thread_upvr_2 (readonly)
			]]
			var17_upvw = true
			tbl_upvr_2[any_GenerateGUID_result1_upvr] = nil
			if arg1_3 then
				task.spawn(current_thread_upvr_2, true, ...)
			else
				task.spawn(current_thread_upvr_2, false)
			end
		end
		task.delay(arg2, function() -- Line 137
			--[[ Upvalues[4]:
				[1]: var17_upvw (read and write)
				[2]: tbl_upvr_2 (copied, readonly)
				[3]: any_GenerateGUID_result1_upvr (readonly)
				[4]: current_thread_upvr_2 (readonly)
			]]
			if var17_upvw then
			else
				tbl_upvr_2[any_GenerateGUID_result1_upvr] = nil
				task.spawn(current_thread_upvr_2, false)
			end
		end)
		PostieSent_upvr:FireServer(arg1, any_GenerateGUID_result1_upvr, ...)
		return coroutine.yield()
	end;
	setCallback = function(arg1, arg2) -- Line 151, Named "setCallback"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		tbl_upvr[arg1] = arg2
	end;
	getCallback = function(arg1) -- Line 155, Named "getCallback"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		return tbl_upvr[arg1]
	end;
}
if any_IsServer_result1_upvr then
	PostieReceived_upvr.OnServerEvent:Connect(function(arg1, arg2, arg3, ...) -- Line 161
		--[[ Upvalues[1]:
			[1]: tbl_upvr_2 (readonly)
		]]
		local var22 = tbl_upvr_2[arg2]
		if not var22 then
		else
			var22(arg1, arg3, ...)
		end
	end)
	PostieSent_upvr.OnServerEvent:Connect(function(arg1, arg2, arg3, ...) -- Line 170
		--[[ Upvalues[2]:
			[1]: tbl_upvr (readonly)
			[2]: PostieReceived_upvr (readonly)
		]]
		local var24 = tbl_upvr[arg2]
		if var24 then
			PostieReceived_upvr:FireClient(arg1, arg3, true, var24(arg1, ...))
		else
			PostieReceived_upvr:FireClient(arg1, arg3, false)
		end
	end)
	return module
end
PostieReceived_upvr.OnClientEvent:Connect(function(arg1, arg2, ...) -- Line 180
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local var26 = tbl_upvr_2[arg1]
	if not var26 then
	else
		var26(arg2, ...)
	end
end)
PostieSent_upvr.OnClientEvent:Connect(function(arg1, arg2, ...) -- Line 189
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: PostieReceived_upvr (readonly)
	]]
	local var28 = tbl_upvr[arg1]
	if var28 then
		PostieReceived_upvr:FireServer(arg2, true, var28(...))
	else
		PostieReceived_upvr:FireServer(arg2, false)
	end
end)
return module