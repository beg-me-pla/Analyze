-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:48
-- Luau version 6, Types version 3
-- Time taken: 0.000921 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService_upvr = game:GetService("UserInputService")
local IsBadDeviceHeuristic_upvr = require(ReplicatedStorage.Modules.OptimisationControllers.IsBadDeviceHeuristic)
local GetFarmAsync_upvr = require(ReplicatedStorage.Modules.GetFarmAsync)
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Farm_upvr = workspace:WaitForChild("Farm")
task.spawn(function() -- Line 15
	--[[ Upvalues[5]:
		[1]: UserInputService_upvr (readonly)
		[2]: IsBadDeviceHeuristic_upvr (readonly)
		[3]: GetFarmAsync_upvr (readonly)
		[4]: LocalPlayer_upvr (readonly)
		[5]: Farm_upvr (readonly)
	]]
	UserInputService_upvr.InputBegan:Wait()
	task.wait(3)
	if not IsBadDeviceHeuristic_upvr() then
	else
		for _, v in Farm_upvr:GetChildren() do
			if GetFarmAsync_upvr(LocalPlayer_upvr) ~= v then
				local Cosmetic_Physical = v.Important.Cosmetic_Physical
				for _, v_2 in Cosmetic_Physical:GetChildren() do
					v_2:Destroy()
				end
				Cosmetic_Physical.ChildAdded:Connect(function(arg1) -- Line 32
					arg1:Destroy()
				end)
			end
		end
	end
end)
return {}