-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:48
-- Luau version 6, Types version 3
-- Time taken: 0.003714 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local TweenService_upvr = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CurrentCamera_upvw = workspace.CurrentCamera
workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function() -- Line 12
	--[[ Upvalues[1]:
		[1]: CurrentCamera_upvw (read and write)
	]]
	CurrentCamera_upvw = workspace.CurrentCamera
end)
local Highlight_upvr = Instance.new("Highlight")
Highlight_upvr.FillTransparency = 1
local var7_upvw
local function TargettingInputBegan_upvr() -- Line 33, Named "TargettingInputBegan"
	--[[ Upvalues[3]:
		[1]: var7_upvw (read and write)
		[2]: TweenService_upvr (readonly)
		[3]: Highlight_upvr (readonly)
	]]
	if not var7_upvw then
	else
		TweenService_upvr:Create(Highlight_upvr, TweenInfo.new(0.2), {
			OutlineTransparency = 0.8;
		}):Play()
	end
end
local CosmeticActionUserInterfaceService_upvr = require(ReplicatedStorage.Modules.CosmeticServices.UserInterface.CosmeticActionUserInterfaceService)
local function TargettingInputEnded_upvr() -- Line 42, Named "TargettingInputEnded"
	--[[ Upvalues[4]:
		[1]: var7_upvw (read and write)
		[2]: TweenService_upvr (readonly)
		[3]: Highlight_upvr (readonly)
		[4]: CosmeticActionUserInterfaceService_upvr (readonly)
	]]
	if not var7_upvw then
	else
		TweenService_upvr:Create(Highlight_upvr, TweenInfo.new(0.2), {
			OutlineTransparency = 0;
		}):Play()
		if CosmeticActionUserInterfaceService_upvr.Target == var7_upvw then return end
		if CosmeticActionUserInterfaceService_upvr.Target ~= nil then
			CosmeticActionUserInterfaceService_upvr:Toggle(false)
		end
		task.delay(0.1, function() -- Line 59
			--[[ Upvalues[2]:
				[1]: CosmeticActionUserInterfaceService_upvr (copied, readonly)
				[2]: var7_upvw (copied, read and write)
			]]
			CosmeticActionUserInterfaceService_upvr:SetTarget(var7_upvw)
			CosmeticActionUserInterfaceService_upvr:Toggle(true)
		end)
	end
end
local tbl_upvr = {
	[Enum.UserInputType.Touch] = {function(arg1) -- Line 67
		--[[ Upvalues[1]:
			[1]: TargettingInputBegan_upvr (readonly)
		]]
		TargettingInputBegan_upvr()
	end};
	[Enum.UserInputType.MouseButton1] = {function() -- Line 72
		--[[ Upvalues[1]:
			[1]: TargettingInputBegan_upvr (readonly)
		]]
		TargettingInputBegan_upvr()
	end};
	[Enum.KeyCode.ButtonR2] = {function() -- Line 77
		--[[ Upvalues[1]:
			[1]: TargettingInputBegan_upvr (readonly)
		]]
		TargettingInputBegan_upvr()
	end};
}
local tbl_upvr_2 = {
	[Enum.UserInputType.Touch] = {function(arg1) -- Line 85
		--[[ Upvalues[1]:
			[1]: TargettingInputEnded_upvr (readonly)
		]]
		TargettingInputEnded_upvr()
	end};
	[Enum.UserInputType.MouseButton1] = {function() -- Line 90
		--[[ Upvalues[1]:
			[1]: TargettingInputEnded_upvr (readonly)
		]]
		TargettingInputEnded_upvr()
	end};
	[Enum.KeyCode.ButtonR2] = {function() -- Line 95
		--[[ Upvalues[1]:
			[1]: TargettingInputEnded_upvr (readonly)
		]]
		TargettingInputEnded_upvr()
	end};
}
UserInputService_upvr.InputBegan:Connect(function(arg1, arg2) -- Line 101
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var31 = tbl_upvr[arg1.KeyCode]
	if not var31 then
		var31 = tbl_upvr[arg1.UserInputType]
	end
	if not var31 then
	else
		for _, var30_upvr in var31 do
			task.spawn(function() -- Line 105
				--[[ Upvalues[2]:
					[1]: var30_upvr (readonly)
					[2]: arg1 (readonly)
				]]
				var30_upvr(arg1)
			end)
		end
	end
end)
UserInputService_upvr.InputEnded:Connect(function(arg1, arg2) -- Line 112
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local var38 = tbl_upvr_2[arg1.KeyCode]
	if not var38 then
		var38 = tbl_upvr_2[arg1.UserInputType]
	end
	if not var38 then
	else
		for _, var37_upvr in var38 do
			task.spawn(function() -- Line 116
				--[[ Upvalues[2]:
					[1]: var37_upvr (readonly)
					[2]: arg1 (readonly)
				]]
				var37_upvr(arg1)
			end)
		end
	end
end)
UserInputService_upvr.TouchTap:Connect(function() -- Line 122
	--[[ Upvalues[1]:
		[1]: TargettingInputBegan_upvr (readonly)
	]]
	TargettingInputBegan_upvr()
end)
UserInputService_upvr.TouchEnded:Connect(function() -- Line 126
	--[[ Upvalues[1]:
		[1]: TargettingInputEnded_upvr (readonly)
	]]
	TargettingInputEnded_upvr()
end)
Highlight_upvr.Parent = script
local RaycastParams_new_result1_upvr = RaycastParams.new()
RaycastParams_new_result1_upvr.FilterDescendantsInstances = game:GetService("CollectionService"):GetTagged("CosmeticHitBox")
RaycastParams_new_result1_upvr.FilterType = Enum.RaycastFilterType.Include
require(ReplicatedStorage.Modules.CreateTagHandler)({
	Tag = "CosmeticHitBox";
	OnInstanceAdded = function(arg1) -- Line 140, Named "OnInstanceAdded"
		--[[ Upvalues[1]:
			[1]: RaycastParams_new_result1_upvr (readonly)
		]]
		RaycastParams_new_result1_upvr:AddToFilter(arg1)
	end;
})
local var45_upvw
local GetMouseToWorld_upvr = require(ReplicatedStorage.Modules.GetMouseToWorld)
local var47_upvr = require(ReplicatedStorage.Modules.GetFarmAsync)(game:GetService("Players").LocalPlayer)
local CosmeticInventoryUserInterfaceService_upvr = require(ReplicatedStorage.Modules.CosmeticServices.UserInterface.CosmeticInventoryUserInterfaceService)
local GetUIElementWithTag_upvr = require(ReplicatedStorage.Modules.GetUIElementWithTag)
task.spawn(function() -- Line 146
	--[[ Upvalues[9]:
		[1]: UserInputService_upvr (readonly)
		[2]: var45_upvw (read and write)
		[3]: GetMouseToWorld_upvr (readonly)
		[4]: RaycastParams_new_result1_upvr (readonly)
		[5]: var47_upvr (readonly)
		[6]: CosmeticInventoryUserInterfaceService_upvr (readonly)
		[7]: GetUIElementWithTag_upvr (readonly)
		[8]: Highlight_upvr (readonly)
		[9]: var7_upvw (read and write)
	]]
	-- KONSTANTERROR: [48] 40. Error Block 19 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [48] 40. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 25 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [48.0]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [48.65666]
	-- KONSTANTERROR: [0] 1. Error Block 25 end (CF ANALYSIS FAILED)
end)
return {}