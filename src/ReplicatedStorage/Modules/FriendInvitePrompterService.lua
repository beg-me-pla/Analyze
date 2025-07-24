-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:32
-- Luau version 6, Types version 3
-- Time taken: 0.002657 seconds

local SocialService_upvr = game:GetService("SocialService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local module_upvr = {
	CanSendGameInvite = false;
}
local function _(arg1) -- Line 23, Named "CanSendGameInvite"
	--[[ Upvalues[1]:
		[1]: SocialService_upvr (readonly)
	]]
	local pcall_result1, pcall_result2_2 = pcall(function() -- Line 24
		--[[ Upvalues[2]:
			[1]: SocialService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return SocialService_upvr:CanSendGameInviteAsync(arg1)
	end)
	return pcall_result1 and pcall_result2_2
end
task.spawn(function() -- Line 30
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: SocialService_upvr (readonly)
	]]
	local pcall_result1_2, pcall_result2 = pcall(function() -- Line 24
		--[[ Upvalues[2]:
			[1]: SocialService_upvr (copied, readonly)
			[2]: LocalPlayer_upvr (readonly)
		]]
		return SocialService_upvr:CanSendGameInviteAsync(LocalPlayer_upvr)
	end)
	module_upvr.CanSendGameInvite = pcall_result1_2 and pcall_result2
end)
local FriendInvites_upvr = LocalPlayer_upvr.PlayerGui:WaitForChild("FriendInvites")
local WaitForDescendant_upvr = require(ReplicatedStorage.Modules.WaitForDescendant)
local SetupHoverAnimations_upvr = require(ReplicatedStorage.Modules.SetupHoverAnimations)
local SetupSounds_upvr = require(ReplicatedStorage.Modules.SetupSounds)
local TweenService_upvr = game:GetService("TweenService")
function module_upvr.CreatePrompt(arg1) -- Line 34
	--[[ Upvalues[8]:
		[1]: module_upvr (readonly)
		[2]: FriendInvites_upvr (readonly)
		[3]: WaitForDescendant_upvr (readonly)
		[4]: SetupHoverAnimations_upvr (readonly)
		[5]: SetupSounds_upvr (readonly)
		[6]: TweenService_upvr (readonly)
		[7]: SocialService_upvr (readonly)
		[8]: LocalPlayer_upvr (readonly)
	]]
	if not module_upvr.CanSendGameInvite then
		return warn("Cannot send game invite!")
	end
	local InsertionPoint = FriendInvites_upvr:FindFirstChild("InsertionPoint")
	if not InsertionPoint then
	else
		local clone_upvr = InsertionPoint.FriendInviteTemplate:Clone()
		local UIScale_upvr = clone_upvr.UIScale
		UIScale_upvr.Scale = 0
		local WaitForDescendant_upvr_result1_2 = WaitForDescendant_upvr(clone_upvr, "ACCEPT_BUTTON")
		local WaitForDescendant_upvr_result1 = WaitForDescendant_upvr(clone_upvr, "DECLINE_BUTTON")
		SetupHoverAnimations_upvr(WaitForDescendant_upvr_result1_2)
		SetupHoverAnimations_upvr(WaitForDescendant_upvr_result1)
		local function Remove_upvr() -- Line 54, Named "Remove"
			--[[ Upvalues[3]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: UIScale_upvr (readonly)
				[3]: clone_upvr (readonly)
			]]
			local any_Create_result1 = TweenService_upvr:Create(UIScale_upvr, TweenInfo.new(0.2), {
				Scale = 0;
			})
			any_Create_result1:Play()
			any_Create_result1.Completed:Once(function() -- Line 60
				--[[ Upvalues[1]:
					[1]: clone_upvr (copied, readonly)
				]]
				clone_upvr:Destroy()
			end)
		end
		SetupSounds_upvr(WaitForDescendant_upvr_result1_2).MouseButton1Click:Connect(function() -- Line 65
			--[[ Upvalues[3]:
				[1]: Remove_upvr (readonly)
				[2]: SocialService_upvr (copied, readonly)
				[3]: LocalPlayer_upvr (copied, readonly)
			]]
			Remove_upvr()
			SocialService_upvr:PromptGameInvite(LocalPlayer_upvr)
		end)
		SetupSounds_upvr(WaitForDescendant_upvr_result1).MouseButton1Click:Connect(function() -- Line 70
			--[[ Upvalues[1]:
				[1]: Remove_upvr (readonly)
			]]
			Remove_upvr()
		end)
		clone_upvr.Visible = true
		clone_upvr.Parent = InsertionPoint
		TweenService_upvr:Create(UIScale_upvr, TweenInfo.new(0.5), {
			Scale = 1;
		}):Play()
	end
end
local tbl_upvr = {"CreatePrompt"}
ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("FriendInvitePrompterService").OnClientEvent:Connect(function(arg1, ...) -- Line 86
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	if not table.find(tbl_upvr, arg1) then
	else
		local var30 = module_upvr[arg1]
		if not var30 then return end
		var30(module_upvr, ...)
	end
end)
return module_upvr