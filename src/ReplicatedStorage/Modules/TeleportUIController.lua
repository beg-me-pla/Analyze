-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:20
-- Luau version 6, Types version 3
-- Time taken: 0.001990 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local module_upvr = {
	Move = function(arg1, arg2) -- Line 16, Named "Move"
		--[[ Upvalues[1]:
			[1]: LocalPlayer_upvr (readonly)
		]]
		local Character_upvr = LocalPlayer_upvr.Character
		if not Character_upvr then
		else
			local Humanoid_upvr = Character_upvr:WaitForChild("Humanoid", 1)
			if not Humanoid_upvr then return end
			if Humanoid_upvr.Sit then
				Humanoid_upvr.Sit = false
				Humanoid_upvr:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
				task.delay(0.1, function() -- Line 28
					--[[ Upvalues[3]:
						[1]: Humanoid_upvr (readonly)
						[2]: Character_upvr (readonly)
						[3]: arg2 (readonly)
					]]
					Humanoid_upvr:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
					Character_upvr:PivotTo(arg2)
				end)
				return
			end
			Character_upvr:PivotTo(arg2)
		end
	end;
}
local Teleport_UI_upvr = LocalPlayer_upvr.PlayerGui.Teleport_UI
local SaveSlotUIController_upvr = require(ReplicatedStorage.Modules.SaveSlotControllers.SaveSlotUIController)
local GetFarm_upvr = require(ReplicatedStorage.Modules.GetFarm)
local Notification_upvr = require(ReplicatedStorage.Modules.Notification)
function module_upvr.Start(arg1) -- Line 44
	--[[ Upvalues[6]:
		[1]: Teleport_UI_upvr (readonly)
		[2]: SaveSlotUIController_upvr (readonly)
		[3]: GetFarm_upvr (readonly)
		[4]: LocalPlayer_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: Notification_upvr (readonly)
	]]
	Teleport_UI_upvr.Frame.Garden.Activated:Connect(function() -- Line 45
		--[[ Upvalues[5]:
			[1]: SaveSlotUIController_upvr (copied, readonly)
			[2]: GetFarm_upvr (copied, readonly)
			[3]: LocalPlayer_upvr (copied, readonly)
			[4]: module_upvr (copied, readonly)
			[5]: Notification_upvr (copied, readonly)
		]]
		if SaveSlotUIController_upvr.State then
		else
			local GetFarm_upvr_result1 = GetFarm_upvr(LocalPlayer_upvr)
			if GetFarm_upvr_result1 ~= nil then
				module_upvr:Move(GetFarm_upvr_result1.Spawn_Point.CFrame)
				return
			end
			Notification_upvr:CreateNotification("You haven't been a assigned to a farm yet! Please be patient.")
		end
	end)
	Teleport_UI_upvr.Frame.Seeds.Activated:Connect(function() -- Line 58
		--[[ Upvalues[2]:
			[1]: SaveSlotUIController_upvr (copied, readonly)
			[2]: module_upvr (copied, readonly)
		]]
		if SaveSlotUIController_upvr.State then
		else
			module_upvr:Move(workspace.Tutorial_Points.Tutorial_Point_1.CFrame)
		end
	end)
	Teleport_UI_upvr.Frame.Sell.Activated:Connect(function() -- Line 64
		--[[ Upvalues[2]:
			[1]: SaveSlotUIController_upvr (copied, readonly)
			[2]: module_upvr (copied, readonly)
		]]
		if SaveSlotUIController_upvr.State then
		else
			module_upvr:Move(workspace.Tutorial_Points.Tutorial_Point_2.CFrame)
		end
	end)
	Teleport_UI_upvr.Frame.Gear.Activated:Connect(function() -- Line 70
		--[[ Upvalues[2]:
			[1]: SaveSlotUIController_upvr (copied, readonly)
			[2]: module_upvr (copied, readonly)
		]]
		if SaveSlotUIController_upvr.State then
		else
			module_upvr:Move(workspace.Tutorial_Points.Tutorial_Point_3.CFrame)
		end
	end)
	Teleport_UI_upvr.Frame.Pets.Activated:Connect(function() -- Line 76
		--[[ Upvalues[2]:
			[1]: SaveSlotUIController_upvr (copied, readonly)
			[2]: module_upvr (copied, readonly)
		]]
		if SaveSlotUIController_upvr.State then
		else
			module_upvr:Move(workspace.Tutorial_Points.Tutorial_Point_4.CFrame)
		end
	end)
end
task.spawn(module_upvr.Start, module_upvr)
return module_upvr