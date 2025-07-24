-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:50
-- Luau version 6, Types version 3
-- Time taken: 0.003465 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService_upvr = game:GetService("UserInputService")
local module_upvr = {
	CurrentOffset = 0;
	Target = nil;
	StartPivot = nil;
	LastCFrame = nil;
	Target = nil;
}
local CurrentCamera_upvw = workspace.CurrentCamera
workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function() -- Line 25
	--[[ Upvalues[1]:
		[1]: CurrentCamera_upvw (read and write)
	]]
	CurrentCamera_upvw = workspace.CurrentCamera
end)
local var6_upvw = 0
function module_upvr.SetTarget(arg1, arg2) -- Line 31
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: var6_upvw (read and write)
		[3]: UserInputService_upvr (readonly)
	]]
	module_upvr.LastCFrame = nil
	var6_upvw = UserInputService_upvr:GetMouseLocation().X
	module_upvr.Target = nil
	local var7 = 0
	module_upvr.CurrentOffset = var7
	if arg2 then
		var7 = arg2.Parent:GetPivot()
	else
		var7 = nil
	end
	module_upvr.StartPivot = var7
	module_upvr.Target = arg2
end
local Sound_upvr = Instance.new("Sound")
Sound_upvr.SoundId = "rbxassetid://103926661258479"
Sound_upvr.Volume = 0.2
Sound_upvr.Parent = ReplicatedStorage
local RoundToNearestNumber_upvr = require(ReplicatedStorage.Modules.RoundToNearestNumber)
local ROTATION_CONFIG_upvr = require(ReplicatedStorage.Data.CosmeticRegistry).InputConfig.ROTATION_CONFIG
local CosmeticPhyiscalityService_upvr = require(ReplicatedStorage.Modules.CosmeticServices.CosmeticPhyiscalityService)
local function UpdatePosition_upvr() -- Line 46, Named "UpdatePosition"
	--[[ Upvalues[7]:
		[1]: module_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: var6_upvw (read and write)
		[4]: RoundToNearestNumber_upvr (readonly)
		[5]: ROTATION_CONFIG_upvr (readonly)
		[6]: Sound_upvr (readonly)
		[7]: CosmeticPhyiscalityService_upvr (readonly)
	]]
	if not module_upvr.Target then
	else
		local X = UserInputService_upvr:GetMouseLocation().X
		local var13 = module_upvr
		var13.CurrentOffset += X - var6_upvw
		var6_upvw = X
		local var14 = module_upvr.StartPivot * CFrame.Angles(0, math.rad(RoundToNearestNumber_upvr(module_upvr.CurrentOffset, ROTATION_CONFIG_upvr.ROTATION_ROUNDING_PIXEL) / ROTATION_CONFIG_upvr.ROTATION_ROUNDING_PIXEL * ROTATION_CONFIG_upvr.ROTATION_STEP_DEGREE), 0)
		if module_upvr.LastCFrame == var14 then return end
		module_upvr.LastCFrame = var14
		Sound_upvr.PlaybackSpeed = Random.new():NextNumber(0.95, 1.05)
		Sound_upvr:Play()
		CosmeticPhyiscalityService_upvr:UpdateCFrame(module_upvr.Target.Parent:GetAttribute("CosmeticUUID"), var14)
	end
end
game:GetService("RunService").RenderStepped:Connect(function() -- Line 75
	--[[ Upvalues[1]:
		[1]: UpdatePosition_upvr (readonly)
	]]
	UpdatePosition_upvr()
end)
local tbl_upvr = {
	[Enum.KeyCode.DPadLeft] = {
		Test = function() -- Line 81
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			local var19 = module_upvr
			var19.CurrentOffset -= 30
		end;
	};
	[Enum.KeyCode.DPadRight] = {
		Test = function() -- Line 86
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			local var22 = module_upvr
			var22.CurrentOffset += 30
		end;
	};
}
UserInputService_upvr.InputBegan:Connect(function(arg1, arg2) -- Line 104
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var28 = tbl_upvr[arg1.KeyCode]
	if not var28 then
		var28 = tbl_upvr[arg1.UserInputType]
	end
	if not var28 then
	else
		for _, var27_upvr in var28 do
			task.spawn(function() -- Line 108
				--[[ Upvalues[2]:
					[1]: var27_upvr (readonly)
					[2]: arg1 (readonly)
				]]
				var27_upvr(arg1)
			end)
		end
	end
end)
local tbl_upvr_2 = {}
UserInputService_upvr.InputEnded:Connect(function(arg1, arg2) -- Line 114
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local var36 = tbl_upvr_2[arg1.KeyCode]
	if not var36 then
		var36 = tbl_upvr_2[arg1.UserInputType]
	end
	if not var36 then
	else
		for _, var35_upvr in var36 do
			task.spawn(function() -- Line 118
				--[[ Upvalues[2]:
					[1]: var35_upvr (readonly)
					[2]: arg1 (readonly)
				]]
				var35_upvr(arg1)
			end)
		end
	end
end)
return module_upvr