-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:37
-- Luau version 6, Types version 3
-- Time taken: 0.007603 seconds

local Players_upvr = game:GetService("Players")
local RunService_upvr = game:GetService("RunService")
local Remote_upvr = require(script.Remote)
local any_IsServer_result1_upvr = RunService_upvr:IsServer()
local any_IsClient_result1_upvr = RunService_upvr:IsClient()
local any_new_result1_upvr = require(game:GetService("ReplicatedStorage").Modules.Signal).new()
local tbl_upvr_3 = {}
local tbl_upvr_2 = {}
local tbl_upvr = {}
local var10_upvr
if any_IsClient_result1_upvr then
	var10_upvr = Players_upvr.LocalPlayer
else
	var10_upvr = nil
end
local module = {
	_updateSignal = any_new_result1_upvr;
	_playerMaps = tbl_upvr_2;
}
local function _(arg1) -- Line 26, Named "getFriendMap"
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local var12 = tbl_upvr_2[arg1.UserId]
	if not var12 then
		var12 = {}
		tbl_upvr_2[arg1.UserId] = var12
	end
	return var12
end
local function _(arg1) -- Line 36, Named "getClientFriendMap"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var13 = tbl_upvr[arg1.UserId]
	if not var13 then
		var13 = {}
		tbl_upvr[arg1.UserId] = var13
	end
	return var13
end
local function _(arg1) -- Line 46, Named "getRequestMap"
	--[[ Upvalues[1]:
		[1]: tbl_upvr_3 (readonly)
	]]
	local var14 = tbl_upvr_3[arg1]
	if not var14 then
		var14 = {}
		tbl_upvr_3[arg1] = var14
	end
	return var14
end
local function fetchIsFriendsWith_upvr(arg1, arg2) -- Line 56, Named "fetchIsFriendsWith"
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	if arg1.UserId < 0 and arg2 < 0 then
		return true
	end
	if RunService_upvr:IsStudio() then
		return true
	end
	return arg1:IsFriendsWith(arg2)
end
local function getRawFriendState_upvr(arg1, arg2) -- Line 68, Named "getRawFriendState"
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: tbl_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 27 start (CF ANALYSIS FAILED)
	local var15 = tbl_upvr_2[arg1.UserId]
	if not var15 then
		var15 = {}
		tbl_upvr_2[arg1.UserId] = var15
	end
	if var15[arg2] == true then
		return true
	end
	do
		return false
	end
	-- KONSTANTERROR: [6] 6. Error Block 27 end (CF ANALYSIS FAILED)
end
local function handleFriendState_upvr(arg1, arg2, arg3) -- Line 88, Named "handleFriendState"
	--[[ Upvalues[6]:
		[1]: tbl_upvr_2 (readonly)
		[2]: getRawFriendState_upvr (readonly)
		[3]: any_new_result1_upvr (readonly)
		[4]: any_IsServer_result1_upvr (readonly)
		[5]: Remote_upvr (readonly)
		[6]: Players_upvr (readonly)
	]]
	if arg2 == arg1.UserId then
	else
		local var20 = tbl_upvr_2[arg1.UserId]
		if not var20 then
			var20 = {}
			tbl_upvr_2[arg1.UserId] = var20
		end
		local var21 = var20
		if var21[arg2] == arg3 then return end
		var21[arg2] = arg3
		local getRawFriendState_result1_2 = getRawFriendState_upvr(arg1, arg2)
		any_new_result1_upvr:Fire(arg1, arg2, getRawFriendState_result1_2)
		if any_IsServer_result1_upvr then
			Remote_upvr.Update:FireClient(arg1, arg2, getRawFriendState_result1_2)
			local any_GetPlayerByUserId_result1 = Players_upvr:GetPlayerByUserId(arg2)
			if any_GetPlayerByUserId_result1 then
				Remote_upvr.Update:FireClient(any_GetPlayerByUserId_result1, arg1.UserId, getRawFriendState_result1_2)
			end
		end
	end
end
local function handleClientState_upvr(arg1, arg2, arg3) -- Line 113, Named "handleClientState"
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: handleFriendState_upvr (readonly)
	]]
	if arg2 == arg1.UserId then
	else
		local var24 = tbl_upvr[arg1.UserId]
		if not var24 then
			var24 = {}
			tbl_upvr[arg1.UserId] = var24
		end
		local var25 = var24
		if var25[arg2] == arg3 then return end
		var25[arg2] = arg3
		local any_GetPlayerByUserId_result1_3 = Players_upvr:GetPlayerByUserId(arg2)
		if arg3 and any_GetPlayerByUserId_result1_3 then
			local var27 = tbl_upvr[any_GetPlayerByUserId_result1_3.UserId]
			if not var27 then
				var27 = {}
				tbl_upvr[any_GetPlayerByUserId_result1_3.UserId] = var27
			end
			if var27[arg1.UserId] then
				handleFriendState_upvr(arg1, arg2, true)
			end
		end
	end
end
local function updatePlayer_upvr(arg1, arg2) -- Line 132, Named "updatePlayer"
	--[[ Upvalues[5]:
		[1]: any_IsClient_result1_upvr (readonly)
		[2]: tbl_upvr_3 (readonly)
		[3]: Players_upvr (readonly)
		[4]: fetchIsFriendsWith_upvr (readonly)
		[5]: handleFriendState_upvr (readonly)
	]]
	if any_IsClient_result1_upvr then
	else
		local var28 = tbl_upvr_3[arg1]
		if not var28 then
			var28 = {}
			tbl_upvr_3[arg1] = var28
		end
		local var29 = var28
		var28 = var29
		local var30 = var28
		if var30 then
			var30 = var29[arg2]
		end
		while var29 and var29[arg2] do
			task.wait()
		end
		if var30 then return end
		if not arg1:IsDescendantOf(Players_upvr) then return end
		var29[arg2] = true
		local pcall_result1, pcall_result2 = pcall(fetchIsFriendsWith_upvr, arg1, arg2)
		if not pcall_result1 then
			warn(`FriendsAPI: Failed to request: {pcall_result2}`)
			var29[arg2] = nil
			return
		end
		handleFriendState_upvr(arg1, arg2, pcall_result2)
		var29[arg2] = nil
	end
end
local function internalIsFriendsWith_upvr(arg1, arg2, arg3) -- Line 177, Named "internalIsFriendsWith"
	--[[ Upvalues[6]:
		[1]: any_IsClient_result1_upvr (readonly)
		[2]: var10_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: Players_upvr (readonly)
		[5]: updatePlayer_upvr (readonly)
		[6]: getRawFriendState_upvr (readonly)
	]]
	if arg3 == false then
	else
	end
	if any_IsClient_result1_upvr and arg1 ~= var10_upvr then
		error("FriendsAPI:IsFriendsWithByUserId | this function can only be used with LocalPlayer in the Client")
	end
	local var33 = tbl_upvr_2[arg1.UserId]
	if not var33 then
		var33 = {}
		tbl_upvr_2[arg1.UserId] = var33
	end
	local var34 = var33
	var33 = any_IsClient_result1_upvr
	local var35 = var33
	if var35 then
		if var34[arg2] ~= true then
			var35 = false
		else
			var35 = true
		end
		return var35
	end
	local var36
	if not Players_upvr:GetPlayerByUserId(arg2) then
		if var34[arg2] == nil then
			if true then
				updatePlayer_upvr(arg1, arg2)
			else
				task.spawn(updatePlayer_upvr, arg1, arg2)
			end
		end
		if var34[arg2] ~= true then
		else
		end
		return true
	end
	return getRawFriendState_upvr(arg1, arg2)
end
function module.OnFriendshipUpdate(arg1, arg2, arg3) -- Line 283
	--[[ Upvalues[1]:
		[1]: any_new_result1_upvr (readonly)
	]]
	return any_new_result1_upvr:Connect(function(arg1_2, arg2_2, arg3_2) -- Line 284
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg3 (readonly)
		]]
		if arg1_2 ~= arg2 and arg2_2 ~= arg2.UserId then
		else
			if arg2.UserId == arg2_2 then
				arg3(arg2.UserId, arg3_2)
				return
			end
			arg3(arg2_2, arg3_2)
		end
	end)
end
function module.IsFriendsWithImmediate(arg1, arg2, arg3) -- Line 297
	--[[ Upvalues[1]:
		[1]: internalIsFriendsWith_upvr (readonly)
	]]
	local var57
	if typeof(arg3) == "Instance" then
		var57 = arg3.UserId
	else
		var57 = arg3
	end
	return internalIsFriendsWith_upvr(arg2, var57, false)
end
function module.IsFriendsWith(arg1, arg2, arg3) -- Line 301
	--[[ Upvalues[1]:
		[1]: internalIsFriendsWith_upvr (readonly)
	]]
	local var58
	if typeof(arg3) == "Instance" then
		var58 = arg3.UserId
	else
		var58 = arg3
	end
	return internalIsFriendsWith_upvr(arg2, var58, true)
end
if any_IsServer_result1_upvr then
	task.spawn(function() -- Line 208, Named "startServer"
		--[[ Upvalues[4]:
			[1]: Players_upvr (readonly)
			[2]: updatePlayer_upvr (readonly)
			[3]: Remote_upvr (readonly)
			[4]: handleClientState_upvr (readonly)
		]]
		local function onPlayerAdded(arg1) -- Line 210
			--[[ Upvalues[2]:
				[1]: Players_upvr (copied, readonly)
				[2]: updatePlayer_upvr (copied, readonly)
			]]
			for _, v in Players_upvr:GetPlayers() do
				if v ~= arg1 then
					updatePlayer_upvr(arg1, v.UserId)
				end
			end
		end
		Players_upvr.PlayerAdded:Connect(onPlayerAdded)
		for _, v_2 in Players_upvr:GetPlayers() do
			task.spawn(onPlayerAdded, v_2)
		end
		Remote_upvr.Update.OnServerEvent:Connect(function(arg1, arg2, arg3) -- Line 225
			--[[ Upvalues[1]:
				[1]: handleClientState_upvr (copied, readonly)
			]]
			if typeof(arg2) ~= "Instance" or not arg2:IsA("Player") or arg2 == arg1 then
			else
				if arg3 ~= nil and type(arg3) ~= "boolean" then return end
				handleClientState_upvr(arg1, arg2.UserId, arg3)
			end
		end)
	end)
else
	task.spawn(function() -- Line 239, Named "startClient"
		--[[ Upvalues[3]:
			[1]: Remote_upvr (readonly)
			[2]: handleFriendState_upvr (readonly)
			[3]: var10_upvr (readonly)
		]]
		Remote_upvr.Update.OnClientEvent:Connect(function(arg1, arg2) -- Line 241
			--[[ Upvalues[2]:
				[1]: handleFriendState_upvr (copied, readonly)
				[2]: var10_upvr (copied, readonly)
			]]
			handleFriendState_upvr(var10_upvr, arg1, arg2)
		end)
		for _ = 1, 5 do
			local StarterGui_upvr = game:GetService("StarterGui")
			if pcall(function() -- Line 250
				--[[ Upvalues[2]:
					[1]: StarterGui_upvr (readonly)
					[2]: Remote_upvr (copied, readonly)
				]]
				StarterGui_upvr:GetCore("PlayerFriendedEvent").Event:Connect(function(arg1) -- Line 254
					--[[ Upvalues[1]:
						[1]: Remote_upvr (copied, readonly)
					]]
					Remote_upvr.Update:FireServer(arg1, true)
				end)
			end) then break end
			task.wait(5)
		end
	end)
end
task.spawn(function() -- Line 273, Named "startShared"
	--[[ Upvalues[4]:
		[1]: Players_upvr (readonly)
		[2]: tbl_upvr_3 (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: tbl_upvr (readonly)
	]]
	Players_upvr.PlayerRemoving:Connect(function(arg1) -- Line 274
		--[[ Upvalues[3]:
			[1]: tbl_upvr_3 (copied, readonly)
			[2]: tbl_upvr_2 (copied, readonly)
			[3]: tbl_upvr (copied, readonly)
		]]
		tbl_upvr_3[arg1] = nil
		tbl_upvr_2[arg1.UserId] = nil
		tbl_upvr[arg1.UserId] = nil
	end)
end)
return module