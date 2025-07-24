-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:51
-- Luau version 6, Types version 3
-- Time taken: 0.001510 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr = {
	Enabled = true;
}
local any_GetMutations_result1_upvr = require(ReplicatedStorage.Modules.MutationHandler):GetMutations()
local function CullFruit_upvr(arg1) -- Line 19, Named "CullFruit"
	--[[ Upvalues[1]:
		[1]: any_GetMutations_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 16. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 16. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 10. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [18.8]
	-- KONSTANTERROR: [10] 10. Error Block 2 end (CF ANALYSIS FAILED)
end
local function StartCullingPlant_upvr(arg1) -- Line 51, Named "StartCullingPlant"
	--[[ Upvalues[1]:
		[1]: CullFruit_upvr (readonly)
	]]
	local Fruits = arg1:FindFirstChild("Fruits")
	if not Fruits then
	else
		Fruits.ChildAdded:Connect(CullFruit_upvr)
		for _, v in Fruits:GetChildren() do
			CullFruit_upvr(v)
			task.wait()
		end
	end
end
local UserInputService_upvr = game:GetService("UserInputService")
local IsBadDeviceHeuristic_upvr = require(ReplicatedStorage.Modules.OptimisationControllers.IsBadDeviceHeuristic)
local GetFarmAsync_upvr = require(ReplicatedStorage.Modules.GetFarmAsync)
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
task.spawn(function() -- Line 65
	--[[ Upvalues[6]:
		[1]: UserInputService_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: IsBadDeviceHeuristic_upvr (readonly)
		[4]: GetFarmAsync_upvr (readonly)
		[5]: LocalPlayer_upvr (readonly)
		[6]: StartCullingPlant_upvr (readonly)
	]]
	UserInputService_upvr.InputBegan:Wait()
	task.wait(5)
	if not module_upvr.Enabled then
	else
		if not IsBadDeviceHeuristic_upvr() then return end
		local GetFarmAsync_upvr_result1 = GetFarmAsync_upvr(LocalPlayer_upvr)
		if not GetFarmAsync_upvr_result1 then return end
		for _, v_2 in workspace.Farm:GetChildren() do
			if v_2 ~= GetFarmAsync_upvr_result1 and v_2:IsA("Folder") and v_2.Name == "Farm" then
				v_2.Important.Plants_Physical.ChildAdded:Connect(StartCullingPlant_upvr)
				for _, v_3 in v_2.Important.Plants_Physical:GetChildren() do
					StartCullingPlant_upvr(v_3)
				end
			end
		end
	end
end)
return module_upvr