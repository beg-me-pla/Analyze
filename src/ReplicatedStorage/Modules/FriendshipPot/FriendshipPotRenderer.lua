-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:52
-- Luau version 6, Types version 3
-- Time taken: 0.015981 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players_upvr = game:GetService("Players")
local FriendInvitePrompterService_upvr = require(ReplicatedStorage.Modules.FriendInvitePrompterService)
local FriendsAPI_upvr = require(ReplicatedStorage.Modules.FriendsAPI)
local FriendshipPotService_RE_upvr = ReplicatedStorage.GameEvents.FriendshipPotService_RE
local module_upvr = {}
local LocalPlayer_upvr = game.Players.LocalPlayer
local tbl_upvr_2 = {}
local Value_upvr = game:GetService("ReplicatedFirst").DayInSeconds.Value
function module_upvr.UpdatePot(arg1, arg2) -- Line 40
	--[[ Upvalues[6]:
		[1]: tbl_upvr_2 (readonly)
		[2]: Value_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: FriendsAPI_upvr (readonly)
		[5]: LocalPlayer_upvr (readonly)
		[6]: FriendInvitePrompterService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	debug.traceback("Trace")
	local var35
	if not arg2 then
	else
		local var36 = tbl_upvr_2[arg2]
		if not var36 then return end
		local Asset_3 = var36.Asset
		if not Asset_3 then return end
		local Grow = Asset_3:FindFirstChild("Grow")
		if not Grow then return end
		local Age_2 = Grow:FindFirstChild("Age")
		if not Age_2 then return end
		local CurrentStreak = arg2:GetAttribute("CurrentStreak")
		if not CurrentStreak then return end
		local LastTendTime_3 = arg2:GetAttribute("LastTendTime")
		if not LastTendTime_3 then return end
		local LastStreakTime_2 = arg2:GetAttribute("LastStreakTime")
		if not LastStreakTime_2 then return end
		local LinkedPlayerID_3 = arg2:GetAttribute("LinkedPlayerID")
		if not LinkedPlayerID_3 then return end
		local OWNER = arg2:GetAttribute("OWNER")
		if not OWNER then return end
		local floored_6 = math.floor(workspace:GetServerTimeNow() / Value_upvr)
		local floored_4 = math.floor(LastTendTime_3 / Value_upvr)
		local var47 = LastStreakTime_2 / Value_upvr
		local floored_3 = math.floor(var47)
		if floored_6 > floored_4 then
			var47 = false
		else
			var47 = true
		end
		if floored_6 > floored_3 then
		else
		end
		var35 = var47
		if var35 then
			if floored_3 >= floored_6 then
				var35 = false
			else
				var35 = true
			end
		end
		if var35 then
		else
		end
		local RestorePrompt = tbl_upvr_2[arg2].RestorePrompt
		local floored_7 = math.floor((arg2:GetAttribute("StreakFailTime") or 0) / Value_upvr)
		if 0 < floored_3 then
			if floored_3 + 1 >= floored_6 then
			else
			end
		end
		local var51 = false
		if 0 < floored_7 then
			if floored_6 > floored_7 + 1 then
				var51 = false
			else
				var51 = true
			end
		end
		if RestorePrompt then
			RestorePrompt.Enabled = true and var51
		end
		local TendPrompt_2 = tbl_upvr_2[arg2].TendPrompt
		if TendPrompt_2 then
			local SOME = Players_upvr:FindFirstChild(OWNER)
			local var54 = false
			if floored_4 ~= floored_6 then
				var54 = SOME
				if var54 then
					var54 = FriendsAPI_upvr:IsFriendsWithImmediate(LocalPlayer_upvr, SOME)
				end
			end
			TendPrompt_2.Enabled = var54
		end
		local InteractionPrompt_2 = tbl_upvr_2[arg2].InteractionPrompt
		if InteractionPrompt_2 then
			local var56
			local any_GetPlayerByUserId_result1_3 = Players_upvr:GetPlayerByUserId(LinkedPlayerID_3)
			if not any_GetPlayerByUserId_result1_3 and FriendsAPI_upvr:IsFriendsWithImmediate(LocalPlayer_upvr, LinkedPlayerID_3) and FriendInvitePrompterService_upvr.CanSendGameInvite and floored_6 ~= floored_4 then
				local LinkedPlayerID_NAME = arg2:GetAttribute("LinkedPlayerID_NAME")
				if LinkedPlayerID_NAME and LinkedPlayerID_NAME ~= "UNKNOWN" then
					var56 = "Invite "..LinkedPlayerID_NAME
				else
					var56 = "Invite"
				end
			elseif any_GetPlayerByUserId_result1_3 and not FriendsAPI_upvr:IsFriendsWithImmediate(LocalPlayer_upvr, LinkedPlayerID_3) then
				var56 = "Friend"
			end
			if var56 then
				InteractionPrompt_2.ActionText = var56
				InteractionPrompt_2.Enabled = true
			else
				InteractionPrompt_2.Enabled = false
			end
		end
		Age_2.Value = CurrentStreak + 0
	end
end
function module_upvr.UpdateAllPots(arg1) -- Line 126
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: module_upvr (readonly)
	]]
	for i, _ in tbl_upvr_2 do
		module_upvr:UpdatePot(i)
	end
end
function module_upvr.PotMoved(arg1, arg2) -- Line 133
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	if not arg2 then
	else
		local var61 = tbl_upvr_2[arg2]
		if not var61 then return end
		local Asset = var61.Asset
		if not Asset then return end
		local any_GetPivot_result1 = arg2:GetPivot()
		Asset:PivotTo(CFrame.new(any_GetPivot_result1.X, Asset:GetPivot().Y, any_GetPivot_result1.Z) * any_GetPivot_result1.Rotation)
	end
end
local FriendshipPots_upvr = ReplicatedStorage:WaitForChild("Assets"):WaitForChild("Models"):WaitForChild("FriendshipPots")
local RunService_upvr = game:GetService("RunService")
local TweenService_upvr = game:GetService("TweenService")
local SocialService_upvr = game:GetService("SocialService")
local StarterGui_upvr = game:GetService("StarterGui")
function module_upvr.RenderPot(arg1, arg2) -- Line 148
	--[[ Upvalues[13]:
		[1]: FriendshipPots_upvr (readonly)
		[2]: RunService_upvr (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: tbl_upvr_2 (readonly)
		[5]: LocalPlayer_upvr (readonly)
		[6]: FriendshipPotService_RE_upvr (readonly)
		[7]: Value_upvr (readonly)
		[8]: Players_upvr (readonly)
		[9]: FriendsAPI_upvr (readonly)
		[10]: FriendInvitePrompterService_upvr (readonly)
		[11]: SocialService_upvr (readonly)
		[12]: StarterGui_upvr (readonly)
		[13]: module_upvr (readonly)
	]]
	if not arg2:GetAttribute("READY") then
		arg2:GetAttributeChangedSignal("READY"):Wait()
	end
	local PotType = arg2:GetAttribute("PotType")
	if not PotType then
		repeat
			task.wait(0.5)
			PotType = arg2:GetAttribute("PotType")
		until 5 <= 0 + 1 and PotType
	end
	if not PotType then
	else
		local SOME_3 = FriendshipPots_upvr:FindFirstChild(PotType)
		if not SOME_3 then
			return warn(`Could not find Pot model associated with {PotType}`)
		end
		local clone_upvr = SOME_3:Clone()
		clone_upvr.PrimaryPart.Anchored = true
		local var72_upvw = Vector3.new(0, 0, 0)
		task.spawn(function() -- Line 177
			--[[ Upvalues[5]:
				[1]: RunService_upvr (copied, readonly)
				[2]: TweenService_upvr (copied, readonly)
				[3]: var72_upvw (read and write)
				[4]: clone_upvr (readonly)
				[5]: arg2 (readonly)
			]]
			local const_number = 0
			while const_number < 0.25 do
				var72_upvw = Vector3.new(0, 3, 0):Lerp(Vector3.new(0, 0, 0), TweenService_upvr:GetValue((const_number + RunService_upvr.RenderStepped:Wait()) / 0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out))
				clone_upvr:PivotTo(arg2:GetPivot() * CFrame.new(0, var72_upvw.Y + clone_upvr:GetExtentsSize().Y * 0.5, 0))
			end
			local Generate = clone_upvr:FindFirstChild("Generate")
			if Generate then
				Generate.Enabled = true
			end
		end)
		tbl_upvr_2[arg2] = {
			Asset = clone_upvr;
		}
		clone_upvr:PivotTo(arg2:GetPivot() * CFrame.new(0, var72_upvw.Y + clone_upvr:GetExtentsSize().Y * 0.4, 0))
		clone_upvr.Parent = arg2
		if arg2:GetAttribute("LinkedPlayerID") == LocalPlayer_upvr.UserId then
			local ProximityPrompt = Instance.new("ProximityPrompt")
			ProximityPrompt.Name = "TendPrompt"
			ProximityPrompt.Parent = clone_upvr.PrimaryPart
			ProximityPrompt.ActionText = "Tend!"
			ProximityPrompt.HoldDuration = 1
			ProximityPrompt.Enabled = true
			ProximityPrompt.RequiresLineOfSight = false
			ProximityPrompt.Style = Enum.ProximityPromptStyle.Custom
			ProximityPrompt.Triggered:Connect(function() -- Line 220
				--[[ Upvalues[2]:
					[1]: FriendshipPotService_RE_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				FriendshipPotService_RE_upvr:FireServer("TendPot", arg2)
			end)
			tbl_upvr_2[arg2].TendPrompt = ProximityPrompt
		end
		if arg2:GetAttribute("OWNER") == LocalPlayer_upvr.Name then
			local ProximityPrompt_2 = Instance.new("ProximityPrompt")
			ProximityPrompt_2.Name = "InteractionPrompt"
			ProximityPrompt_2.ActionText = "???"
			ProximityPrompt_2.HoldDuration = 1
			ProximityPrompt_2.Enabled = false
			ProximityPrompt_2.RequiresLineOfSight = false
			ProximityPrompt_2.Style = Enum.ProximityPromptStyle.Custom
			local Attachment = Instance.new("Attachment")
			Attachment.Position = Vector3.new(0, 2.59999, 0)
			Attachment.Parent = clone_upvr.PrimaryPart
			ProximityPrompt_2.Parent = Attachment
			ProximityPrompt_2.Triggered:Connect(function() -- Line 241
				--[[ Upvalues[8]:
					[1]: arg2 (readonly)
					[2]: Value_upvr (copied, readonly)
					[3]: Players_upvr (copied, readonly)
					[4]: FriendsAPI_upvr (copied, readonly)
					[5]: LocalPlayer_upvr (copied, readonly)
					[6]: FriendInvitePrompterService_upvr (copied, readonly)
					[7]: SocialService_upvr (copied, readonly)
					[8]: StarterGui_upvr (copied, readonly)
				]]
				local LinkedPlayerID_2 = arg2:GetAttribute("LinkedPlayerID")
				if not LinkedPlayerID_2 then
				else
					local LastTendTime = arg2:GetAttribute("LastTendTime")
					if not LastTendTime then return end
					local any_GetPlayerByUserId_result1_2_upvr = Players_upvr:GetPlayerByUserId(LinkedPlayerID_2)
					if not any_GetPlayerByUserId_result1_2_upvr and FriendsAPI_upvr:IsFriendsWithImmediate(LocalPlayer_upvr, LinkedPlayerID_2) and FriendInvitePrompterService_upvr.CanSendGameInvite and math.floor(workspace:GetServerTimeNow() / Value_upvr) ~= math.floor(LastTendTime / Value_upvr) then
						local LinkedPlayerID_NAME_3 = arg2:GetAttribute("LinkedPlayerID_NAME")
						local ExperienceInviteOptions_upvr = Instance.new("ExperienceInviteOptions")
						ExperienceInviteOptions_upvr.InviteUser = LinkedPlayerID_2
						local var87
						if LinkedPlayerID_NAME_3 and LinkedPlayerID_NAME_3 ~= "UNKNOWN" then
							var87 = `Invite {LinkedPlayerID_NAME_3} to Tend your pot`
						else
							var87 = "Invite your friend to Tend your pot"
						end
						ExperienceInviteOptions_upvr.PromptMessage = var87
						var87 = pcall
						var87(function() -- Line 268
							--[[ Upvalues[3]:
								[1]: SocialService_upvr (copied, readonly)
								[2]: LocalPlayer_upvr (copied, readonly)
								[3]: ExperienceInviteOptions_upvr (readonly)
							]]
							SocialService_upvr:PromptGameInvite(LocalPlayer_upvr, ExperienceInviteOptions_upvr)
						end)
						return
					end
					if any_GetPlayerByUserId_result1_2_upvr and not FriendsAPI_upvr:IsFriendsWithImmediate(LocalPlayer_upvr, LinkedPlayerID_2) then
						function ExperienceInviteOptions_upvr() -- Line 271
							--[[ Upvalues[2]:
								[1]: StarterGui_upvr (copied, readonly)
								[2]: any_GetPlayerByUserId_result1_2_upvr (readonly)
							]]
							StarterGui_upvr:SetCore("PromptSendFriendRequest", any_GetPlayerByUserId_result1_2_upvr)
						end
						pcall(ExperienceInviteOptions_upvr)
					end
				end
			end)
			tbl_upvr_2[arg2].InteractionPrompt = ProximityPrompt_2
		end
		if arg2:GetAttribute("OWNER") == LocalPlayer_upvr.Name then
			local ProximityPrompt_3 = Instance.new("ProximityPrompt")
			ProximityPrompt_3.Name = "RestorePrompt"
			ProximityPrompt_3.ActionText = "Restore Streak!"
			ProximityPrompt_3.HoldDuration = 1
			ProximityPrompt_3.Enabled = false
			ProximityPrompt_3.RequiresLineOfSight = false
			ProximityPrompt_3.Style = Enum.ProximityPromptStyle.Custom
			ProximityPrompt_3.Parent = clone_upvr.PrimaryPart
			ProximityPrompt_3.Triggered:Connect(function() -- Line 289
				--[[ Upvalues[2]:
					[1]: FriendshipPotService_RE_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				FriendshipPotService_RE_upvr:FireServer("TryRestoreStreak", arg2)
			end)
			tbl_upvr_2[arg2].RestorePrompt = ProximityPrompt_3
		end
		tbl_upvr_2[arg2].AttribConnection = arg2.AttributeChanged:Connect(function(arg1_2) -- Line 295
			--[[ Upvalues[2]:
				[1]: module_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			if arg1_2 ~= "CurrentStreak" and arg1_2 ~= "LastTendTime" and arg1_2 ~= "LastStreakTime" and arg1_2 ~= "StreakFailTime" and arg1_2 ~= "LinkedPlayerID" and arg1_2 ~= "LinkedPlayerID_NAME" then
			else
				module_upvr:UpdatePot(arg2)
			end
		end)
		tbl_upvr_2[arg2].PlayerAddedConnection = Players_upvr.PlayerAdded:Connect(function() -- Line 312
			--[[ Upvalues[2]:
				[1]: module_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			module_upvr:UpdatePot(arg2)
		end)
		tbl_upvr_2[arg2].PlayerRemovingConnection = Players_upvr.PlayerRemoving:Connect(function(arg1_3) -- Line 315
			--[[ Upvalues[3]:
				[1]: Players_upvr (copied, readonly)
				[2]: module_upvr (copied, readonly)
				[3]: arg2 (readonly)
			]]
			while arg1_3:IsDescendantOf(Players_upvr) do
				task.wait()
			end
			module_upvr:UpdatePot(arg2)
		end)
		tbl_upvr_2[arg2].FriendUpdatedConnection = FriendsAPI_upvr:OnFriendshipUpdate(LocalPlayer_upvr, function() -- Line 324
			--[[ Upvalues[2]:
				[1]: module_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			module_upvr:UpdatePot(arg2)
		end)
		module_upvr:UpdatePot(arg2)
	end
end
function module_upvr.DerenderPot(arg1, arg2) -- Line 331
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	if not arg2 then
		warn("FriendshipPotRenderer:DerenderPot | No server Pot to derender")
	else
		local var96 = tbl_upvr_2[arg2]
		if not var96 then
			warn("FriendshipPotRenderer:DerenderPot | No state data for server Pot")
			return
		end
		if var96.Asset then
			var96.Asset:Destroy()
		end
		if var96.AttribConnection then
			var96.AttribConnection:Disconnect()
		end
		if var96.PlayerAddedConnection then
			var96.PlayerAddedConnection:Disconnect()
		end
		if var96.PlayerRemovingConnection then
			var96.PlayerRemovingConnection:Disconnect()
		end
		if var96.FriendUpdatedConnection then
			var96.FriendUpdatedConnection:Disconnect()
		end
		tbl_upvr_2[arg2] = nil
	end
end
require(ReplicatedStorage.Modules.CreateTagHandler)({
	Tag = "FriendshipPotServer";
	OnInstanceAdded = function(arg1) -- Line 362, Named "OnInstanceAdded"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		if not arg1:IsDescendantOf(workspace) then
		else
			module_upvr:RenderPot(arg1)
		end
	end;
	OnInstanceRemoved = function(arg1) -- Line 366, Named "OnInstanceRemoved"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		module_upvr:DerenderPot(arg1)
	end;
})
local tbl_upvr = {"UpdateAllPots", "PotMoved"}
FriendshipPotService_RE_upvr.OnClientEvent:Connect(function(arg1, ...) -- Line 374
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	if not table.find(tbl_upvr, arg1) then
	else
		local var100 = module_upvr[arg1]
		if not var100 then return end
		var100(module_upvr, ...)
	end
end)
return module_upvr