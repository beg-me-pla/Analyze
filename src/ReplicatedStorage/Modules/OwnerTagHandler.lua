-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:09
-- Luau version 6, Types version 3
-- Time taken: 0.003430 seconds

local Players = game:GetService("Players")
local TweenService_upvr = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local GetFarmAsync_upvr = require(ReplicatedStorage.Modules.GetFarmAsync)
local LocalPlayer_upvr = Players.LocalPlayer
local Character_upvw = LocalPlayer_upvr.Character
if not Character_upvw then
	Character_upvw = LocalPlayer_upvr.CharacterAdded:Wait()
end
LocalPlayer_upvr.CharacterAdded:Connect(function(arg1) -- Line 19
	--[[ Upvalues[1]:
		[1]: Character_upvw (read and write)
	]]
	Character_upvw = arg1
end)
local GetFarmAsync_upvr_result1_upvw = GetFarmAsync_upvr(LocalPlayer_upvr)
local Owner_Tag = GetFarmAsync_upvr_result1_upvw:WaitForChild("Owner_Tag")
local vector3_upvw = Vector3.new(Owner_Tag.Position.X, 0, Owner_Tag.Position.Z)
local OwnerTag_upvr = script:WaitForChild("OwnerTag")
OwnerTag_upvr:PivotTo(Owner_Tag:GetPivot())
OwnerTag_upvr.Parent = workspace
local BillboardGui_upvr = OwnerTag_upvr.Part.BillboardGui
BillboardGui_upvr.Parent = LocalPlayer_upvr:WaitForChild("PlayerGui")
task.spawn(function() -- Line 36
	--[[ Upvalues[5]:
		[1]: GetFarmAsync_upvr_result1_upvw (read and write)
		[2]: GetFarmAsync_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
		[4]: vector3_upvw (read and write)
		[5]: OwnerTag_upvr (readonly)
	]]
	while true do
		task.wait(1)
		GetFarmAsync_upvr_result1_upvw = GetFarmAsync_upvr(LocalPlayer_upvr)
		local Owner_Tag_2 = GetFarmAsync_upvr_result1_upvw:WaitForChild("Owner_Tag")
		vector3_upvw = Vector3.new(Owner_Tag_2.Position.X, 0, Owner_Tag_2.Position.Z)
		OwnerTag_upvr:PivotTo(Owner_Tag_2:GetPivot())
		OwnerTag_upvr.Parent = workspace
	end
end)
local USER_IMAGE_upvr = BillboardGui_upvr:FindFirstChild("USER_IMAGE", true)
USER_IMAGE_upvr.Image = Players:GetUserThumbnailAsync(LocalPlayer_upvr.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
local SENSOR = BillboardGui_upvr:WaitForChild("SENSOR")
local YourFarmText_upvr = BillboardGui_upvr:FindFirstChild("YourFarmText", true)
local UIScale_upvr = USER_IMAGE_upvr:WaitForChild("UIScale")
local var19_upvw = false
local UIStroke_upvr = USER_IMAGE_upvr:WaitForChild("UIStroke")
local YourFarmStroke_upvr = YourFarmText_upvr:WaitForChild("YourFarmStroke")
local function ToggleTransparency_upvr(arg1) -- Line 61, Named "ToggleTransparency"
	--[[ Upvalues[7]:
		[1]: var19_upvw (read and write)
		[2]: BillboardGui_upvr (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: USER_IMAGE_upvr (readonly)
		[5]: UIStroke_upvr (readonly)
		[6]: YourFarmText_upvr (readonly)
		[7]: YourFarmStroke_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 39 start (CF ANALYSIS FAILED)
	var19_upvw = arg1
	local var22
	if arg1 then
		BillboardGui_upvr.Enabled = true
	end
	local tbl = {}
	if arg1 then
		var22 = 0
	else
		var22 = 1
	end
	tbl.ImageTransparency = var22
	if arg1 then
		var22 = 0
		-- KONSTANTWARNING: GOTO [23] #21
	end
	-- KONSTANTERROR: [0] 1. Error Block 39 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 20. Error Block 43 start (CF ANALYSIS FAILED)
	var22 = 1
	tbl.BackgroundTransparency = var22
	TweenService_upvr:Create(USER_IMAGE_upvr, TweenInfo.new(0.2), tbl):Play()
	if arg1 then
		var22 = 0
		-- KONSTANTWARNING: GOTO [42] #36
	end
	-- KONSTANTERROR: [22] 20. Error Block 43 end (CF ANALYSIS FAILED)
end
ToggleTransparency_upvr(false)
local Scale_upvr = UIScale_upvr.Scale
SENSOR.MouseEnter:Connect(function() -- Line 96
	--[[ Upvalues[4]:
		[1]: var19_upvw (read and write)
		[2]: TweenService_upvr (readonly)
		[3]: UIScale_upvr (readonly)
		[4]: Scale_upvr (readonly)
	]]
	if not var19_upvw then
	else
		TweenService_upvr:Create(UIScale_upvr, TweenInfo.new(0.2), {
			Scale = Scale_upvr * 1 + 0.1;
		}):Play()
	end
end)
SENSOR.MouseLeave:Connect(function() -- Line 103
	--[[ Upvalues[4]:
		[1]: var19_upvw (read and write)
		[2]: TweenService_upvr (readonly)
		[3]: UIScale_upvr (readonly)
		[4]: Scale_upvr (readonly)
	]]
	if not var19_upvw then
	else
		TweenService_upvr:Create(UIScale_upvr, TweenInfo.new(0.2), {
			Scale = Scale_upvr;
		}):Play()
	end
end)
SENSOR.MouseButton1Down:Connect(function() -- Line 110
	--[[ Upvalues[4]:
		[1]: var19_upvw (read and write)
		[2]: TweenService_upvr (readonly)
		[3]: UIScale_upvr (readonly)
		[4]: Scale_upvr (readonly)
	]]
	if not var19_upvw then
	else
		TweenService_upvr:Create(UIScale_upvr, TweenInfo.new(0.2), {
			Scale = Scale_upvr * 1 - 0.1;
		}):Play()
	end
end)
SENSOR.MouseButton1Up:Connect(function() -- Line 117
	--[[ Upvalues[4]:
		[1]: var19_upvw (read and write)
		[2]: TweenService_upvr (readonly)
		[3]: UIScale_upvr (readonly)
		[4]: Scale_upvr (readonly)
	]]
	if not var19_upvw then
	else
		TweenService_upvr:Create(UIScale_upvr, TweenInfo.new(0.2), {
			Scale = Scale_upvr * 1 + 0.1;
		}):Play()
	end
end)
local module_upvr = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("GetFarm"))
SENSOR.MouseButton1Click:Connect(function() -- Line 124
	--[[ Upvalues[4]:
		[1]: var19_upvw (read and write)
		[2]: module_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
		[4]: Character_upvw (read and write)
	]]
	if not var19_upvw then
	else
		Character_upvw:PivotTo(module_upvr(LocalPlayer_upvr).Spawn_Point.CFrame)
	end
end)
local var36_upvw = false
game:GetService("RunService").RenderStepped:Connect(function() -- Line 130
	--[[ Upvalues[4]:
		[1]: Character_upvw (read and write)
		[2]: vector3_upvw (read and write)
		[3]: var36_upvw (read and write)
		[4]: ToggleTransparency_upvr (readonly)
	]]
	if not Character_upvw then
	else
		local Position = Character_upvw:GetPivot().Position
		local var38 = vector3_upvw - Vector3.new(Position.X, 0, Position.Z)
		if 80 > var38.Magnitude then
			var38 = false
		else
			var38 = true
		end
		if var36_upvw == var38 then return end
		var36_upvw = var38
		ToggleTransparency_upvr(var38)
	end
end)
return {}