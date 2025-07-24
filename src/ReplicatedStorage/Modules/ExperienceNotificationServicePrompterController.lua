-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:36
-- Luau version 6, Types version 3
-- Time taken: 0.002210 seconds

local ExperienceNotificationService_upvr = game:GetService("ExperienceNotificationService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr = {
	CanPromptOptIn = false;
}
local function _() -- Line 23, Named "CanPromptOptIn"
	--[[ Upvalues[1]:
		[1]: ExperienceNotificationService_upvr (readonly)
	]]
	local pcall_result1, pcall_result2_2 = pcall(function() -- Line 24
		--[[ Upvalues[1]:
			[1]: ExperienceNotificationService_upvr (copied, readonly)
		]]
		return ExperienceNotificationService_upvr:CanPromptOptInAsync()
	end)
	if pcall_result1 then
		return pcall_result2_2
	end
	return false
end
local pcall_result1_2, pcall_result2 = pcall(function() -- Line 24
	--[[ Upvalues[1]:
		[1]: ExperienceNotificationService_upvr (readonly)
	]]
	return ExperienceNotificationService_upvr:CanPromptOptInAsync()
end)
local CreatePrompt_upvr
if pcall_result1_2 then
	CreatePrompt_upvr = pcall_result2
else
	CreatePrompt_upvr = false
end
module_upvr.CanPromptOptIn = CreatePrompt_upvr
local ExperienceNotifications_upvr = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("ExperienceNotifications")
local WaitForDescendant_upvr = require(ReplicatedStorage.Modules.WaitForDescendant)
local SetupHoverAnimations_upvr = require(ReplicatedStorage.Modules.SetupHoverAnimations)
local SetupSounds_upvr = require(ReplicatedStorage.Modules.SetupSounds)
local TweenService_upvr = game:GetService("TweenService")
function CreatePrompt_upvr(arg1) -- Line 37, Named "CreatePrompt"
	--[[ Upvalues[7]:
		[1]: module_upvr (readonly)
		[2]: ExperienceNotifications_upvr (readonly)
		[3]: WaitForDescendant_upvr (readonly)
		[4]: SetupHoverAnimations_upvr (readonly)
		[5]: SetupSounds_upvr (readonly)
		[6]: TweenService_upvr (readonly)
		[7]: ExperienceNotificationService_upvr (readonly)
	]]
	if not module_upvr.CanPromptOptIn then
		return warn("Cannot prompt notification because not eligiblE!")
	end
	local InsertionPoint = ExperienceNotifications_upvr:FindFirstChild("InsertionPoint")
	if not InsertionPoint then
	else
		local clone_upvr = InsertionPoint.ExperienceNotificationTemplate:Clone()
		local UIScale_upvr = clone_upvr.UIScale
		UIScale_upvr.Scale = 0
		local var12_result1 = WaitForDescendant_upvr(clone_upvr, "ACCEPT_BUTTON")
		local var12_result1_2 = WaitForDescendant_upvr(clone_upvr, "DECLINE_BUTTON")
		SetupHoverAnimations_upvr(var12_result1)
		SetupHoverAnimations_upvr(var12_result1_2)
		local function Remove_upvr() -- Line 57, Named "Remove"
			--[[ Upvalues[3]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: UIScale_upvr (readonly)
				[3]: clone_upvr (readonly)
			]]
			local any_Create_result1 = TweenService_upvr:Create(UIScale_upvr, TweenInfo.new(0.2), {
				Scale = 0;
			})
			any_Create_result1:Play()
			any_Create_result1.Completed:Once(function() -- Line 63
				--[[ Upvalues[1]:
					[1]: clone_upvr (copied, readonly)
				]]
				clone_upvr:Destroy()
			end)
		end
		SetupSounds_upvr(var12_result1).MouseButton1Click:Connect(function() -- Line 68
			--[[ Upvalues[2]:
				[1]: Remove_upvr (readonly)
				[2]: ExperienceNotificationService_upvr (copied, readonly)
			]]
			Remove_upvr()
			ExperienceNotificationService_upvr:PromptOptIn()
		end)
		SetupSounds_upvr(var12_result1_2).MouseButton1Click:Connect(function() -- Line 73
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
module_upvr.CreatePrompt = CreatePrompt_upvr
CreatePrompt_upvr = {}
CreatePrompt_upvr[1] = "CreatePrompt"
ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("ExperienceNotificationServicePrompterController").OnClientEvent:Connect(function(arg1, ...) -- Line 89
	--[[ Upvalues[2]:
		[1]: CreatePrompt_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	if not table.find(CreatePrompt_upvr, arg1) then
	else
		local var28 = module_upvr[arg1]
		if not var28 then return end
		var28(module_upvr, ...)
	end
end)
ExperienceNotificationService_upvr.OptInPromptClosed:Connect(function() -- Line 98
	task.wait(5)
end)
return module_upvr