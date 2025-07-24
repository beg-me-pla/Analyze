-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:28
-- Luau version 6, Types version 3
-- Time taken: 0.007611 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local PlayerGui_upvr = LocalPlayer_upvr.PlayerGui
local HoldToCollect_upvr = PlayerGui_upvr:WaitForChild("HoldToCollect")
local tbl_2_upvr = {}
local module_upvr = {
	_lastCollected = 0;
	_holding = false;
	_updateButtonState = function(arg1) -- Line 53, Named "_updateButtonState"
		--[[ Upvalues[2]:
			[1]: HoldToCollect_upvr (readonly)
			[2]: tbl_2_upvr (readonly)
		]]
		local var7 = HoldToCollect_upvr
		if next(tbl_2_upvr) == nil then
			var7 = false
		else
			var7 = true
		end
		var7.Collect.Visible = var7
	end;
}
local any_new_result1_upvr_2 = require(ReplicatedStorage.Modules.Trove).new()
local Remotes_upvr = require(ReplicatedStorage.Modules.Remotes)
function module_upvr.Collect(arg1) -- Line 59
	--[[ Upvalues[3]:
		[1]: any_new_result1_upvr_2 (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: Remotes_upvr (readonly)
	]]
	local os_clock_result1 = os.clock()
	any_new_result1_upvr_2:Clean()
	arg1._lastCollected = os_clock_result1
	local tbl = {}
	for i_upvr, _ in tbl_2_upvr do
		i_upvr:SetAttribute("Collected", true)
		task.delay(1, function() -- Line 86
			--[[ Upvalues[1]:
				[1]: i_upvr (readonly)
			]]
			i_upvr:SetAttribute("Collected", nil)
		end)
		local Parent = i_upvr.Parent
		if Parent then
			Parent = i_upvr.Parent.Parent
		end
		if Parent then
			table.insert(tbl, Parent)
		end
	end
	if 0 < #tbl then
		arg1._lastCollected = os_clock_result1
		i_upvr = Remotes_upvr
		i_upvr.Crops.Collect.send(tbl)
	end
end
local UserInputService_upvr = game:GetService("UserInputService")
local var19_upvr = game:GetService("RunService"):IsStudio() and false
local ProximityPromptService_upvr = game:GetService("ProximityPromptService")
local GetFarm_upvr = require(ReplicatedStorage.Modules.GetFarm)
local Queue_upvr = require(game.ReplicatedStorage.Code.Queue)
local InventoryService_upvr = require(ReplicatedStorage.Modules.InventoryService)
local PickupParticle_upvr = workspace.Terrain:WaitForChild("PickupParticle")
function module_upvr.Start(arg1) -- Line 108
	--[[ Upvalues[11]:
		[1]: UserInputService_upvr (readonly)
		[2]: var19_upvr (readonly)
		[3]: HoldToCollect_upvr (readonly)
		[4]: ProximityPromptService_upvr (readonly)
		[5]: tbl_2_upvr (readonly)
		[6]: PlayerGui_upvr (readonly)
		[7]: LocalPlayer_upvr (readonly)
		[8]: GetFarm_upvr (readonly)
		[9]: Queue_upvr (readonly)
		[10]: InventoryService_upvr (readonly)
		[11]: PickupParticle_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	UserInputService_upvr.LastInputTypeChanged:Connect(function() -- Line 110, Named "updateHoldToCollect"
		--[[ Upvalues[3]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: var19_upvr (copied, readonly)
			[3]: HoldToCollect_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local TouchEnabled = UserInputService_upvr.TouchEnabled
		if TouchEnabled then
			if UserInputService_upvr:GetLastInputType() ~= Enum.UserInputType.Touch then
				TouchEnabled = false
			else
				TouchEnabled = true
			end
		end
		if not TouchEnabled then
		end
		HoldToCollect_upvr.Enabled = var19_upvr
	end)
	local TouchEnabled_2 = UserInputService_upvr.TouchEnabled
	if TouchEnabled_2 then
		if UserInputService_upvr:GetLastInputType() ~= Enum.UserInputType.Touch then
			TouchEnabled_2 = false
		else
			TouchEnabled_2 = true
		end
	end
	if not TouchEnabled_2 then
	end
	HoldToCollect_upvr.Enabled = var19_upvr
	task.delay(3, function() -- Line 120
		--[[ Upvalues[3]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: var19_upvr (copied, readonly)
			[3]: HoldToCollect_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local TouchEnabled_3 = UserInputService_upvr.TouchEnabled
		if TouchEnabled_3 then
			if UserInputService_upvr:GetLastInputType() ~= Enum.UserInputType.Touch then
				TouchEnabled_3 = false
			else
				TouchEnabled_3 = true
			end
		end
		if not TouchEnabled_3 then
		end
		HoldToCollect_upvr.Enabled = var19_upvr
	end)
	local var29_upvw
	ProximityPromptService_upvr.PromptShown:Connect(function(arg1_2) -- Line 130
		--[[ Upvalues[3]:
			[1]: tbl_2_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: var29_upvw (read and write)
		]]
		if arg1_2:HasTag("CollectPrompt") then
			tbl_2_upvr[arg1_2] = true
			arg1:_updateButtonState()
		end
		var29_upvw = arg1_2
	end)
	ProximityPromptService_upvr.PromptHidden:Connect(function(arg1_3) -- Line 139
		--[[ Upvalues[3]:
			[1]: tbl_2_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: var29_upvw (read and write)
		]]
		if arg1_3:HasTag("CollectPrompt") then
			tbl_2_upvr[arg1_3] = nil
			arg1:_updateButtonState()
		end
		if var29_upvw == arg1_3 then
			var29_upvw = nil
		end
	end)
	local var32_upvw = 0
	local function RunHoldLoop_upvr(arg1_4) -- Line 150, Named "RunHoldLoop"
		--[[ Upvalues[11]:
			[1]: arg1 (readonly)
			[2]: var32_upvw (read and write)
			[3]: PlayerGui_upvr (copied, readonly)
			[4]: LocalPlayer_upvr (copied, readonly)
			[5]: GetFarm_upvr (copied, readonly)
			[6]: Queue_upvr (copied, readonly)
			[7]: var29_upvw (read and write)
			[8]: ProximityPromptService_upvr (copied, readonly)
			[9]: tbl_2_upvr (copied, readonly)
			[10]: InventoryService_upvr (copied, readonly)
			[11]: PickupParticle_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 32 start (CF ANALYSIS FAILED)
		if arg1._holding then return end
		arg1._holding = true
		var32_upvw = 0
		PlayerGui_upvr.PickupTally.TextLabel.val:SetAttribute("LastUpdate", os.time() - 5)
		PlayerGui_upvr.PickupTally.TextLabel.val:SetAttribute("ActualValue", 0)
		LocalPlayer_upvr.PlayerScripts.CollectionQOL.Enabled = false
		local any_new_result1_upvr = Queue_upvr.new()
		if var29_upvw then
			any_new_result1_upvr:enqueue(var29_upvw)
		end
		local function var34(arg1_5) -- Line 178
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (readonly)
			]]
			if not table.find(any_new_result1_upvr._queue, arg1_5) then
				any_new_result1_upvr:enqueue(arg1_5)
			end
		end
		ProximityPromptService_upvr.PromptShown:Connect(var34)
		-- KONSTANTERROR: [0] 1. Error Block 32 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [219] 155. Error Block 27 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [219] 155. Error Block 27 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [67] 50. Error Block 6 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [67] 50. Error Block 6 end (CF ANALYSIS FAILED)
	end
	ProximityPromptService_upvr.PromptTriggered:Connect(function(arg1_6) -- Line 343
		--[[ Upvalues[2]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: RunHoldLoop_upvr (readonly)
		]]
		if not arg1_6:HasTag("CollectPrompt") then
		else
			if not UserInputService_upvr:IsKeyDown(Enum.KeyCode.E) and not UserInputService_upvr:IsGamepadButtonDown(Enum.UserInputType.Gamepad1, Enum.KeyCode.ButtonX) then return end
			local var36_upvw = false
			local var38_upvw
			var38_upvw = UserInputService_upvr.InputEnded:Connect(function(arg1_7) -- Line 354
				--[[ Upvalues[2]:
					[1]: var38_upvw (read and write)
					[2]: var36_upvw (read and write)
				]]
				if arg1_7.KeyCode == Enum.KeyCode.E or arg1_7.KeyCode == Enum.KeyCode.ButtonX then
					var38_upvw:Disconnect()
					var36_upvw = true
				end
			end)
			task.wait(1)
			if not var36_upvw then
				var38_upvw:Disconnect()
				RunHoldLoop_upvr(false)
			end
		end
	end)
	local var40_upvw
	UserInputService_upvr.InputBegan:Connect(function(arg1_8, arg2) -- Line 369
		--[[ Upvalues[3]:
			[1]: var40_upvw (read and write)
			[2]: UserInputService_upvr (copied, readonly)
			[3]: RunHoldLoop_upvr (readonly)
		]]
		if not arg2 and (arg1_8.KeyCode == Enum.KeyCode.E or arg1_8.KeyCode == Enum.KeyCode.ButtonX) then
			var40_upvw = arg1_8
			local var41_upvw = false
			local var43_upvw
			var43_upvw = UserInputService_upvr.InputEnded:Connect(function(arg1_9) -- Line 376
				--[[ Upvalues[2]:
					[1]: var43_upvw (read and write)
					[2]: var41_upvw (read and write)
				]]
				if arg1_9.KeyCode == Enum.KeyCode.E or arg1_9.KeyCode == Enum.KeyCode.ButtonX then
					var43_upvw:Disconnect()
					var41_upvw = true
				end
			end)
			task.wait(1)
			if not var41_upvw and (game:GetService("UserInputService"):IsGamepadButtonDown(Enum.UserInputType.Gamepad1, Enum.KeyCode.ButtonX) or game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.E)) then
				var43_upvw:Disconnect()
				RunHoldLoop_upvr(false)
			end
		end
	end)
	arg1:_updateButtonState()
	HoldToCollect_upvr.Collect.MouseButton1Down:Connect(function(arg1_10) -- Line 396
		--[[ Upvalues[1]:
			[1]: RunHoldLoop_upvr (readonly)
		]]
		RunHoldLoop_upvr(true)
	end)
	UserInputService_upvr.InputEnded:Connect(function(arg1_11, arg2) -- Line 400
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_11.KeyCode == Enum.KeyCode.E or arg1_11.KeyCode == Enum.KeyCode.ButtonX then
			arg1._holding = false
		end
		if arg1_11.UserInputType == Enum.UserInputType.Touch or arg1_11.UserInputType == Enum.UserInputType.MouseButton1 then
			arg1._holding = false
		end
	end)
	UserInputService_upvr.WindowFocusReleased:Connect(function() -- Line 410
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1._holding = false
	end)
	PlayerGui_upvr:WaitForChild("PickupTally").Enabled = true
end
task.spawn(function() -- Line 424
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	while true do
		task.wait(2)
		module_upvr:_updateButtonState()
	end
end)
task.spawn(module_upvr.Start, module_upvr)
return module_upvr