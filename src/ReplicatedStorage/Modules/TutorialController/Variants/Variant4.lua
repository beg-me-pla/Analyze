-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:24
-- Luau version 6, Types version 3
-- Time taken: 0.009159 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local PlayerGui_upvr = LocalPlayer_upvr.PlayerGui
local Trove_upvr = require(ReplicatedStorage_upvr.Modules.Trove)
local Arrow_Module_upvr = require(ReplicatedStorage_upvr.Arrow_Module)
local Observers_upvr = require(ReplicatedStorage_upvr.Modules.Observers)
local DataService_upvr = require(ReplicatedStorage_upvr.Modules.DataService)
local TutorialUtils_upvr = require(ReplicatedStorage_upvr.Modules.TutorialController.TutorialUtils)
local Notification_upvr = require(ReplicatedStorage_upvr.Modules.Notification)
local Seed_Shop_upvr = PlayerGui_upvr.Seed_Shop
local DeviceController_upvr = require(ReplicatedStorage_upvr.Modules.DeviceController)
local UserInputService_upvr = game:GetService("UserInputService")
local FastTween_upvr = require(ReplicatedStorage_upvr.Modules.FastTween)
return function() -- Line 23
	--[[ Upvalues[13]:
		[1]: Trove_upvr (readonly)
		[2]: Arrow_Module_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
		[4]: Observers_upvr (readonly)
		[5]: DataService_upvr (readonly)
		[6]: TutorialUtils_upvr (readonly)
		[7]: Notification_upvr (readonly)
		[8]: Seed_Shop_upvr (readonly)
		[9]: DeviceController_upvr (readonly)
		[10]: UserInputService_upvr (readonly)
		[11]: PlayerGui_upvr (readonly)
		[12]: ReplicatedStorage_upvr (readonly)
		[13]: FastTween_upvr (readonly)
	]]
	local any_new_result1_upvr = Trove_upvr.new()
	local function createArrow_upvr(arg1) -- Line 26, Named "createArrow"
		--[[ Upvalues[3]:
			[1]: any_new_result1_upvr (readonly)
			[2]: Arrow_Module_upvr (copied, readonly)
			[3]: LocalPlayer_upvr (copied, readonly)
		]]
		local any_Extend_result1 = any_new_result1_upvr:Extend()
		local any_GenerateArrow_result1_upvr = Arrow_Module_upvr.GenerateArrow(LocalPlayer_upvr, arg1, math.random(1, 1000000))
		any_Extend_result1:Add(function() -- Line 30
			--[[ Upvalues[2]:
				[1]: Arrow_Module_upvr (copied, readonly)
				[2]: any_GenerateArrow_result1_upvr (readonly)
			]]
			Arrow_Module_upvr.Remove_Arrow(any_GenerateArrow_result1_upvr)
		end)
		return any_Extend_result1:WrapClean()
	end
	local any_observeTag_result1_upvr = Observers_upvr.observeTag("GrowSign", function(arg1) -- Line 38
		arg1:SetAttribute("Visible", false)
		return function() -- Line 40
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:SetAttribute("Visible", true)
		end
	end)
	task.spawn(function() -- Line 45
		--[[ Upvalues[2]:
			[1]: DataService_upvr (copied, readonly)
			[2]: any_observeTag_result1_upvr (readonly)
		]]
		local any_GetData_result1_upvr = DataService_upvr:GetData()
		local var25_upvw
		var25_upvw = assert(DataService_upvr:GetPathSignal("CropsSold")):Connect(function() -- Line 49
			--[[ Upvalues[3]:
				[1]: any_GetData_result1_upvr (readonly)
				[2]: any_observeTag_result1_upvr (copied, readonly)
				[3]: var25_upvw (read and write)
			]]
			if 5 <= any_GetData_result1_upvr.CropsSold then
				any_observeTag_result1_upvr()
				if var25_upvw then
					var25_upvw:Disconnect()
					var25_upvw = nil
				end
			end
		end)
	end)
	workspace:SetAttribute("InTutorial", true)
	any_new_result1_upvr:Add(function() -- Line 62
		workspace:SetAttribute("InTutorial", nil)
	end)
	any_new_result1_upvr:Add(task.spawn(function() -- Line 66
		--[[ Upvalues[11]:
			[1]: TutorialUtils_upvr (copied, readonly)
			[2]: createArrow_upvr (readonly)
			[3]: Notification_upvr (copied, readonly)
			[4]: Seed_Shop_upvr (copied, readonly)
			[5]: DeviceController_upvr (copied, readonly)
			[6]: LocalPlayer_upvr (copied, readonly)
			[7]: UserInputService_upvr (copied, readonly)
			[8]: PlayerGui_upvr (copied, readonly)
			[9]: ReplicatedStorage_upvr (copied, readonly)
			[10]: FastTween_upvr (copied, readonly)
			[11]: any_new_result1_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 105 start (CF ANALYSIS FAILED)
		local any_waitForFarm_result1 = TutorialUtils_upvr.waitForFarm()
		TutorialUtils_upvr.waitUntilDistance(workspace.Tutorial_Points.Tutorial_Point_1.Position, 5)
		createArrow_upvr(workspace.Tutorial_Points.Tutorial_Point_1.Position)()
		Notification_upvr:CreateNotification("Talk to Tom!")
		local var29
		while not Seed_Shop_upvr.Enabled do
			task.wait(0.1)
		end
		local var45_upvw
		local function var30_upvw() -- Line 86
			--[[ Upvalues[3]:
				[1]: Seed_Shop_upvr (copied, readonly)
				[2]: TutorialUtils_upvr (copied, readonly)
				[3]: var45_upvw (read and write)
			]]
			Seed_Shop_upvr.Frame.ScrollingFrame.ScrollingEnabled = false
			local any_pointToUI_result1_upvw_2 = TutorialUtils_upvr.pointToUI(function() -- Line 89
				--[[ Upvalues[1]:
					[1]: Seed_Shop_upvr (copied, readonly)
				]]
				local Carrot_2 = Seed_Shop_upvr.Frame.ScrollingFrame:FindFirstChild("Carrot")
				if not Carrot_2 then
					return nil
				end
				local Main_Frame = Carrot_2.Main_Frame
				return Main_Frame.AbsolutePosition + Main_Frame.AbsoluteSize * 0.5
			end)
			repeat
				task.wait(0.1)
				if not Seed_Shop_upvr.Enabled then break end
				local Carrot = Seed_Shop_upvr.Frame.ScrollingFrame:FindFirstChild("Carrot")
			until not Carrot or 1 < Carrot.Frame.Position.Y.Scale
			Seed_Shop_upvr:GetPropertyChangedSignal("Enabled"):Connect(function() -- Line 112
				--[[ Upvalues[3]:
					[1]: Seed_Shop_upvr (copied, readonly)
					[2]: any_pointToUI_result1_upvw_2 (read and write)
					[3]: TutorialUtils_upvr (copied, readonly)
				]]
				if not Seed_Shop_upvr.Enabled then
					any_pointToUI_result1_upvw_2()
				else
					any_pointToUI_result1_upvw_2 = TutorialUtils_upvr.pointToUI(function() -- Line 116
						--[[ Upvalues[1]:
							[1]: Seed_Shop_upvr (copied, readonly)
						]]
						local Carrot_4 = Seed_Shop_upvr.Frame.ScrollingFrame:FindFirstChild("Carrot")
						if not Carrot_4 then
							return nil
						end
						local Main_Frame_3 = Carrot_4.Main_Frame
						return Main_Frame_3.AbsolutePosition + Main_Frame_3.AbsoluteSize * 0.5
					end)
				end
			end):Disconnect()
			TutorialUtils_upvr.focusObject(function() -- Line 99
				--[[ Upvalues[1]:
					[1]: Seed_Shop_upvr (copied, readonly)
				]]
				local Carrot_5 = Seed_Shop_upvr.Frame.ScrollingFrame:FindFirstChild("Carrot")
				if not Carrot_5 then
					return nil
				end
				local Main_Frame_2 = Carrot_5.Main_Frame
				return {
					Position = Main_Frame_2.AbsolutePosition;
					Size = Main_Frame_2.AbsoluteSize;
				}
			end)()
			any_pointToUI_result1_upvw_2()
			while not Seed_Shop_upvr.Enabled and not TutorialUtils_upvr.hasSeed() do
				task.wait(0.1)
			end
			var45_upvw()
		end
		function var45_upvw() -- Line 155
			--[[ Upvalues[3]:
				[1]: Seed_Shop_upvr (copied, readonly)
				[2]: TutorialUtils_upvr (copied, readonly)
				[3]: var30_upvw (read and write)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			Seed_Shop_upvr.Frame.ScrollingFrame.ScrollingEnabled = false
			local function _() -- Line 168
				--[[ Upvalues[1]:
					[1]: Seed_Shop_upvr (copied, readonly)
				]]
				local Carrot_3 = Seed_Shop_upvr.Frame.ScrollingFrame:FindFirstChild("Carrot")
				if not Carrot_3 then
					return nil
				end
				local Sheckles_Buy = Carrot_3.Frame.Sheckles_Buy
				return {
					Position = Sheckles_Buy.AbsolutePosition;
					Size = Sheckles_Buy.AbsoluteSize;
				}
			end
			local any_pointToUI_result1_upvw = TutorialUtils_upvr.pointToUI(function() -- Line 158
				--[[ Upvalues[1]:
					[1]: Seed_Shop_upvr (copied, readonly)
				]]
				local Carrot_6 = Seed_Shop_upvr.Frame.ScrollingFrame:FindFirstChild("Carrot")
				if not Carrot_6 then
					return nil
				end
				local Sheckles_Buy_2 = Carrot_6.Frame.Sheckles_Buy
				return Sheckles_Buy_2.AbsolutePosition + Sheckles_Buy_2.AbsoluteSize * 0.5
			end)
			local function _() -- Line 181
				--[[ Upvalues[3]:
					[1]: Seed_Shop_upvr (copied, readonly)
					[2]: any_pointToUI_result1_upvw (read and write)
					[3]: TutorialUtils_upvr (copied, readonly)
				]]
				if not Seed_Shop_upvr.Enabled then
					any_pointToUI_result1_upvw()
				else
					any_pointToUI_result1_upvw = TutorialUtils_upvr.pointToUI(function() -- Line 185
						--[[ Upvalues[1]:
							[1]: Seed_Shop_upvr (copied, readonly)
						]]
						local Carrot_7 = Seed_Shop_upvr.Frame.ScrollingFrame:FindFirstChild("Carrot")
						if not Carrot_7 then
							return nil
						end
						local Sheckles_Buy_3 = Carrot_7.Frame.Sheckles_Buy
						return Sheckles_Buy_3.AbsolutePosition + Sheckles_Buy_3.AbsoluteSize * 0.5
					end)
				end
			end
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [66] 49. Error Block 6 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [66] 49. Error Block 6 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [32] 26. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [66.3]
			-- KONSTANTERROR: [32] 26. Error Block 2 end (CF ANALYSIS FAILED)
		end
		var30_upvw()
		Seed_Shop_upvr.Frame.ScrollingFrame.ScrollingEnabled = true
		workspace:SetAttribute("InTutorialShopMovement", true)
		var29 = Seed_Shop_upvr
		while Seed_Shop_upvr.Enabled do
			task.wait()
		end
		local var60
		TutorialUtils_upvr.focusObject(var29.Frame.Frame.ExitButton)()
		TutorialUtils_upvr.pointToUI(function() -- Line 230
			--[[ Upvalues[1]:
				[1]: Seed_Shop_upvr (copied, readonly)
			]]
			local ExitButton = Seed_Shop_upvr.Frame.Frame.ExitButton
			return ExitButton.AbsolutePosition + ExitButton.AbsoluteSize * 0.5
		end)()
		var29 = any_waitForFarm_result1.Spawn_Point
		var29 = CFrame.new(0, 0, -10)
		local Position = (var29.CFrame * var29).Position
		var29 = TutorialUtils_upvr
		var29 = Position
		var29.waitUntilDistance(var29, 10)
		local var62_upvw
		if DeviceController_upvr:GetCurrentDevice() ~= "Gamepad" then
			var29 = false
		else
			var29 = true
		end
		if var29 then
			if LocalPlayer_upvr.Backpack:FindFirstChild("Shovel [Destroy Plants]") == nil then
			else
			end
			if true then
				pcall(function() -- Line 254
					--[[ Upvalues[2]:
						[1]: var62_upvw (read and write)
						[2]: UserInputService_upvr (copied, readonly)
					]]
					var62_upvw = UserInputService_upvr:GetImageForKeyCode(Enum.KeyCode.ButtonL1)
				end)
			else
				pcall(function() -- Line 258
					--[[ Upvalues[2]:
						[1]: var62_upvw (read and write)
						[2]: UserInputService_upvr (copied, readonly)
					]]
					var62_upvw = UserInputService_upvr:GetImageForKeyCode(Enum.KeyCode.ButtonR1)
				end)
			end
		end
		local var70 = var62_upvw
		TutorialUtils_upvr.waitUntilSeedEquipped()
		TutorialUtils_upvr.pointToUI(function(arg1) -- Line 264
			--[[ Upvalues[2]:
				[1]: PlayerGui_upvr (copied, readonly)
				[2]: var62_upvw (read and write)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 22 start (CF ANALYSIS FAILED)
			local var67 = PlayerGui_upvr:FindFirstChild("BackpackGui")
			if var67 then
				var67 = PlayerGui_upvr:FindFirstChild("BackpackGui"):FindFirstChild("Backpack")
			end
			local var68 = var67
			if var68 then
				var68 = var67:FindFirstChild("Hotbar")
			end
			if not var68 then
				return nil
			end
			local const_number = 1
			-- KONSTANTERROR: [0] 1. Error Block 22 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [45] 38. Error Block 11 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [45] 38. Error Block 11 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [25] 23. Error Block 8 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [45.8]
			-- KONSTANTERROR: [25] 23. Error Block 8 end (CF ANALYSIS FAILED)
		end, nil, nil, var70)()
		createArrow_upvr(Position)()
		local var71_upvw = "R2"
		pcall(function() -- Line 299
			--[[ Upvalues[2]:
				[1]: var71_upvw (read and write)
				[2]: UserInputService_upvr (copied, readonly)
			]]
			var71_upvw = string.gsub(UserInputService_upvr:GetStringForKeyCode(Enum.KeyCode.ButtonR2), "Button", "")
		end)
		if var29 then
			var70 = `Press {var71_upvw} on your plot to plant!`
		else
			var70 = "Click on your plot to plant!"
		end
		Notification_upvr:CreateNotification(var70)
		local clone_upvr = ReplicatedStorage_upvr.Tutorial_Parts.Tutorial_Click:Clone()
		clone_upvr.Size = Vector3.new(0.00100, 0.00100, 0.00100)
		clone_upvr.Position = (any_waitForFarm_result1.Spawn_Point.CFrame * CFrame.new(15, -5, -15)).Position
		if var29 then
			pcall(function() -- Line 310
				--[[ Upvalues[2]:
					[1]: clone_upvr (readonly)
					[2]: UserInputService_upvr (copied, readonly)
				]]
				clone_upvr.BillboardGui.Size = UDim2.fromScale(1.5, 1.5)
				clone_upvr.BillboardGui.ImageLabel.Image = UserInputService_upvr:GetImageForKeyCode(Enum.KeyCode.ButtonR2)
			end)
		end
		clone_upvr.Parent = workspace.Click_Points
		while #any_waitForFarm_result1.Important.Plants_Physical:GetChildren() <= 0 do
			task.wait()
		end
		clone_upvr:Destroy()
		Notification_upvr:CreateNotification("Wait for your plant to grow then Collect it")
		local children, NONE, NONE_2 = any_waitForFarm_result1.Important.Plants_Physical:GetChildren()
		-- KONSTANTERROR: [0] 1. Error Block 105 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [324] 244. Error Block 43 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [324] 244. Error Block 43 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [267] 203. Error Block 127 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		if -15 and -15 then
			repeat
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if not -15 then break end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			until -15
			repeat
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if not -15 then break end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [324.21]
			until -15 >= nil
			Notification_upvr:CreateNotification("Collect your plant!")
			TutorialUtils_upvr.waitUntilSellableItem()
			createArrow_upvr(nil:GetPivot().Position)()
			TutorialUtils_upvr.waitUntilDistance(workspace.Tutorial_Points.Tutorial_Point_2.Position, 5)
			createArrow_upvr(workspace.Tutorial_Points.Tutorial_Point_2.Position)()
			Notification_upvr:CreateNotification("Talk to Steven!")
			-- KONSTANTWARNING: GOTO [375] #280
		end
		-- KONSTANTERROR: [267] 203. Error Block 127 end (CF ANALYSIS FAILED)
	end))
	return any_new_result1_upvr:WrapClean()
end