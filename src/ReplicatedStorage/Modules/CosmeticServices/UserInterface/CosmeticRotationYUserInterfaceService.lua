-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:49
-- Luau version 6, Types version 3
-- Time taken: 0.002540 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local GuiService_upvr = game:GetService("GuiService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RotationYIcon_upvr = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("CosmeticUI"):WaitForChild("RotationYIcon")
local ActualIcon_upvr = RotationYIcon_upvr:WaitForChild("ActualIcon")
RotationYIcon_upvr.Visible = false
local module_upvr = {
	Active = false;
	CurrentOffset = 0;
}
local var7_upvw = 0
local function _() -- Line 27, Named "UpdatePosition"
	--[[ Upvalues[3]:
		[1]: UserInputService_upvr (readonly)
		[2]: GuiService_upvr (readonly)
		[3]: RotationYIcon_upvr (readonly)
	]]
	local any_GetMouseLocation_result1 = UserInputService_upvr:GetMouseLocation()
	local any_GetGuiInset_result1 = GuiService_upvr:GetGuiInset()
	RotationYIcon_upvr.Position = UDim2.fromOffset(any_GetMouseLocation_result1.X + any_GetGuiInset_result1.X, any_GetMouseLocation_result1.Y - any_GetGuiInset_result1.Y)
end
function module_upvr.Toggle(arg1, arg2) -- Line 34
	--[[ Upvalues[6]:
		[1]: module_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: var7_upvw (read and write)
		[4]: GuiService_upvr (readonly)
		[5]: RotationYIcon_upvr (readonly)
		[6]: ActualIcon_upvr (readonly)
	]]
	module_upvr.CurrentOffset = 0
	module_upvr.Active = arg2
	var7_upvw = UserInputService_upvr:GetMouseLocation().X
	local any_GetMouseLocation_result1_2 = UserInputService_upvr:GetMouseLocation()
	local any_GetGuiInset_result1_2 = GuiService_upvr:GetGuiInset()
	RotationYIcon_upvr.Position = UDim2.fromOffset(any_GetMouseLocation_result1_2.X + any_GetGuiInset_result1_2.X, any_GetMouseLocation_result1_2.Y - any_GetGuiInset_result1_2.Y)
	ActualIcon_upvr.Position = UDim2.fromScale(0.5, 0.5)
	RotationYIcon_upvr.Visible = arg2
end
local RoundToNearestNumber_upvr = require(ReplicatedStorage.Modules.RoundToNearestNumber)
local ROTATION_CONFIG_upvr = require(ReplicatedStorage.Data.CosmeticRegistry).InputConfig.ROTATION_CONFIG
game:GetService("RunService").RenderStepped:Connect(function() -- Line 49
	--[[ Upvalues[6]:
		[1]: module_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: var7_upvw (read and write)
		[4]: RoundToNearestNumber_upvr (readonly)
		[5]: ROTATION_CONFIG_upvr (readonly)
		[6]: ActualIcon_upvr (readonly)
	]]
	if not module_upvr.Active then
	else
		local X = UserInputService_upvr:GetMouseLocation().X
		local var16 = module_upvr
		var16.CurrentOffset += X - var7_upvw
		var7_upvw = X
		ActualIcon_upvr.Position = UDim2.fromScale(0.5, 0.5) + UDim2.fromOffset(RoundToNearestNumber_upvr(module_upvr.CurrentOffset, ROTATION_CONFIG_upvr.ROTATION_ROUNDING_PIXEL), 0)
	end
end)
local tbl_upvr = {
	[Enum.KeyCode.DPadLeft] = {
		Test = function() -- Line 66
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			local var20 = module_upvr
			var20.CurrentOffset -= 30
		end;
	};
	[Enum.KeyCode.DPadRight] = {
		Test = function() -- Line 71
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			local var23 = module_upvr
			var23.CurrentOffset += 30
		end;
	};
}
UserInputService_upvr.InputBegan:Connect(function(arg1, arg2) -- Line 81
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var29 = tbl_upvr[arg1.KeyCode]
	if not var29 then
		var29 = tbl_upvr[arg1.UserInputType]
	end
	if not var29 then
	else
		for _, var28_upvr in var29 do
			task.spawn(function() -- Line 85
				--[[ Upvalues[2]:
					[1]: var28_upvr (readonly)
					[2]: arg1 (readonly)
				]]
				var28_upvr(arg1)
			end)
		end
	end
end)
local tbl_upvr_2 = {}
UserInputService_upvr.InputEnded:Connect(function(arg1, arg2) -- Line 91
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local var37 = tbl_upvr_2[arg1.KeyCode]
	if not var37 then
		var37 = tbl_upvr_2[arg1.UserInputType]
	end
	if not var37 then
	else
		for _, var36_upvr in var37 do
			task.spawn(function() -- Line 95
				--[[ Upvalues[2]:
					[1]: var36_upvr (readonly)
					[2]: arg1 (readonly)
				]]
				var36_upvr(arg1)
			end)
		end
	end
end)
return module_upvr