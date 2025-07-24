-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:06
-- Luau version 6, Types version 3
-- Time taken: 0.006182 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local RunService_upvr = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local GearHover_UI_upvr = PlayerGui:WaitForChild("GearHover_UI")
local Frame_upvr_2 = GearHover_UI_upvr:WaitForChild("Frame")
GearHover_UI_upvr.Frame.Visible = false
local var11_upvw
local var12_upvw
local var13_upvw
local var14_upvw = false
local var15_upvw = 0
local tbl_upvr = {
	["Lightning Rod"] = Vector3.new(70, 0.10000, 70);
	["Nectar Staff"] = Vector3.new(40, 0.10000, 40);
	["Star Caller"] = Vector3.new(70, 0.10000, 70);
	["Night Staff"] = Vector3.new(0, 0, 0);
	["Tanning Mirror"] = Vector3.new(40, 0.10000, 40);
}
for i, v in require(game:GetService("ReplicatedStorage").Data.SprinklerData).SprinklerBoxSizes do
	tbl_upvr[i] = Vector3.new(v.X, 0.1, v.Z)
end
local function _(arg1) -- Line 42, Named "formatTime"
	return string.format("%d:%02d", math.floor(arg1 / 60), math.floor(arg1 % 60))
end
local function _() -- Line 48, Named "updateUIPosition"
	--[[ Upvalues[2]:
		[1]: UserInputService_upvr (readonly)
		[2]: GearHover_UI_upvr (readonly)
	]]
	local any_GetMouseLocation_result1 = UserInputService_upvr:GetMouseLocation()
	GearHover_UI_upvr.Frame.Position = UDim2.new(0, any_GetMouseLocation_result1.X + 20, 0, any_GetMouseLocation_result1.Y + 10)
end
local function getTaggedModel_upvr(arg1) -- Line 53, Named "getTaggedModel"
	local class_Model = arg1:FindFirstAncestorOfClass("Model")
	while class_Model do
		if class_Model:HasTag("Sprinkler") or class_Model:HasTag("LightningRod") or class_Model:HasTag("NightStaff") or class_Model:HasTag("StarCaller") or class_Model:HasTag("NectarStaff") or class_Model:HasTag("TanningMirror") then
			return class_Model
		end
	end
	return nil
end
local Range_upvr = script.Range
local GearName_upvr = Frame_upvr_2:WaitForChild("GearName")
local GearInfo_upvr = Frame_upvr_2:WaitForChild("GearInfo")
local function updateTimeDisplay_upvr(arg1) -- Line 85, Named "updateTimeDisplay"
	--[[ Upvalues[8]:
		[1]: var11_upvw (read and write)
		[2]: var12_upvw (read and write)
		[3]: var13_upvw (read and write)
		[4]: Range_upvr (readonly)
		[5]: tbl_upvr (readonly)
		[6]: GearName_upvr (readonly)
		[7]: GearInfo_upvr (readonly)
		[8]: RunService_upvr (readonly)
	]]
	local var22
	if var11_upvw == arg1 then
	else
		if var12_upvw then
			var12_upvw:Disconnect()
			var12_upvw = nil
		end
		var11_upvw = nil
		if var13_upvw then
			var13_upvw:Destroy()
			var13_upvw = nil
		end
		var11_upvw = arg1
		local Name = arg1.Name
		var22 = nil
		if Name == "ServerLightningRod" then return end
		if arg1:HasTag("Sprinkler") then
			var22 = ""
		elseif arg1:HasTag("LightningRod") then
			var22 = ""
		elseif arg1:HasTag("NightStaff") then
			var22 = ""
		elseif arg1:HasTag("NectarStaff") then
			var22 = ""
		elseif arg1:HasTag("StarCaller") then
			var22 = ""
		elseif arg1:HasTag("TanningMirror") then
			var22 = ""
		end
		if not var22 then return end
		if var13_upvw then
			var13_upvw:Destroy()
		end
		var13_upvw = Range_upvr:Clone()
		local Visuals = workspace.Visuals
		if not Visuals then
			Visuals = workspace
		end
		var13_upvw.Parent = Visuals
		var13_upvw.Size = tbl_upvr[arg1.Name]
		if arg1.PrimaryPart then
			local PrimaryPart = arg1.PrimaryPart
			var13_upvw.CFrame = CFrame.new(Vector3.new(PrimaryPart.Position.X, PrimaryPart.Position.Y - PrimaryPart.Size.Y / 2 + 0.05, PrimaryPart.Position.Z))
			var13_upvw.CanQuery = false
		end
		GearName_upvr.Text = Name
		local function updateInfo() -- Line 130
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: GearInfo_upvr (copied, readonly)
			]]
			if arg1:HasTag("Sprinkler") then
				local var26 = arg1:GetAttribute("Lifetime") or 0
				GearInfo_upvr.Text = string.format("%02d:%02d", math.floor(var26 / 60), var26 % 60)
			else
				if arg1:HasTag("LightningRod") then
					local var27 = "Uses"
					local attribute_2 = arg1:GetAttribute(var27)
					if attribute_2 then
						if attribute_2 == 1 then
							var27 = "1 Redirect Left"
						else
							var27 = string.format("%d Redirects Left", attribute_2)
						end
						GearInfo_upvr.Text = var27
					else
						GearInfo_upvr.Text = ""
					end
				end
				if arg1:HasTag("NightStaff") then
					local var29 = "Uses"
					local attribute_4 = arg1:GetAttribute(var29)
					if attribute_4 then
						if attribute_4 == 1 then
							var29 = "1 Channel Left"
						else
							var29 = string.format("%d Channels Left", attribute_4)
						end
						GearInfo_upvr.Text = var29
					else
						GearInfo_upvr.Text = ""
					end
				end
				if arg1:HasTag("NectarStaff") then
					local var31 = "Uses"
					local attribute_5 = arg1:GetAttribute(var31)
					if attribute_5 then
						if attribute_5 == 1 then
							var31 = "1 Attraction Left"
						else
							var31 = string.format("%d Attractions Left", attribute_5)
						end
						GearInfo_upvr.Text = var31
					else
						GearInfo_upvr.Text = ""
					end
				end
				if arg1:HasTag("StarCaller") then
					local var33 = "Uses"
					local attribute = arg1:GetAttribute(var33)
					if attribute then
						if attribute == 1 then
							var33 = "1 Call Left"
						else
							var33 = string.format("%d Calls Left", attribute)
						end
						GearInfo_upvr.Text = var33
					else
						GearInfo_upvr.Text = ""
					end
				end
				if arg1:HasTag("TanningMirror") then
					local var35 = "Uses"
					local attribute_3 = arg1:GetAttribute(var35)
					if attribute_3 then
						if attribute_3 == 1 then
							var35 = "1 Reflect Left"
						else
							var35 = string.format("%d Reflects Left", attribute_3)
						end
						GearInfo_upvr.Text = var35
						return
					end
					GearInfo_upvr.Text = ""
				end
			end
		end
		updateInfo()
		var12_upvw = RunService_upvr.Heartbeat:Connect(updateInfo)
	end
end
local Frame_upvr = PlayerGui:WaitForChild("PlantHover_UI"):WaitForChild("Frame")
local mouse_upvr = LocalPlayer:GetMouse()
local function onMouseHover_upvr() -- Line 195, Named "onMouseHover"
	--[[ Upvalues[10]:
		[1]: Frame_upvr (readonly)
		[2]: Frame_upvr_2 (readonly)
		[3]: var12_upvw (read and write)
		[4]: var11_upvw (read and write)
		[5]: var13_upvw (read and write)
		[6]: mouse_upvr (readonly)
		[7]: getTaggedModel_upvr (readonly)
		[8]: updateTimeDisplay_upvr (readonly)
		[9]: UserInputService_upvr (readonly)
		[10]: GearHover_UI_upvr (readonly)
	]]
	if Frame_upvr.Visible then
		Frame_upvr_2.Visible = false
		if var12_upvw then
			var12_upvw:Disconnect()
			var12_upvw = nil
		end
		var11_upvw = nil
		if var13_upvw then
			var13_upvw:Destroy()
			var13_upvw = nil
		end
	else
		local Target = mouse_upvr.Target
		if Target then
			local getTaggedModel_result1 = getTaggedModel_upvr(Target)
			if getTaggedModel_result1 then
				updateTimeDisplay_upvr(getTaggedModel_result1)
				Frame_upvr_2.Visible = true
				local any_GetMouseLocation_result1_2 = UserInputService_upvr:GetMouseLocation()
				GearHover_UI_upvr.Frame.Position = UDim2.new(0, any_GetMouseLocation_result1_2.X + 20, 0, any_GetMouseLocation_result1_2.Y + 10)
			else
				if var12_upvw then
					var12_upvw:Disconnect()
					var12_upvw = nil
				end
				var11_upvw = nil
				if var13_upvw then
					var13_upvw:Destroy()
					var13_upvw = nil
				end
				Frame_upvr_2.Visible = false
			end
		end
		if var12_upvw then
			var12_upvw:Disconnect()
			var12_upvw = nil
		end
		var11_upvw = nil
		if var13_upvw then
			var13_upvw:Destroy()
			var13_upvw = nil
		end
		Frame_upvr_2.Visible = false
	end
end
UserInputService_upvr.TouchStarted:Connect(function(arg1, arg2) -- Line 222
	--[[ Upvalues[2]:
		[1]: var14_upvw (read and write)
		[2]: var15_upvw (read and write)
	]]
	if arg2 then
	else
		var14_upvw = true
		var15_upvw = tick()
	end
end)
UserInputService_upvr.TouchEnded:Connect(function() -- Line 228
	--[[ Upvalues[5]:
		[1]: var14_upvw (read and write)
		[2]: var12_upvw (read and write)
		[3]: var11_upvw (read and write)
		[4]: var13_upvw (read and write)
		[5]: Frame_upvr_2 (readonly)
	]]
	var14_upvw = false
	if var12_upvw then
		var12_upvw:Disconnect()
		var12_upvw = nil
	end
	var11_upvw = nil
	if var13_upvw then
		var13_upvw:Destroy()
		var13_upvw = nil
	end
	Frame_upvr_2.Visible = false
end)
UserInputService_upvr.InputChanged:Connect(function(arg1) -- Line 235
	--[[ Upvalues[1]:
		[1]: onMouseHover_upvr (readonly)
	]]
	if arg1.UserInputType == Enum.UserInputType.MouseMovement then
		onMouseHover_upvr()
	end
end)
RunService_upvr.Heartbeat:Connect(function() -- Line 241
	--[[ Upvalues[6]:
		[1]: Frame_upvr_2 (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: GearHover_UI_upvr (readonly)
		[4]: var14_upvw (read and write)
		[5]: var15_upvw (read and write)
		[6]: onMouseHover_upvr (readonly)
	]]
	if Frame_upvr_2.Visible then
		local any_GetMouseLocation_result1_3 = UserInputService_upvr:GetMouseLocation()
		GearHover_UI_upvr.Frame.Position = UDim2.new(0, any_GetMouseLocation_result1_3.X + 20, 0, any_GetMouseLocation_result1_3.Y + 10)
	end
	if var14_upvw and 0.5 <= tick() - var15_upvw then
		onMouseHover_upvr()
	end
	if UserInputService_upvr.GamepadEnabled then
		onMouseHover_upvr()
	end
end)
LocalPlayer.CharacterRemoving:Connect(function() -- Line 72, Named "stopTimeUpdates"
	--[[ Upvalues[3]:
		[1]: var12_upvw (read and write)
		[2]: var11_upvw (read and write)
		[3]: var13_upvw (read and write)
	]]
	if var12_upvw then
		var12_upvw:Disconnect()
		var12_upvw = nil
	end
	var11_upvw = nil
	if var13_upvw then
		var13_upvw:Destroy()
		var13_upvw = nil
	end
end)