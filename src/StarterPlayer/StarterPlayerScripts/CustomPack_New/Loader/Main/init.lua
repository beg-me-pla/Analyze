-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:10
-- Luau version 6, Types version 3
-- Time taken: 0.087942 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local var21_upvw
local var22_upvw = "All"
local ReplicatedStorage_2 = game:GetService("ReplicatedStorage")
local CategoryList = require(ReplicatedStorage_2.Data.CategoryList)
local InventoryServiceEnums_upvr = require(ReplicatedStorage_2.Data.EnumRegistry.InventoryServiceEnums)
local ItemTypeEnums_upvr = require(ReplicatedStorage_2.Data.EnumRegistry.ItemTypeEnums)
local var27_upvw
if not game:GetService("GuiService"):IsTenFootInterface() then
end
for _, v in CategoryList do
	({})[v.Name] = v
	local var29_upvr
end
local function IsOfCategory_upvr(arg1) -- Line 35, Named "IsOfCategory"
	--[[ Upvalues[4]:
		[1]: var22_upvw (read and write)
		[2]: var29_upvr (readonly)
		[3]: InventoryServiceEnums_upvr (readonly)
		[4]: ItemTypeEnums_upvr (readonly)
	]]
	if not arg1 then
		return false
	end
	if var22_upvw == "All" then
		return true
	end
	local var32 = var29_upvr[var22_upvw]
	if not var32 then
		return false
	end
	for _, v_2 in var32.Tags do
		if arg1:GetAttribute(InventoryServiceEnums_upvr.ITEM_TYPE) == ItemTypeEnums_upvr[v_2] or arg1:GetAttribute("ItemType") == v_2 then
			return true
		end
	end
	return false
end
local function GetCategory_upvr(arg1) -- Line 65, Named "GetCategory"
	--[[ Upvalues[3]:
		[1]: var29_upvr (readonly)
		[2]: InventoryServiceEnums_upvr (readonly)
		[3]: ItemTypeEnums_upvr (readonly)
	]]
	for i_3, v_3 in var29_upvr do
		for _, v_4 in v_3 do
			if arg1:GetAttribute(InventoryServiceEnums_upvr.ITEM_TYPE) == ItemTypeEnums_upvr[i_3] or arg1:GetAttribute("ItemType") == v_4 then
				return i_3
			end
		end
	end
	return "All"
end
local module_upvr_2 = {
	OpenClose = nil;
	IsOpen = false;
	StateChanged = Instance.new("BindableEvent");
	ModuleName = "Backpack";
	KeepVRTopbarOpen = true;
	VRIsExclusive = true;
	VRClosesNonExclusive = true;
}
local BackgroundColor_upvr = script:GetAttribute("BackgroundColor")
local tbl_6 = {Enum.KeyCode.Backquote}
local Api = script:WaitForChild("Api")
Api.Parent = game.ReplicatedStorage
local Favorite_Item_upvr = game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Favorite_Item")
local var42_upvw
local var43_upvw = true
local Value_upvr_2 = Enum.KeyCode.Backspace.Value
local tbl_2_upvr = {
	[Enum.UserInputType.Gamepad1] = true;
	[Enum.UserInputType.Gamepad2] = true;
	[Enum.UserInputType.Gamepad3] = true;
	[Enum.UserInputType.Gamepad4] = true;
	[Enum.UserInputType.Gamepad5] = true;
	[Enum.UserInputType.Gamepad6] = true;
	[Enum.UserInputType.Gamepad7] = true;
	[Enum.UserInputType.Gamepad8] = true;
}
local UserInputService_upvr = game:GetService("UserInputService")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local StarterGui_upvr = game:GetService("StarterGui")
local GuiService_upvr = game:GetService("GuiService")
local ScreenGui_2 = Instance.new("ScreenGui", Players.LocalPlayer.PlayerGui)
ScreenGui_2.DisplayOrder = 120
ScreenGui_2.IgnoreGuiInset = true
ScreenGui_2.ResetOnSpawn = false
ScreenGui_2.Name = "BackpackGui"
local ContextActionService_upvr = game:GetService("ContextActionService")
local VRService_upvr = game:GetService("VRService")
local Utility_upvr = require(script.Utility)
local any_IsTenFootInterface_result1_upvr = GuiService_upvr:IsTenFootInterface()
if any_IsTenFootInterface_result1_upvr then
	local var59_upvw = 100
end
local var60_upvw = false
local TouchEnabled = UserInputService_upvr.TouchEnabled
if TouchEnabled then
	if (function() -- Line 148
		local ScreenGui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
		local Frame = Instance.new("Frame", ScreenGui)
		Frame.BackgroundTransparency = 1
		Frame.Size = UDim2.new(1, 0, 1, 0)
		ScreenGui:Destroy()
		return Frame.AbsoluteSize
	end)().X >= 1024 then
		TouchEnabled = false
	else
		TouchEnabled = true
	end
end
local LocalPlayer_upvw = Players.LocalPlayer
local var63_upvw
local var64_upvw
local var65_upvw
local var66_upvw
local var67_upvw
local var68_upvw
var27_upvw = LocalPlayer_upvw.Character
if not var27_upvw then
	var27_upvw = LocalPlayer_upvw.CharacterAdded:Wait()
end
local class_Humanoid_upvw = var27_upvw:FindFirstChildOfClass("Humanoid")
local Backpack_upvw = LocalPlayer_upvw:WaitForChild("Backpack")
local any_new_result1_upvr = require(ReplicatedStorage.Modules.Icon).new()
any_new_result1_upvr:setImage("rbxasset://textures/ui/TopBar/inventoryOff.png", "deselected")
any_new_result1_upvr:setImage("rbxasset://textures/ui/TopBar/inventoryOn.png", "selected")
any_new_result1_upvr:bindToggleKey(tbl_6[1], tbl_6[2])
any_new_result1_upvr:setName("InventoryIcon")
any_new_result1_upvr:setImageScale(1.12)
any_new_result1_upvr:setOrder(-5)
any_new_result1_upvr:setCaption("Toggle the backpack.")
any_new_result1_upvr.deselectWhenOtherIconSelected = false
local tbl_8_upvr = {}
local var73_upvw
local tbl_12_upvr = {}
local tbl_7_upvr = {}
local tbl_10_upvr = {}
local var77_upvw = 0
local var78_upvw = false
local var79_upvw = false
local var80_upvw = false
local var81_upvw = false
local var82_upvw = 0
local VREnabled_upvr = VRService_upvr.VREnabled
if not VREnabled_upvr or not script:GetAttribute("EmptySlots") then
	if TouchEnabled then
		local _ = 5
	else
	end
end
if VREnabled_upvr then
elseif TouchEnabled then
else
end
local var85_upvw
local function _(arg1) -- Line 253, Named "EvaluateBackpackPanelVisibility"
	--[[ Upvalues[3]:
		[1]: any_new_result1_upvr (readonly)
		[2]: var43_upvw (read and write)
		[3]: VRService_upvr (readonly)
	]]
	local var88 = arg1
	if var88 then
		var88 = any_new_result1_upvr.enabled
		if var88 then
			var88 = var43_upvw
			if var88 then
				var88 = VRService_upvr.VREnabled
			end
		end
	end
	return var88
end
local function _() -- Line 257, Named "ShowVRBackpackPopup"
end
local var89_upvw = 24
local function NewGui_upvr(arg1, arg2) -- Line 263, Named "NewGui"
	--[[ Upvalues[1]:
		[1]: var89_upvw (read and write)
	]]
	local any_2 = Instance.new(arg1)
	any_2.Name = arg2
	any_2.BackgroundColor3 = Color3.new(0, 0, 0)
	any_2.BackgroundTransparency = 1
	any_2.BorderColor3 = Color3.new(0, 0, 0)
	any_2.BorderSizePixel = 0
	any_2.Size = UDim2.new(1, 0, 1, 0)
	if arg1:match("Text") then
		any_2.TextColor3 = Color3.new(1, 1, 1)
		any_2.Text = ""
		any_2.FontFace = script:GetAttribute("LabelFont")
		any_2.TextSize = var89_upvw
		any_2.TextWrapped = true
		if arg1 == "TextButton" then
			any_2.FontFace = script:GetAttribute("SlotFont")
		end
	end
	return any_2
end
local FullSlots_upvr = script:GetAttribute("FullSlots")
local function _() -- Line 284, Named "FindLowestEmpty"
	--[[ Upvalues[2]:
		[1]: FullSlots_upvr (readonly)
		[2]: tbl_8_upvr (readonly)
	]]
	for i_5 = 1, FullSlots_upvr do
		local var94 = tbl_8_upvr[i_5]
		if not var94.Tool then
			return var94
		end
	end
	return nil
end
local function _() -- Line 294, Named "isInventoryEmpty"
	--[[ Upvalues[2]:
		[1]: FullSlots_upvr (readonly)
		[2]: tbl_8_upvr (readonly)
	]]
	for i_6 = FullSlots_upvr + 1, #tbl_8_upvr do
		local var96 = tbl_8_upvr[i_6]
		if var96 and var96.Tool then
			return false
		end
	end
	return true
end
local function _() -- Line 304, Named "UseGazeSelection"
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	return UserInputService_upvr.VREnabled
end
local function AdjustHotbarFrames_upvr() -- Line 308, Named "AdjustHotbarFrames"
	--[[ Upvalues[4]:
		[1]: var65_upvw (read and write)
		[2]: FullSlots_upvr (readonly)
		[3]: var77_upvw (read and write)
		[4]: tbl_8_upvr (readonly)
	]]
	local Visible = var65_upvw.Visible
	local var100
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var100 = FullSlots_upvr
		return var100
	end
	if not Visible or not INLINED() then
		var100 = var77_upvw
	end
	if 1 > var100 then
	else
	end
	for i_7 = 1, FullSlots_upvr do
		local var101 = tbl_8_upvr[i_7]
		if var101.Tool or Visible then
			var101:Readjust(0 + 1, var100)
			var101.Frame.Visible = true
		else
			var101.Frame.Visible = false
		end
	end
end
local function UpdateScrollingFrameCanvasSize_upvr() -- Line 326, Named "UpdateScrollingFrameCanvasSize"
	--[[ Upvalues[3]:
		[1]: var67_upvw (read and write)
		[2]: var59_upvw (read and write)
		[3]: var68_upvw (read and write)
	]]
	var67_upvw.CanvasSize = UDim2.new(0, 0, 0, math.ceil((#var68_upvw:GetChildren() - 1) / math.floor(var67_upvw.AbsoluteSize.X / (var59_upvw + 5))) * (var59_upvw + 5) + 5)
end
local function AdjustInventoryFrames_upvr() -- Line 333, Named "AdjustInventoryFrames"
	--[[ Upvalues[3]:
		[1]: FullSlots_upvr (readonly)
		[2]: tbl_8_upvr (readonly)
		[3]: UpdateScrollingFrameCanvasSize_upvr (readonly)
	]]
	for i_8 = FullSlots_upvr + 1, #tbl_8_upvr do
		local var104 = tbl_8_upvr[i_8]
		local Index = var104.Index
		var104.Frame.LayoutOrder = Index
		if var104.Tool == nil then
			Index = false
		else
			Index = true
		end
		var104.Frame.Visible = Index
	end
	UpdateScrollingFrameCanvasSize_upvr()
end
local const_number_upvr = 4
local function _(arg1, arg2, arg3) -- Line 376, Named "Clamp"
	return math.min(arg2, math.max(arg1, arg3))
end
local function _(arg1, arg2, arg3) -- Line 380, Named "CheckBounds"
	local AbsolutePosition_4 = arg1.AbsolutePosition
	local AbsoluteSize_2 = arg1.AbsoluteSize
	local var113 = false
	if AbsolutePosition_4.X < arg2 then
		var113 = false
		if arg2 <= AbsolutePosition_4.X + AbsoluteSize_2.X then
			var113 = false
			if AbsolutePosition_4.Y < arg3 then
				if arg3 > AbsolutePosition_4.Y + AbsoluteSize_2.Y then
					var113 = false
				else
					var113 = true
				end
			end
		end
	end
	return var113
end
local function _(arg1, arg2) -- Line 386, Named "GetOffset"
	return (arg1.AbsolutePosition + arg1.AbsoluteSize / 2 - arg2).magnitude
end
local function _() -- Line 391, Named "UnequipAllTools"
	--[[ Upvalues[1]:
		[1]: class_Humanoid_upvw (read and write)
	]]
	if class_Humanoid_upvw then
		class_Humanoid_upvw:UnequipTools()
	end
end
local function _(arg1) -- Line 397, Named "EquipNewTool"
	--[[ Upvalues[2]:
		[1]: class_Humanoid_upvw (read and write)
		[2]: var27_upvw (read and write)
	]]
	if class_Humanoid_upvw then
		class_Humanoid_upvw:UnequipTools()
	end
	arg1.Parent = var27_upvw
end
local function _(arg1) -- Line 403, Named "ToggleFavoriteTool"
	--[[ Upvalues[1]:
		[1]: Favorite_Item_upvr (readonly)
	]]
	local Tool_2 = arg1.Tool
	if not Tool_2 then
	else
		if workspace:GetAttribute("InTutorial") then return end
		Favorite_Item_upvr:FireServer(Tool_2)
	end
end
local function IsEquipped(arg1) -- Line 416
	--[[ Upvalues[1]:
		[1]: var27_upvw (read and write)
	]]
	local var115 = arg1
	if var115 then
		if arg1.Parent ~= var27_upvw then
			var115 = false
		else
			var115 = true
		end
	end
	return var115
end
local any_IsStudio_result1_upvr = game:GetService("RunService"):IsStudio()
local SlotLockedTransparency_upvr = script:GetAttribute("SlotLockedTransparency")
local DraggableColor_upvr = script:GetAttribute("DraggableColor")
local InventoryServiceEnums_upvr_2 = require(ReplicatedStorage.Data.EnumRegistry.InventoryServiceEnums)
local EquippedColor_upvr = script:GetAttribute("EquippedColor")
local var121_upvw
local BorderColor_upvr = script:GetAttribute("BorderColor")
local Value_upvr = Enum.KeyCode.Zero.Value
local var471_upvw
local var125_upvw
local function MakeSlot_upvr(arg1, arg2) -- Line 424, Named "MakeSlot"
	--[[ Upvalues[43]:
		[1]: tbl_8_upvr (readonly)
		[2]: any_IsStudio_result1_upvr (readonly)
		[3]: VRService_upvr (readonly)
		[4]: SlotLockedTransparency_upvr (readonly)
		[5]: DraggableColor_upvr (readonly)
		[6]: BackgroundColor_upvr (readonly)
		[7]: var64_upvw (read and write)
		[8]: var59_upvw (read and write)
		[9]: InventoryServiceEnums_upvr_2 (readonly)
		[10]: FullSlots_upvr (readonly)
		[11]: var65_upvw (read and write)
		[12]: UserInputService_upvr (readonly)
		[13]: var77_upvw (read and write)
		[14]: var78_upvw (read and write)
		[15]: var60_upvw (read and write)
		[16]: ContextActionService_upvr (readonly)
		[17]: tbl_12_upvr (readonly)
		[18]: var73_upvw (read and write)
		[19]: var27_upvw (read and write)
		[20]: var85_upvw (read and write)
		[21]: NewGui_upvr (readonly)
		[22]: EquippedColor_upvr (readonly)
		[23]: tbl_10_upvr (readonly)
		[24]: any_new_result1_upvr (readonly)
		[25]: var121_upvw (read and write)
		[26]: UpdateScrollingFrameCanvasSize_upvr (readonly)
		[27]: var42_upvw (read and write)
		[28]: class_Humanoid_upvw (read and write)
		[29]: Backpack_upvw (read and write)
		[30]: BorderColor_upvr (readonly)
		[31]: Favorite_Item_upvr (readonly)
		[32]: MakeSlot_upvr (readonly)
		[33]: var68_upvw (read and write)
		[34]: var80_upvw (read and write)
		[35]: tbl_7_upvr (readonly)
		[36]: Value_upvr (readonly)
		[37]: LocalPlayer_upvw (read and write)
		[38]: var22_upvw (read and write)
		[39]: GetCategory_upvr (readonly)
		[40]: var471_upvw (read and write)
		[41]: var125_upvw (read and write)
		[42]: var21_upvw (read and write)
		[43]: var67_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var274 = arg2
	if not var274 then
		var274 = #tbl_8_upvr + 1
	end
	local var275 = var274
	local module_upvr = {
		Tool = nil;
		Index = var275;
		Frame = nil;
	}
	local var277_upvw
	local var278_upvw
	local var279_upvw
	local var280_upvw
	local var281_upvw
	local var282_upvw
	local var283_upvw
	local var284_upvw
	local function _() -- Line 454, Named "IsDraggable"
		--[[ Upvalues[2]:
			[1]: any_IsStudio_result1_upvr (copied, readonly)
			[2]: var277_upvw (read and write)
		]]
		if any_IsStudio_result1_upvr then
			return var277_upvw:GetAttribute("Draggable")
		end
		return var277_upvw.Draggable
	end
	local function UpdateSlotFading_upvr() -- Line 464, Named "UpdateSlotFading"
		--[[ Upvalues[6]:
			[1]: VRService_upvr (copied, readonly)
			[2]: var277_upvw (read and write)
			[3]: any_IsStudio_result1_upvr (copied, readonly)
			[4]: SlotLockedTransparency_upvr (copied, readonly)
			[5]: DraggableColor_upvr (copied, readonly)
			[6]: BackgroundColor_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
		var277_upvw.SelectionImageObject = nil
		local var285
		if any_IsStudio_result1_upvr then
			var285 = var277_upvw:GetAttribute("Draggable")
		else
			var285 = var277_upvw.Draggable
		end
		if var285 then
		else
		end
		var277_upvw.BackgroundTransparency = SlotLockedTransparency_upvr
		if any_IsStudio_result1_upvr then
			var285 = var277_upvw:GetAttribute("Draggable")
		else
			var285 = var277_upvw.Draggable
		end
		-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [38] 32. Error Block 19 start (CF ANALYSIS FAILED)
		if not DraggableColor_upvr then
			-- KONSTANTERROR: [40] 34. Error Block 15 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [40] 34. Error Block 15 end (CF ANALYSIS FAILED)
		end
		var277_upvw.BackgroundColor3 = BackgroundColor_upvr
		-- KONSTANTERROR: [38] 32. Error Block 19 end (CF ANALYSIS FAILED)
	end
	function module_upvr.Readjust(arg1_27, arg2_13, arg3) -- Line 491
		--[[ Upvalues[3]:
			[1]: var64_upvw (copied, read and write)
			[2]: var59_upvw (copied, read and write)
			[3]: var277_upvw (read and write)
		]]
		var277_upvw.Position = UDim2.new(0, var64_upvw.Size.X.Offset / 2 - var59_upvw / 2 + (var59_upvw + 5) * ((arg2_13) - (arg3 / 2 + 0.5)), 0, 5)
	end
	function module_upvr.Fill(arg1_28, arg2_14) -- Line 499
		--[[ Upvalues[19]:
			[1]: var282_upvw (read and write)
			[2]: InventoryServiceEnums_upvr_2 (copied, readonly)
			[3]: module_upvr (readonly)
			[4]: var279_upvw (read and write)
			[5]: var280_upvw (read and write)
			[6]: var284_upvw (read and write)
			[7]: var281_upvw (read and write)
			[8]: FullSlots_upvr (copied, readonly)
			[9]: var65_upvw (copied, read and write)
			[10]: UserInputService_upvr (copied, readonly)
			[11]: any_IsStudio_result1_upvr (copied, readonly)
			[12]: var277_upvw (read and write)
			[13]: var77_upvw (copied, read and write)
			[14]: var78_upvw (copied, read and write)
			[15]: var60_upvw (copied, read and write)
			[16]: ContextActionService_upvr (copied, readonly)
			[17]: tbl_12_upvr (copied, readonly)
			[18]: var73_upvw (copied, read and write)
			[19]: tbl_8_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 45 start (CF ANALYSIS FAILED)
		if var282_upvw then
			var282_upvw:Disconnect()
			var282_upvw = nil
		end
		if not arg2_14 then
			return arg1_28:Clear()
		end
		arg1_28.Tool = arg2_14
		var282_upvw = arg2_14:GetAttributeChangedSignal(InventoryServiceEnums_upvr_2.Favorite):Connect(function() -- Line 516
			--[[ Upvalues[3]:
				[1]: module_upvr (copied, readonly)
				[2]: arg2_14 (readonly)
				[3]: InventoryServiceEnums_upvr_2 (copied, readonly)
			]]
			module_upvr.Frame.FavIcon.Visible = arg2_14:GetAttribute(InventoryServiceEnums_upvr_2.Favorite)
		end)
		xpcall(function() -- Line 524
			--[[ Upvalues[3]:
				[1]: module_upvr (copied, readonly)
				[2]: arg2_14 (readonly)
				[3]: InventoryServiceEnums_upvr_2 (copied, readonly)
			]]
			module_upvr.Frame.FavIcon.Visible = arg2_14:GetAttribute(InventoryServiceEnums_upvr_2.Favorite)
		end, warn)
		local function assignToolData_upvr() -- Line 528, Named "assignToolData"
			--[[ Upvalues[4]:
				[1]: arg2_14 (readonly)
				[2]: var279_upvw (copied, read and write)
				[3]: var280_upvw (copied, read and write)
				[4]: var284_upvw (copied, read and write)
			]]
			local TextureId_3 = arg2_14.TextureId
			var279_upvw.Image = TextureId_3
			if TextureId_3 ~= "" then
				var280_upvw.Visible = false
			end
			if string.find(arg2_14.Name, "Strawberry") then
				var280_upvw.TextSize = 12
			end
			var280_upvw.Text = arg2_14.Name
			if var284_upvw then
				if arg2_14:IsA("Tool") then
					var284_upvw.Text = arg2_14.ToolTip
					local var289 = var284_upvw.TextBounds.X + 24
					var284_upvw.Size = UDim2.new(0, var289, 0, 24)
					var284_upvw.Position = UDim2.new(0.5, -var289 / 2, 0, -28)
				end
			end
		end
		assignToolData_upvr()
		if var281_upvw then
			var281_upvw:disconnect()
			var281_upvw = nil
		end
		local any_connect_result1_2 = arg2_14.Changed:connect(function(arg1_29) -- Line 578
			--[[ Upvalues[1]:
				[1]: assignToolData_upvr (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [2] 2. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [2] 2. Error Block 2 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [6] 4. Error Block 7 start (CF ANALYSIS FAILED)
			assignToolData_upvr()
			-- KONSTANTERROR: [6] 4. Error Block 7 end (CF ANALYSIS FAILED)
		end)
		var281_upvw = any_connect_result1_2
		if arg1_28.Index > FullSlots_upvr then
			any_connect_result1_2 = false
		else
			any_connect_result1_2 = true
		end
		if not any_connect_result1_2 or var65_upvw.Visible or not UserInputService_upvr.VREnabled then
			if any_IsStudio_result1_upvr then
				var277_upvw:SetAttribute("Draggable", true)
			else
				var277_upvw.Draggable = true
			end
		end
		arg1_28:UpdateEquipView()
		if any_connect_result1_2 then
			var77_upvw += 1
			if var78_upvw and 1 <= var77_upvw and not var60_upvw then
				var60_upvw = true
				ContextActionService_upvr:BindAction("RBXHotbarEquip", changeToolFunc, false, Enum.KeyCode.ButtonL1, Enum.KeyCode.ButtonR1)
			end
		end
		tbl_12_upvr[arg2_14] = arg1_28
		local _ = 1
		-- KONSTANTERROR: [0] 1. Error Block 45 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [132] 109. Error Block 27 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [132] 109. Error Block 27 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [125] 103. Error Block 36 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not Enum.KeyCode.ButtonL1 then
			-- KONSTANTWARNING: GOTO [134] #111
		end
		-- KONSTANTERROR: [125] 103. Error Block 36 end (CF ANALYSIS FAILED)
	end
	function module_upvr.Clear(arg1_30) -- Line 621
		--[[ Upvalues[14]:
			[1]: var281_upvw (read and write)
			[2]: var282_upvw (read and write)
			[3]: var279_upvw (read and write)
			[4]: var280_upvw (read and write)
			[5]: var284_upvw (read and write)
			[6]: any_IsStudio_result1_upvr (copied, readonly)
			[7]: var277_upvw (read and write)
			[8]: FullSlots_upvr (copied, readonly)
			[9]: var77_upvw (copied, read and write)
			[10]: var60_upvw (copied, read and write)
			[11]: ContextActionService_upvr (copied, readonly)
			[12]: tbl_12_upvr (copied, readonly)
			[13]: var73_upvw (copied, read and write)
			[14]: tbl_8_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 32 start (CF ANALYSIS FAILED)
		if not arg1_30.Tool then return end
		if var281_upvw then
			var281_upvw:disconnect()
			var281_upvw = nil
		end
		if var282_upvw then
			var282_upvw:disconnect()
			var282_upvw = nil
		end
		var279_upvw.Image = ""
		var280_upvw.Text = ""
		if var284_upvw then
			var284_upvw.Text = ""
			var284_upvw.Visible = false
		end
		if any_IsStudio_result1_upvr then
			var277_upvw:SetAttribute("Draggable", false)
		else
			var277_upvw.Draggable = false
		end
		var277_upvw.FavIcon.Visible = false
		arg1_30:UpdateEquipView(true)
		if arg1_30.Index <= FullSlots_upvr then
			var77_upvw -= 1
			if var77_upvw < 1 then
				var60_upvw = false
				ContextActionService_upvr:UnbindAction("RBXHotbarEquip")
			end
		end
		tbl_12_upvr[arg1_30.Tool] = nil
		arg1_30.Tool = nil
		local _ = 1
		-- KONSTANTERROR: [0] 1. Error Block 32 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [99] 81. Error Block 19 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [99] 81. Error Block 19 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [92] 75. Error Block 26 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [99.6]
		if not nil then
			-- KONSTANTWARNING: GOTO [101] #83
		end
		-- KONSTANTERROR: [92] 75. Error Block 26 end (CF ANALYSIS FAILED)
	end
	function module_upvr.UpdateEquipView(arg1_31, arg2_15) -- Line 668
		--[[ Upvalues[8]:
			[1]: var27_upvw (copied, read and write)
			[2]: var85_upvw (copied, read and write)
			[3]: module_upvr (readonly)
			[4]: var283_upvw (read and write)
			[5]: NewGui_upvr (copied, readonly)
			[6]: var277_upvw (read and write)
			[7]: EquippedColor_upvr (copied, readonly)
			[8]: UpdateSlotFading_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [1] 2. Error Block 22 start (CF ANALYSIS FAILED)
		local Tool_21 = arg1_31.Tool
		local var295 = Tool_21
		if var295 then
			if Tool_21.Parent ~= var27_upvw then
				var295 = false
			else
				var295 = true
			end
		end
		if var295 then
			var85_upvw = module_upvr
			if not var283_upvw then
				var283_upvw = NewGui_upvr("Frame", "Equipped")
				var283_upvw.ZIndex = var277_upvw.ZIndex
				local UICorner_3 = Instance.new("UICorner")
				UICorner_3.CornerRadius = script:GetAttribute("CornerRadius")
				UICorner_3.Parent = var283_upvw
				local UIStroke_2 = Instance.new("UIStroke")
				UIStroke_2.Color = EquippedColor_upvr
				UIStroke_2.Thickness = 3
				UIStroke_2.Parent = var283_upvw
			end
			var283_upvw.Parent = var277_upvw
		else
			-- KONSTANTERROR: [61] 47. Error Block 17 start (CF ANALYSIS FAILED)
			if var283_upvw then
				var283_upvw.Parent = nil
			end
			-- KONSTANTERROR: [61] 47. Error Block 17 end (CF ANALYSIS FAILED)
		end
		UpdateSlotFading_upvr()
		-- KONSTANTERROR: [1] 2. Error Block 22 end (CF ANALYSIS FAILED)
	end
	function module_upvr.IsEquipped(arg1_32) -- Line 694
		--[[ Upvalues[1]:
			[1]: var27_upvw (copied, read and write)
		]]
		local Tool_19 = arg1_32.Tool
		local var299 = Tool_19
		if var299 then
			if Tool_19.Parent ~= var27_upvw then
				var299 = false
			else
				var299 = true
			end
		end
		return var299
	end
	function module_upvr.Delete(arg1_33) -- Line 698
		--[[ Upvalues[6]:
			[1]: tbl_10_upvr (copied, readonly)
			[2]: var277_upvw (read and write)
			[3]: any_new_result1_upvr (copied, readonly)
			[4]: var121_upvw (copied, read and write)
			[5]: tbl_8_upvr (copied, readonly)
			[6]: UpdateScrollingFrameCanvasSize_upvr (copied, readonly)
		]]
		if tbl_10_upvr[var277_upvw] then
			tbl_10_upvr[var277_upvw] = nil
			any_new_result1_upvr:unlock()
			if var121_upvw then
				var121_upvw:Destroy()
			end
		end
		var277_upvw:Destroy()
		task.delay(0.5, function() -- Line 710
			--[[ Upvalues[2]:
				[1]: tbl_8_upvr (copied, readonly)
				[2]: arg1_33 (readonly)
			]]
			table.remove(tbl_8_upvr, arg1_33.Index)
			for i_9 = arg1_33.Index, #tbl_8_upvr do
				tbl_8_upvr[i_9]:SlideBack()
			end
		end)
		UpdateScrollingFrameCanvasSize_upvr()
	end
	function module_upvr.Swap(arg1_34, arg2_16) -- Line 723
		local Tool_15 = arg1_34.Tool
		local Tool_13 = arg2_16.Tool
		arg1_34:Clear()
		if Tool_13 then
			arg2_16:Clear()
			arg1_34:Fill(Tool_13)
		end
		if Tool_15 then
			arg2_16:Fill(Tool_15)
		else
			arg2_16:Clear()
		end
	end
	function module_upvr.SlideBack(arg1_35) -- Line 737
		--[[ Upvalues[1]:
			[1]: var277_upvw (read and write)
		]]
		arg1_35.Index -= 1
		var277_upvw.Name = arg1_35.Index
		var277_upvw.LayoutOrder = arg1_35.Index
	end
	local var304_upvw
	function module_upvr.TurnNumber(arg1_36, arg2_17) -- Line 743
		--[[ Upvalues[1]:
			[1]: var304_upvw (read and write)
		]]
		if var304_upvw then
			var304_upvw.Visible = arg2_17
		end
	end
	function module_upvr.SetClickability(arg1_37, arg2_18) -- Line 749
		--[[ Upvalues[4]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: any_IsStudio_result1_upvr (copied, readonly)
			[3]: var277_upvw (read and write)
			[4]: UpdateSlotFading_upvr (readonly)
		]]
		if arg1_37.Tool then
			if UserInputService_upvr.VREnabled then
				if any_IsStudio_result1_upvr then
					var277_upvw:SetAttribute("Draggable", false)
				else
					var277_upvw.Draggable = false
				end
			elseif any_IsStudio_result1_upvr then
				var277_upvw:SetAttribute("Draggable", not arg2_18)
			else
				var277_upvw.Draggable = not arg2_18
			end
			UpdateSlotFading_upvr()
		end
	end
	function module_upvr.CheckTerms(arg1_38, arg2_19) -- Line 772
		--[[ Upvalues[2]:
			[1]: var280_upvw (read and write)
			[2]: var284_upvw (read and write)
		]]
		local var307_upvw = 0
		local function _(arg1_39, arg2_20) -- Line 774, Named "checkEm"
			--[[ Upvalues[1]:
				[1]: var307_upvw (read and write)
			]]
			local _, any_gsub_result2_6 = arg1_39:lower():gsub(arg2_20, "")
			var307_upvw += any_gsub_result2_6
		end
		if arg1_38.Tool then
			for i_10 in pairs(arg2_19) do
				local _, any_gsub_result2 = var280_upvw.Text:lower():gsub(i_10, "")
				var307_upvw += any_gsub_result2
				local var316
				if var316 then
					local function INLINED_4() -- Internal function, doesn't exist in bytecode
						var316 = var284_upvw.Text
						return var316
					end
					if not var284_upvw or not INLINED_4() then
						var316 = ""
					end
					local _, any_gsub_result2_4 = var316:lower():gsub(i_10, "")
					var307_upvw += any_gsub_result2_4
				end
			end
		end
		return var307_upvw
	end
	function module_upvr.Select(arg1_40) -- Line 800
		--[[ Upvalues[5]:
			[1]: module_upvr (readonly)
			[2]: var42_upvw (copied, read and write)
			[3]: var27_upvw (copied, read and write)
			[4]: class_Humanoid_upvw (copied, read and write)
			[5]: Backpack_upvw (copied, read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local Tool_14 = module_upvr.Tool
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [15] 13. Error Block 7 start (CF ANALYSIS FAILED)
		var42_upvw = nil
		-- KONSTANTERROR: [15] 13. Error Block 7 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [24] 21. Error Block 16 start (CF ANALYSIS FAILED)
		if Tool_14.Parent == Backpack_upvw then
			if class_Humanoid_upvw then
				class_Humanoid_upvw:UnequipTools()
			end
			Tool_14.Parent = var27_upvw
		end
		-- KONSTANTERROR: [24] 21. Error Block 16 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [38] 31. Error Block 13 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [38] 31. Error Block 13 end (CF ANALYSIS FAILED)
	end
	var277_upvw = NewGui_upvr("TextButton", var275)
	local var320_upvw = var277_upvw
	local UIStroke_4_upvr = Instance.new("UIStroke")
	UIStroke_4_upvr.Parent = var320_upvw
	local UICorner_2 = Instance.new("UICorner")
	UICorner_2.CornerRadius = script:GetAttribute("CornerRadius")
	UICorner_2.Parent = var320_upvw
	UIStroke_4_upvr.Thickness = 0
	var320_upvw.BackgroundColor3 = BackgroundColor_upvr
	UIStroke_4_upvr.Color = BorderColor_upvr
	var320_upvw.Text = ""
	var320_upvw.AutoButtonColor = false
	var320_upvw.BorderSizePixel = 0
	var320_upvw.Size = UDim2.new(0, var59_upvw, 0, var59_upvw)
	var320_upvw.Active = true
	var320_upvw.Draggable = false
	if any_IsStudio_result1_upvr then
		var320_upvw:SetAttribute("Draggable", false)
	end
	var320_upvw.BackgroundTransparency = SlotLockedTransparency_upvr
	var320_upvw.MouseButton1Click:Connect(function() -- Line 852
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		changeSlot(module_upvr)
	end)
	if UserInputService_upvr.TouchEnabled then
		local var324 = var320_upvw
		local os_clock_result1_upvw = os.clock()
		var324.MouseButton1Click:Connect(function() -- Line 881
			--[[ Upvalues[3]:
				[1]: os_clock_result1_upvw (read and write)
				[2]: module_upvr (readonly)
				[3]: Favorite_Item_upvr (copied, readonly)
			]]
			if os_clock_result1_upvw + 0.25 < os.clock() then
				os_clock_result1_upvw = os.clock()
			else
				local Tool_7 = module_upvr.Tool
				if not Tool_7 then return end
				if workspace:GetAttribute("InTutorial") then return end
				Favorite_Item_upvr:FireServer(Tool_7)
			end
		end)
		var324.TouchLongPress:Connect(function(arg1_41, arg2_21, arg3) -- Line 890
			--[[ Upvalues[2]:
				[1]: module_upvr (readonly)
				[2]: Favorite_Item_upvr (copied, readonly)
			]]
			if arg2_21 == Enum.UserInputState.End then
				local Tool_5 = module_upvr.Tool
				if not Tool_5 then return end
				if workspace:GetAttribute("InTutorial") then return end
				Favorite_Item_upvr:FireServer(Tool_5)
			end
		end)
	else
		var320_upvw.MouseButton2Click:Connect(function() -- Line 896
			--[[ Upvalues[2]:
				[1]: module_upvr (readonly)
				[2]: Favorite_Item_upvr (copied, readonly)
			]]
			local Tool_6 = module_upvr.Tool
			if not Tool_6 then
			else
				if workspace:GetAttribute("InTutorial") then return end
				Favorite_Item_upvr:FireServer(Tool_6)
			end
		end)
	end
	module_upvr.Frame = var320_upvw
	local NewGui_result1_9 = NewGui_upvr("Frame", "SelectionObjectClipper")
	NewGui_result1_9.Visible = false
	NewGui_result1_9.Parent = var320_upvw
	local NewGui_result1_2 = NewGui_upvr("ImageLabel", "Selector")
	NewGui_result1_2.Size = UDim2.new(1, 0, 1, 0)
	NewGui_result1_2.Image = "rbxasset://textures/ui/Keyboard/key_selection_9slice.png"
	NewGui_result1_2.ScaleType = Enum.ScaleType.Slice
	NewGui_result1_2.SliceCenter = Rect.new(12, 12, 52, 52)
	NewGui_result1_2.Parent = NewGui_result1_9
	var279_upvw = NewGui_upvr("ImageLabel", "Icon")
	local var334_upvw = var279_upvw
	var334_upvw.Size = UDim2.new(0.8, 0, 0.8, 0)
	var334_upvw.Position = UDim2.new(0.1, 0, 0.1, 0)
	var334_upvw.Parent = var320_upvw
	local NewGui_upvr_result1 = NewGui_upvr("ImageLabel", "FavIcon")
	NewGui_upvr_result1.Size = UDim2.new(0.2, 0, 0.2, 0)
	NewGui_upvr_result1.Position = UDim2.new(0.8, 0, 0.8, 0)
	NewGui_upvr_result1.Parent = var320_upvw
	NewGui_upvr_result1.Visible = false
	NewGui_upvr_result1.Image = "rbxassetid://80131230547874"
	NewGui_upvr_result1.ImageColor3 = Color3.fromRGB(255, 0, 0)
	NewGui_upvr_result1.ZIndex = 10
	var280_upvw = NewGui_upvr("TextLabel", "ToolName")
	local var336_upvw = var280_upvw
	var336_upvw.Size = UDim2.new(1, -2, 1, -2)
	var336_upvw.Position = UDim2.new(0, 1, 0, 1)
	var336_upvw.Parent = var320_upvw
	module_upvr.Frame.LayoutOrder = module_upvr.Index
	local var337
	local function INLINED_5() -- Internal function, doesn't exist in bytecode
		function module_upvr.MoveToInventory(arg1_42) -- Line 961
			--[[ Upvalues[8]:
				[1]: module_upvr (readonly)
				[2]: FullSlots_upvr (copied, readonly)
				[3]: MakeSlot_upvr (copied, readonly)
				[4]: var68_upvw (copied, read and write)
				[5]: var27_upvw (copied, read and write)
				[6]: class_Humanoid_upvw (copied, read and write)
				[7]: var80_upvw (copied, read and write)
				[8]: var65_upvw (copied, read and write)
			]]
			if module_upvr.Index <= FullSlots_upvr then
				local Tool_4 = module_upvr.Tool
				arg1_42:Clear()
				local MakeSlot_upvr_result1_2 = MakeSlot_upvr(var68_upvw)
				MakeSlot_upvr_result1_2:Fill(Tool_4)
				local var344 = Tool_4
				if var344 then
					if Tool_4.Parent ~= var27_upvw then
						var344 = false
					else
						var344 = true
					end
				end
				if var344 then
					if class_Humanoid_upvw then
						class_Humanoid_upvw:UnequipTools()
					end
				end
				if var80_upvw then
					MakeSlot_upvr_result1_2.Frame.Visible = false
					MakeSlot_upvr_result1_2.Parent = var65_upvw
				end
			end
		end
		var320_upvw.MouseLeave:Connect(function() -- Line 957
			--[[ Upvalues[1]:
				[1]: var338_upvw (read and write)
			]]
			var338_upvw.Visible = false
		end)
		var320_upvw.MouseEnter:Connect(function() -- Line 952
			--[[ Upvalues[1]:
				[1]: var338_upvw (read and write)
			]]
			if var338_upvw.Text ~= "" then
				var338_upvw.Visible = true
			end
		end)
		UICorner_8.Parent = var338_upvw
		UICorner_8.CornerRadius = script:GetAttribute("CornerRadius")
		local UICorner_8 = Instance.new("UICorner")
		var338_upvw.Parent = var320_upvw
		var338_upvw.Visible = false
		var338_upvw.BackgroundTransparency = 0
		var338_upvw.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
		var338_upvw.TextYAlignment = Enum.TextYAlignment.Center
		var338_upvw.TextWrapped = false
		var338_upvw.FontFace = script:GetAttribute("ToolTipFont")
		var338_upvw.ZIndex = 2
		local var338_upvw = var284_upvw
		var284_upvw = NewGui_upvr("TextLabel", "ToolTip")
		return var275 < 10
	end
	if var275 <= FullSlots_upvr and (INLINED_5() or var275 == FullSlots_upvr) then
		if var275 >= 10 or not var275 then
			local var345 = 0
		end
		var304_upvw = NewGui_upvr("TextLabel", "Number")
		local var346_upvw = var304_upvw
		var346_upvw.Text = var345
		var346_upvw.Size = UDim2.new(0, 15, 0, 15)
		var346_upvw.Visible = false
		var346_upvw.Parent = var320_upvw
		tbl_7_upvr[Value_upvr + var345] = module_upvr.Select
	end
	local Position_upvw_2 = var320_upvw.Position
	local var348_upvw
	local var349_upvw
	local function onDragStart_upvr(arg1_43) -- Line 997, Named "onDragStart"
		--[[ Upvalues[18]:
			[1]: tbl_10_upvr (copied, readonly)
			[2]: var320_upvw (read and write)
			[3]: Position_upvw_2 (read and write)
			[4]: UIStroke_4_upvr (readonly)
			[5]: any_new_result1_upvr (copied, readonly)
			[6]: var349_upvw (read and write)
			[7]: module_upvr (readonly)
			[8]: LocalPlayer_upvw (copied, read and write)
			[9]: var278_upvw (read and write)
			[10]: var334_upvw (read and write)
			[11]: var336_upvw (read and write)
			[12]: var346_upvw (read and write)
			[13]: var283_upvw (read and write)
			[14]: var348_upvw (read and write)
			[15]: var68_upvw (copied, read and write)
			[16]: var65_upvw (copied, read and write)
			[17]: NewGui_upvr (copied, readonly)
			[18]: var121_upvw (copied, read and write)
		]]
		tbl_10_upvr[var320_upvw] = true
		Position_upvw_2 = arg1_43
		UIStroke_4_upvr.Thickness = 2
		any_new_result1_upvr:lock()
		if var349_upvw then
			var349_upvw:Disconnect()
			var349_upvw = nil
		end
		if module_upvr.Tool then
			var349_upvw = module_upvr.Tool.AncestryChanged:Connect(function(arg1_44, arg2_22) -- Line 1010
				--[[ Upvalues[4]:
					[1]: module_upvr (copied, readonly)
					[2]: var349_upvw (copied, read and write)
					[3]: LocalPlayer_upvw (copied, read and write)
					[4]: var278_upvw (copied, read and write)
				]]
				if not module_upvr.Tool or arg1_44 ~= module_upvr.Tool then
					if var349_upvw then
						var349_upvw:Disconnect()
						var349_upvw = nil
					end
				else
					local Parent_2 = module_upvr.Tool.Parent
					if Parent_2 ~= LocalPlayer_upvw.Backpack and Parent_2 ~= LocalPlayer_upvw.Character then
						if var278_upvw then
							var278_upvw:Destroy()
							var278_upvw = nil
						end
						if var349_upvw then
							var349_upvw:Disconnect()
							var349_upvw = nil
						end
					end
				end
			end)
		elseif var349_upvw then
			var349_upvw:Disconnect()
			var349_upvw = nil
		end
		var320_upvw.ZIndex = 2
		var334_upvw.ZIndex = 2
		var336_upvw.ZIndex = 2
		var320_upvw.Parent.ZIndex = 2
		if var346_upvw then
			var346_upvw.ZIndex = 2
		end
		if var283_upvw then
			var283_upvw.ZIndex = 2
			for _, v_5 in var283_upvw:GetChildren(), nil do
				if not v_5:IsA("UICorner") and not v_5:IsA("UIStroke") then
					v_5.ZIndex = 2
				end
			end
		end
		var348_upvw = var320_upvw.Parent
		if var348_upvw == var68_upvw then
			var320_upvw.Parent = var65_upvw
			var320_upvw.Position = UDim2.new(0, var320_upvw.AbsolutePosition.X - var65_upvw.AbsolutePosition.X, 0, var320_upvw.AbsolutePosition.Y - var65_upvw.AbsolutePosition.Y)
			var278_upvw = NewGui_upvr("Frame", "FakeSlot")
			var278_upvw.LayoutOrder = var320_upvw.LayoutOrder
			var278_upvw.Size = var320_upvw.Size
			var278_upvw.BackgroundTransparency = 1
			var278_upvw.Parent = var68_upvw
			var121_upvw = var278_upvw
		end
	end
	local const_number_upvw = 0
	local function onDragStop_upvr(arg1_45) -- Line 1079, Named "onDragStop"
		--[[ Upvalues[27]:
			[1]: tbl_10_upvr (copied, readonly)
			[2]: var320_upvw (read and write)
			[3]: var278_upvw (read and write)
			[4]: var349_upvw (read and write)
			[5]: Position_upvw_2 (read and write)
			[6]: var348_upvw (read and write)
			[7]: UIStroke_4_upvr (readonly)
			[8]: any_new_result1_upvr (copied, readonly)
			[9]: var334_upvw (read and write)
			[10]: var336_upvw (read and write)
			[11]: var346_upvw (read and write)
			[12]: var283_upvw (read and write)
			[13]: module_upvr (readonly)
			[14]: FullSlots_upvr (copied, readonly)
			[15]: var65_upvw (copied, read and write)
			[16]: var22_upvw (copied, read and write)
			[17]: GetCategory_upvr (copied, readonly)
			[18]: var471_upvw (copied, read and write)
			[19]: var125_upvw (copied, read and write)
			[20]: var21_upvw (copied, read and write)
			[21]: const_number_upvw (read and write)
			[22]: var73_upvw (copied, read and write)
			[23]: var64_upvw (copied, read and write)
			[24]: tbl_8_upvr (copied, readonly)
			[25]: var27_upvw (copied, read and write)
			[26]: class_Humanoid_upvw (copied, read and write)
			[27]: var80_upvw (copied, read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		tbl_10_upvr[var320_upvw] = nil
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 7. Error Block 2 start (CF ANALYSIS FAILED)
		var278_upvw:Destroy()
		var278_upvw = nil
		-- KONSTANTERROR: [6] 7. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 12. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 12. Error Block 3 end (CF ANALYSIS FAILED)
	end
	if any_IsStudio_result1_upvr then
		local var355_upvw
		local var356_upvw
		local function _(arg1_46) -- Line 1213, Named "updatePosition"
			--[[ Upvalues[3]:
				[1]: var356_upvw (read and write)
				[2]: var355_upvw (read and write)
				[3]: var320_upvw (read and write)
			]]
			local var357 = var356_upvw
			if var357 then
				var357 = var355_upvw
			end
			assert(var357)
			local var358 = arg1_46 - var355_upvw
			var320_upvw.Position = UDim2.new(var356_upvw.X.Scale, var356_upvw.X.Offset + var358.X, var356_upvw.Y.Scale, var356_upvw.Y.Offset + var358.Y)
		end
		local var360_upvw
		local var361_upvw
		local var362_upvw
		var320_upvw.InputBegan:Connect(function(arg1_47) -- Line 1225
			--[[ Upvalues[9]:
				[1]: var320_upvw (read and write)
				[2]: var360_upvw (read and write)
				[3]: UserInputService_upvr (copied, readonly)
				[4]: onDragStart_upvr (readonly)
				[5]: var361_upvw (read and write)
				[6]: var355_upvw (read and write)
				[7]: var356_upvw (read and write)
				[8]: var362_upvw (read and write)
				[9]: onDragStop_upvr (readonly)
			]]
			if not var320_upvw:GetAttribute("Draggable") then
			elseif arg1_47.UserInputType == Enum.UserInputType.MouseButton1 or arg1_47.UserInputType == Enum.UserInputType.Touch or arg1_47.KeyCode == Enum.KeyCode.ButtonA then
				var360_upvw = true
				local var367_upvw
				local any_Connect_result1_upvr = UserInputService_upvr.InputChanged:Connect(function(arg1_48) -- Line 1237
					--[[ Upvalues[7]:
						[1]: var360_upvw (copied, read and write)
						[2]: onDragStart_upvr (copied, readonly)
						[3]: var320_upvw (copied, read and write)
						[4]: var361_upvw (copied, read and write)
						[5]: var355_upvw (copied, read and write)
						[6]: UserInputService_upvr (copied, readonly)
						[7]: var356_upvw (copied, read and write)
					]]
					if var360_upvw then
						var360_upvw = false
						onDragStart_upvr(var320_upvw.Position)
						var361_upvw = true
						var355_upvw = UserInputService_upvr:GetMouseLocation()
						var356_upvw = var320_upvw.Position
					end
					if var361_upvw and (arg1_48.UserInputType == Enum.UserInputType.MouseMovement or arg1_48.UserInputType == Enum.UserInputType.Touch or string.find(arg1_48.UserInputType.Name, "Gamepad")) then
						local var364 = var356_upvw
						if var364 then
							var364 = var355_upvw
						end
						assert(var364)
						local var365 = UserInputService_upvr:GetMouseLocation() - var355_upvw
						var320_upvw.Position = UDim2.new(var356_upvw.X.Scale, var356_upvw.X.Offset + var365.X, var356_upvw.Y.Scale, var356_upvw.Y.Offset + var365.Y)
					end
				end)
				var367_upvw = arg1_47:GetPropertyChangedSignal("UserInputState"):Connect(function() -- Line 1261
					--[[ Upvalues[8]:
						[1]: var361_upvw (copied, read and write)
						[2]: var360_upvw (copied, read and write)
						[3]: var367_upvw (read and write)
						[4]: arg1_47 (readonly)
						[5]: any_Connect_result1_upvr (readonly)
						[6]: var362_upvw (copied, read and write)
						[7]: var356_upvw (copied, read and write)
						[8]: onDragStop_upvr (copied, readonly)
					]]
					if not var361_upvw then
						if not var360_upvw then
							if var367_upvw then
								var367_upvw:Disconnect()
								var367_upvw = nil
							end
							return
						end
					end
					if arg1_47.UserInputState == Enum.UserInputState.End then
						any_Connect_result1_upvr:Disconnect()
						var360_upvw = nil
						var361_upvw = nil
						var362_upvw = nil
						var356_upvw = nil
						if var367_upvw then
							var367_upvw:Disconnect()
							var367_upvw = nil
						end
						if var361_upvw then
							onDragStop_upvr(Vector2.new(arg1_47.Position.X, arg1_47.Position.Y))
						end
					end
				end)
			end
		end)
	else
		var320_upvw.DragBegin:Connect(function(arg1_49) -- Line 1295
			--[[ Upvalues[1]:
				[1]: onDragStart_upvr (readonly)
			]]
			onDragStart_upvr(arg1_49)
		end)
		var320_upvw.DragStopped:Connect(function(arg1_50, arg2_23) -- Line 1299
			--[[ Upvalues[1]:
				[1]: onDragStop_upvr (readonly)
			]]
			onDragStop_upvr(Vector2.new(arg1_50, arg2_23))
		end)
	end
	var320_upvw.Parent = arg1
	tbl_8_upvr[var275] = module_upvr
	if FullSlots_upvr < var275 then
		UpdateScrollingFrameCanvasSize_upvr()
		if var65_upvw.Visible and not var80_upvw then
			var67_upvw.CanvasPosition = Vector2.new(0, math.max(0, var67_upvw.CanvasSize.Y.Offset - var67_upvw.AbsoluteSize.Y))
		end
	end
	return module_upvr
end
local var371_upvw = false
local function OnChildAdded_upvr(arg1) -- Line 1321, Named "OnChildAdded"
	--[[ Upvalues[16]:
		[1]: var27_upvw (read and write)
		[2]: class_Humanoid_upvw (read and write)
		[3]: var82_upvw (read and write)
		[4]: var67_upvw (read and write)
		[5]: var371_upvw (read and write)
		[6]: tbl_12_upvr (readonly)
		[7]: LocalPlayer_upvw (read and write)
		[8]: var73_upvw (read and write)
		[9]: MakeSlot_upvr (readonly)
		[10]: var68_upvw (read and write)
		[11]: tbl_8_upvr (readonly)
		[12]: Backpack_upvw (read and write)
		[13]: AdjustHotbarFrames_upvr (readonly)
		[14]: var21_upvw (read and write)
		[15]: FullSlots_upvr (readonly)
		[16]: var65_upvw (read and write)
	]]
	if not arg1:IsA("Tool") then
		if arg1:IsA("Humanoid") and arg1.Parent == var27_upvw then
			class_Humanoid_upvw = arg1
		end
	else
		if arg1.Parent == var27_upvw then
			var82_upvw = tick()
		end
		if not var371_upvw and arg1.Parent == var27_upvw and not tbl_12_upvr[arg1] then
			local StarterGear = LocalPlayer_upvw:FindFirstChild("StarterGear")
			if StarterGear and StarterGear:FindFirstChild(arg1.Name) then
				var371_upvw = true
				local var394 = var73_upvw
				if not var394 then
					var394 = MakeSlot_upvr(var68_upvw)
				end
				for i_30 = var394.Index, 1, -1 do
					local var395 = i_30 - 1
					if 0 < var395 then
						tbl_8_upvr[var395]:Swap(tbl_8_upvr[i_30])
					else
						tbl_8_upvr[i_30]:Fill(arg1)
					end
				end
				for _, v_13 in pairs(var27_upvw:GetChildren()) do
					if v_13:IsA("Tool") and v_13 ~= arg1 then
						v_13.Parent = Backpack_upvw
					end
				end
				AdjustHotbarFrames_upvr()
				var67_upvw.CanvasPosition = var67_upvw.CanvasPosition
				if var21_upvw then
					var21_upvw(true)
				end
				return
			end
		end
		local var399
		if tbl_12_upvr[arg1] then
			var399 = tbl_12_upvr[arg1]:UpdateEquipView
			var399()
		else
			var399 = var73_upvw
			if not var399 then
				var399 = MakeSlot_upvr(var68_upvw)
			end
			local var400 = var399
			var399 = var400:Fill
			var399(arg1)
			var399 = var400.Index
			if var399 <= FullSlots_upvr then
				var399 = var65_upvw.Visible
				if not var399 then
					var399 = AdjustHotbarFrames_upvr
					var399()
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
					var67_upvw.CanvasPosition = var67_upvw.CanvasPosition
				end
			end
		end
		task.delay(0.05, function() -- Line 1388
			--[[ Upvalues[1]:
				[1]: var21_upvw (copied, read and write)
			]]
			if var21_upvw then
				var21_upvw(true)
			end
		end)
	end
end
local function OnChildRemoved_upvr(arg1) -- Line 1395, Named "OnChildRemoved"
	--[[ Upvalues[7]:
		[1]: var82_upvw (read and write)
		[2]: var27_upvw (read and write)
		[3]: Backpack_upvw (read and write)
		[4]: tbl_12_upvr (readonly)
		[5]: FullSlots_upvr (readonly)
		[6]: var65_upvw (read and write)
		[7]: AdjustHotbarFrames_upvr (readonly)
	]]
	if not arg1:IsA("Tool") then
	else
		var82_upvw = tick()
		local Parent = arg1.Parent
		if Parent == var27_upvw or Parent == Backpack_upvw then return end
		local var403 = tbl_12_upvr[arg1]
		if var403 then
			var403:Clear()
			if FullSlots_upvr < var403.Index then
				var403:Delete()
				return
			end
			if not var65_upvw.Visible then
				AdjustHotbarFrames_upvr()
			end
		end
	end
end
local tbl_13_upvw = {}
local function OnCharacterAdded(arg1) -- Line 1425
	--[[ Upvalues[9]:
		[1]: tbl_8_upvr (readonly)
		[2]: FullSlots_upvr (readonly)
		[3]: tbl_13_upvw (read and write)
		[4]: var27_upvw (read and write)
		[5]: OnChildRemoved_upvr (readonly)
		[6]: OnChildAdded_upvr (readonly)
		[7]: Backpack_upvw (read and write)
		[8]: LocalPlayer_upvw (read and write)
		[9]: AdjustHotbarFrames_upvr (readonly)
	]]
	for i_12 = #tbl_8_upvr, 1, -1 do
		local var412 = tbl_8_upvr[i_12]
		if var412.Tool then
			var412:Clear()
		end
		if FullSlots_upvr < i_12 then
			var412:Delete()
		end
	end
	for _, v_6 in pairs(tbl_13_upvw) do
		v_6:Disconnect()
	end
	tbl_13_upvw = {}
	var27_upvw = arg1
	table.insert(tbl_13_upvw, arg1.ChildRemoved:Connect(OnChildRemoved_upvr))
	table.insert(tbl_13_upvw, arg1.ChildAdded:Connect(OnChildAdded_upvr))
	for _, v_7 in pairs(arg1:GetChildren()) do
		task.spawn(OnChildAdded_upvr, v_7)
	end
	Backpack_upvw = LocalPlayer_upvw:WaitForChild("Backpack")
	table.insert(tbl_13_upvw, Backpack_upvw.ChildRemoved:Connect(OnChildRemoved_upvr))
	table.insert(tbl_13_upvw, Backpack_upvw.ChildAdded:Connect(OnChildAdded_upvr))
	for _, v_8 in pairs(Backpack_upvw:GetChildren()) do
		task.spawn(OnChildAdded_upvr, v_8)
	end
	AdjustHotbarFrames_upvr()
end
local PlayerGui_upvr = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
local function FindFirstNamedAtMouse_upvr(arg1) -- Line 1469, Named "FindFirstNamedAtMouse"
	--[[ Upvalues[2]:
		[1]: UserInputService_upvr (readonly)
		[2]: PlayerGui_upvr (readonly)
	]]
	local any_GetMouseLocation_result1 = UserInputService_upvr:GetMouseLocation()
	for _, v_9 in PlayerGui_upvr:GetGuiObjectsAtPosition(any_GetMouseLocation_result1.X, any_GetMouseLocation_result1.Y), nil do
		if v_9.Name:find(arg1) then
			return v_9
		end
	end
end
local function OnUISChanged(arg1) -- Line 1507
	--[[ Upvalues[3]:
		[1]: UserInputService_upvr (readonly)
		[2]: FullSlots_upvr (readonly)
		[3]: tbl_8_upvr (readonly)
	]]
	if arg1 == "KeyboardEnabled" or arg1 == "VREnabled" then
		if UserInputService_upvr.KeyboardEnabled then
		end
		for i_17 = 1, FullSlots_upvr do
			tbl_8_upvr[i_17]:TurnNumber(not UserInputService_upvr.VREnabled)
		end
	end
end
local function var430_upvr() -- Line 1519
end
function unbindAllGamepadEquipActions() -- Line 1523
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindAction("RBXBackpackHasGamepadFocus")
	ContextActionService_upvr:UnbindAction("RBXCloseInventory")
end
local function _(arg1, arg2) -- Line 1528, Named "setHotbarVisibility"
	--[[ Upvalues[2]:
		[1]: FullSlots_upvr (readonly)
		[2]: tbl_8_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local _ = 1
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 15. Error Block 8 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 15. Error Block 8 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [18.5]
	-- KONSTANTERROR: [4] 5. Error Block 2 end (CF ANALYSIS FAILED)
end
local vector2_upvw = Vector2.new(0, 0)
local function getInputDirection_upvr(arg1) -- Line 1537, Named "getInputDirection"
	--[[ Upvalues[1]:
		[1]: vector2_upvw (read and write)
	]]
	local var433
	if arg1.UserInputState == Enum.UserInputState.End then
		var433 = -1
	end
	if arg1.KeyCode == Enum.KeyCode.Thumbstick1 then
		local magnitude_2 = arg1.Position.magnitude
		if 0.98 < magnitude_2 then
			vector2_upvw = Vector2.new(arg1.Position.x / magnitude_2, -arg1.Position.y / magnitude_2)
		else
			vector2_upvw = Vector2.new(0, 0)
		end
	elseif arg1.KeyCode == Enum.KeyCode.DPadLeft then
		vector2_upvw = Vector2.new(vector2_upvw.x - var433 * 1, vector2_upvw.y)
	elseif arg1.KeyCode == Enum.KeyCode.DPadRight then
		vector2_upvw = Vector2.new(vector2_upvw.x + var433 * 1, vector2_upvw.y)
	elseif arg1.KeyCode == Enum.KeyCode.DPadUp then
		vector2_upvw = Vector2.new(vector2_upvw.x, vector2_upvw.y - var433 * 1)
	elseif arg1.KeyCode == Enum.KeyCode.DPadDown then
		vector2_upvw = Vector2.new(vector2_upvw.x, vector2_upvw.y + var433 * 1)
	else
		vector2_upvw = Vector2.new(0, 0)
	end
	return vector2_upvw
end
local function _(arg1, arg2, arg3) -- Line 1568
	--[[ Upvalues[4]:
		[1]: getInputDirection_upvr (readonly)
		[2]: FullSlots_upvr (readonly)
		[3]: tbl_8_upvr (readonly)
		[4]: class_Humanoid_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local getInputDirection_upvr_result1 = getInputDirection_upvr(arg3)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 2 start (CF ANALYSIS FAILED)
	do
		return
	end
	-- KONSTANTERROR: [10] 9. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 10. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 10. Error Block 3 end (CF ANALYSIS FAILED)
end
local var438_upvw
local var439_upvw
function changeToolFunc(arg1, arg2, arg3) -- Line 1598
	--[[ Upvalues[8]:
		[1]: var438_upvw (read and write)
		[2]: var439_upvw (read and write)
		[3]: class_Humanoid_upvw (read and write)
		[4]: var27_upvw (read and write)
		[5]: tbl_12_upvr (readonly)
		[6]: FullSlots_upvr (readonly)
		[7]: tbl_8_upvr (readonly)
		[8]: var85_upvw (read and write)
	]]
	if arg2 ~= Enum.UserInputState.Begin then
	else
		if var438_upvw then
			if var438_upvw.KeyCode == Enum.KeyCode.ButtonR1 and arg3.KeyCode == Enum.KeyCode.ButtonL1 or var438_upvw.KeyCode == Enum.KeyCode.ButtonL1 and arg3.KeyCode == Enum.KeyCode.ButtonR1 or tick() - var439_upvw <= 0.06 then
				if class_Humanoid_upvw then
					class_Humanoid_upvw:UnequipTools()
				end
				var438_upvw = arg3
				var439_upvw = tick()
				return
			end
		end
		var438_upvw = arg3
		var439_upvw = tick()
		delay(0.06, function() -- Line 1626
			--[[ Upvalues[8]:
				[1]: var438_upvw (copied, read and write)
				[2]: arg3 (readonly)
				[3]: var27_upvw (copied, read and write)
				[4]: class_Humanoid_upvw (copied, read and write)
				[5]: tbl_12_upvr (copied, readonly)
				[6]: FullSlots_upvr (copied, readonly)
				[7]: tbl_8_upvr (copied, readonly)
				[8]: var85_upvw (copied, read and write)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 141 start (CF ANALYSIS FAILED)
			if var438_upvw ~= arg3 then return end
			if arg3.KeyCode == Enum.KeyCode.ButtonL1 then
			else
			end
			-- KONSTANTERROR: [0] 1. Error Block 141 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [19] 16. Error Block 8 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [19] 16. Error Block 8 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [38] 31. Error Block 118 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [38] 31. Error Block 118 end (CF ANALYSIS FAILED)
		end)
	end
end
function getGamepadSwapSlot() -- Line 1765
	--[[ Upvalues[1]:
		[1]: tbl_8_upvr (readonly)
	]]
	for i_18 = 1, #tbl_8_upvr do
		if 0 < tbl_8_upvr[i_18].Frame:WaitForChild("UIStroke").Thickness then
			return tbl_8_upvr[i_18]
		end
	end
end
function changeSlot(arg1) -- Line 1773
	--[[ Upvalues[5]:
		[1]: VRService_upvr (readonly)
		[2]: var65_upvw (read and write)
		[3]: GuiService_upvr (readonly)
		[4]: var66_upvw (read and write)
		[5]: FullSlots_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 3 end (CF ANALYSIS FAILED)
end
function vrMoveSlotToInventory() -- Line 1830
	--[[ Upvalues[2]:
		[1]: VRService_upvr (readonly)
		[2]: var66_upvw (read and write)
	]]
	if not VRService_upvr.VREnabled then
	else
		local getGamepadSwapSlot_result1 = getGamepadSwapSlot()
		if getGamepadSwapSlot_result1 and getGamepadSwapSlot_result1.Tool then
			getGamepadSwapSlot_result1:WaitForChild("UIStroke").Thickness = 0
			getGamepadSwapSlot_result1:MoveToInventory()
			var66_upvw.SelectionImageObject.Visible = false
		end
	end
end
function enableGamepadInventoryControl() -- Line 1843
	--[[ Upvalues[7]:
		[1]: var65_upvw (read and write)
		[2]: any_new_result1_upvr (readonly)
		[3]: ContextActionService_upvr (readonly)
		[4]: var430_upvr (readonly)
		[5]: UserInputService_upvr (readonly)
		[6]: GuiService_upvr (readonly)
		[7]: var64_upvw (read and write)
	]]
	ContextActionService_upvr:BindAction("RBXBackpackHasGamepadFocus", var430_upvr, false, Enum.UserInputType.Gamepad1)
	ContextActionService_upvr:BindAction("RBXCloseInventory", function(arg1, arg2, arg3) -- Line 1844
		--[[ Upvalues[2]:
			[1]: var65_upvw (copied, read and write)
			[2]: any_new_result1_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 3. Error Block 2 start (CF ANALYSIS FAILED)
		do
			return
		end
		-- KONSTANTERROR: [4] 3. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 4. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 4. Error Block 3 end (CF ANALYSIS FAILED)
	end, false, Enum.KeyCode.ButtonB, Enum.KeyCode.ButtonStart)
	if not UserInputService_upvr.VREnabled then
		GuiService_upvr.SelectedObject = var64_upvw:FindFirstChild('1')
	end
end
function disableGamepadInventoryControl() -- Line 1876
	--[[ Upvalues[4]:
		[1]: FullSlots_upvr (readonly)
		[2]: tbl_8_upvr (readonly)
		[3]: GuiService_upvr (readonly)
		[4]: var63_upvw (read and write)
	]]
	unbindAllGamepadEquipActions()
	for i_19 = 1, FullSlots_upvr do
		local var447 = tbl_8_upvr[i_19]
		if var447 and var447.Frame then
			var447.Frame:WaitForChild("UIStroke").Thickness = 0
		end
	end
	if GuiService_upvr.SelectedObject then
		i_19 = var63_upvw
		if GuiService_upvr.SelectedObject:IsDescendantOf(i_19) then
			GuiService_upvr.SelectedObject = nil
		end
	end
end
local function _() -- Line 1891, Named "bindBackpackHotbarAction"
	--[[ Upvalues[3]:
		[1]: var78_upvw (read and write)
		[2]: var60_upvw (read and write)
		[3]: ContextActionService_upvr (readonly)
	]]
	if var78_upvw then
		if not var60_upvw then
			var60_upvw = true
			ContextActionService_upvr:BindAction("RBXHotbarEquip", changeToolFunc, false, Enum.KeyCode.ButtonL1, Enum.KeyCode.ButtonR1)
		end
	end
end
local function _() -- Line 1904, Named "unbindBackpackHotbarAction"
	--[[ Upvalues[2]:
		[1]: var60_upvw (read and write)
		[2]: ContextActionService_upvr (readonly)
	]]
	disableGamepadInventoryControl()
	var60_upvw = false
	ContextActionService_upvr:UnbindAction("RBXHotbarEquip")
end
function gamepadDisconnected() -- Line 1910
	--[[ Upvalues[1]:
		[1]: var81_upvw (read and write)
	]]
	var81_upvw = false
	disableGamepadInventoryControl()
end
function gamepadConnected() -- Line 1915
	--[[ Upvalues[8]:
		[1]: var81_upvw (read and write)
		[2]: GuiService_upvr (readonly)
		[3]: var63_upvw (read and write)
		[4]: var77_upvw (read and write)
		[5]: var78_upvw (read and write)
		[6]: var60_upvw (read and write)
		[7]: ContextActionService_upvr (readonly)
		[8]: var65_upvw (read and write)
	]]
	var81_upvw = true
	GuiService_upvr:AddSelectionParent("RBXBackpackSelection", var63_upvw)
	if 1 <= var77_upvw then
		if var78_upvw and not var60_upvw then
			var60_upvw = true
			ContextActionService_upvr:BindAction("RBXHotbarEquip", changeToolFunc, false, Enum.KeyCode.ButtonL1, Enum.KeyCode.ButtonR1)
		end
	end
	if var65_upvw.Visible then
		enableGamepadInventoryControl()
	end
end
local tbl_9_upvr = {}
local function OnIconChanged_upvr(arg1) -- Line 1928, Named "OnIconChanged"
	--[[ Upvalues[9]:
		[1]: StarterGui_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
		[3]: GuiService_upvr (readonly)
		[4]: var78_upvw (read and write)
		[5]: var63_upvw (read and write)
		[6]: tbl_9_upvr (readonly)
		[7]: var77_upvw (read and write)
		[8]: var60_upvw (read and write)
		[9]: ContextActionService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
	local var453 = arg1
	if var453 then
		var453 = StarterGui_upvr:GetCore("TopbarEnabled")
	end
	local var454 = var453
	local var455 = var454
	if var455 then
		var455 = not GuiService_upvr.MenuIsOpen
	end
	any_new_result1_upvr:setEnabled(var455)
	var78_upvw = var454
	var63_upvw.Visible = var454
	for _, _ in pairs(tbl_9_upvr) do
		if var454 then
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [40] 34. Error Block 13 start (CF ANALYSIS FAILED)
	var60_upvw = true
	ContextActionService_upvr:BindAction("RBXHotbarEquip", changeToolFunc, false, Enum.KeyCode.ButtonL1, Enum.KeyCode.ButtonR1)
	do
		return
	end
	-- KONSTANTERROR: [40] 34. Error Block 13 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [55] 45. Error Block 14 start (CF ANALYSIS FAILED)
	disableGamepadInventoryControl()
	var60_upvw = false
	ContextActionService_upvr:UnbindAction("RBXHotbarEquip")
	-- KONSTANTERROR: [55] 45. Error Block 14 end (CF ANALYSIS FAILED)
end
local function MakeVRRoundButton(arg1, arg2) -- Line 1953
	--[[ Upvalues[1]:
		[1]: NewGui_upvr (readonly)
	]]
	local NewGui_result1_7 = NewGui_upvr("ImageButton", arg1)
	NewGui_result1_7.Size = UDim2.new(0, 40, 0, 40)
	NewGui_result1_7.Image = "rbxasset://textures/ui/Keyboard/close_button_background.png"
	local NewGui_result1_5 = NewGui_upvr("ImageLabel", "Icon")
	NewGui_result1_5.Size = UDim2.new(0.5, 0, 0.5, 0)
	NewGui_result1_5.Position = UDim2.new(0.25, 0, 0.25, 0)
	NewGui_result1_5.Image = arg2
	NewGui_result1_5.Parent = NewGui_result1_7
	local NewGui_result1_6 = NewGui_upvr("ImageLabel", "Selection")
	NewGui_result1_6.Size = UDim2.new(0.9, 0, 0.9, 0)
	NewGui_result1_6.Position = UDim2.new(0.05, 0, 0.05, 0)
	NewGui_result1_6.Image = "rbxasset://textures/ui/Keyboard/close_button_selection.png"
	NewGui_result1_7.SelectionImageObject = NewGui_result1_6
	return NewGui_result1_7, NewGui_result1_5, NewGui_result1_6
end
var63_upvw = NewGui_upvr("Frame", "Backpack")
local var462 = var63_upvw
var462.Visible = false
var462.Parent = ScreenGui_2
var64_upvw = NewGui_upvr("Frame", "Hotbar")
local var463_upvw = var64_upvw
var463_upvw.Parent = var462
for i_21 = 1, FullSlots_upvr do
	local MakeSlot_upvr_result1 = MakeSlot_upvr(var463_upvw, i_21)
	MakeSlot_upvr_result1.Frame.Visible = false
	if not var73_upvw then
		var73_upvw = MakeSlot_upvr_result1
	end
end
any_new_result1_upvr.selected:Connect(function() -- Line 1992
	--[[ Upvalues[2]:
		[1]: GuiService_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	if not GuiService_upvr.MenuIsOpen then
		module_upvr_2.OpenClose()
	end
end)
any_new_result1_upvr.deselected:Connect(function() -- Line 1997
	--[[ Upvalues[2]:
		[1]: var65_upvw (read and write)
		[2]: module_upvr_2 (readonly)
	]]
	if var65_upvw.Visible then
		module_upvr_2.OpenClose()
	end
end)
LeftBumperButton = NewGui_upvr("ImageLabel", "LeftBumper") -- Setting global
LeftBumperButton.Size = UDim2.new(0, 40, 0, 40)
LeftBumperButton.Position = UDim2.new(0, -LeftBumperButton.Size.X.Offset, 0.5, -LeftBumperButton.Size.Y.Offset / 2)
RightBumperButton = NewGui_upvr("ImageLabel", "RightBumper") -- Setting global
RightBumperButton.Size = UDim2.new(0, 40, 0, 40)
RightBumperButton.Position = UDim2.new(1, 0, 0.5, -RightBumperButton.Size.Y.Offset / 2)
var65_upvw = NewGui_upvr("Frame", "Inventory")
local var467_upvw = var65_upvw
local UICorner_6 = Instance.new("UICorner")
UICorner_6.CornerRadius = script:GetAttribute("CornerRadius")
UICorner_6.Parent = var467_upvw
var467_upvw.BackgroundTransparency = script:GetAttribute("BackgroundTransparency")
var467_upvw.BackgroundColor3 = BackgroundColor_upvr
var467_upvw.Active = true
var467_upvw.Visible = false
var467_upvw.Parent = var462
local TweenService_upvr = game:GetService("TweenService")
local clone_upvr = script.CategoryTemplate:Clone()
clone_upvr.Parent = var467_upvw
function var471_upvw(arg1) -- Line 2028
	--[[ Upvalues[3]:
		[1]: var22_upvw (read and write)
		[2]: clone_upvr (readonly)
		[3]: var21_upvw (read and write)
	]]
	if var22_upvw == arg1 then
	else
		var22_upvw = arg1
		clone_upvr.Text = `{arg1} Items`
		var21_upvw()
	end
end
local clone_2 = script.CategoryFrame:Clone()
if not TouchEnabled or not UDim2.fromScale(0.14, 1) then
end
clone_2.Size = clone_2.Size
clone_2.Parent = var467_upvw
for _, v_11 in CategoryList do
	local clone = clone_2.CategoryTemplate:Clone()
	local ImageButton = clone.ImageButton
	local BackgroundColor3 = clone.BackgroundColor3
	local any_Create_result1_upvr_2 = TweenService_upvr:Create(clone, TweenInfo.new(0.2), {
		BackgroundColor3 = (function(arg1, arg2) -- Line 2052, Named "BrightenColorHSV"
			local any_ToHSV_result1, any_ToHSV_result2, any_ToHSV_result3 = arg1:ToHSV()
			return Color3.fromHSV(any_ToHSV_result1, any_ToHSV_result2, math.clamp(any_ToHSV_result3 + arg2, 0, 1))
		end)(BackgroundColor3, 0.2);
	})
	local any_Create_result1_upvr = TweenService_upvr:Create(clone, TweenInfo.new(0.2), {
		BackgroundColor3 = BackgroundColor3;
	})
	ImageButton.MouseEnter:Connect(function() -- Line 2073
		--[[ Upvalues[1]:
			[1]: any_Create_result1_upvr_2 (readonly)
		]]
		any_Create_result1_upvr_2:Play()
	end)
	ImageButton.MouseLeave:Connect(function() -- Line 2076
		--[[ Upvalues[1]:
			[1]: any_Create_result1_upvr (readonly)
		]]
		any_Create_result1_upvr:Play()
	end)
	ImageButton.MouseButton1Down:Connect(function() -- Line 2080
		--[[ Upvalues[1]:
			[1]: any_Create_result1_upvr (readonly)
		]]
		any_Create_result1_upvr:Play()
	end)
	local Name_upvr = v_11.Name
	ImageButton.MouseButton1Up:Connect(function() -- Line 2084
		--[[ Upvalues[3]:
			[1]: any_Create_result1_upvr_2 (readonly)
			[2]: var471_upvw (read and write)
			[3]: Name_upvr (readonly)
		]]
		any_Create_result1_upvr_2:Play()
		var471_upvw(Name_upvr)
	end)
	ImageButton.Image = v_11.Image
	clone.Visible = true
	clone.Parent = clone_2
	local _
end
var66_upvw = NewGui_upvr("TextButton", "VRInventorySelector")
local var489 = var66_upvw
var489.Position = UDim2.new(0, 0, 0, 0)
var489.Size = UDim2.new(1, 0, 1, 0)
var489.BackgroundTransparency = 1
var489.Text = ""
var489.Parent = var467_upvw
local NewGui_upvr_result1_3 = NewGui_upvr("ImageLabel", "Selector")
NewGui_upvr_result1_3.Size = UDim2.new(1, 0, 1, 0)
NewGui_upvr_result1_3.Image = "rbxasset://textures/ui/Keyboard/key_selection_9slice.png"
NewGui_upvr_result1_3.ScaleType = Enum.ScaleType.Slice
NewGui_upvr_result1_3.SliceCenter = Rect.new(12, 12, 52, 52)
NewGui_upvr_result1_3.Visible = false
var489.SelectionImageObject = NewGui_upvr_result1_3
var489.MouseButton1Click:Connect(function() -- Line 2109
	vrMoveSlotToInventory()
end)
var67_upvw = NewGui_upvr("ScrollingFrame", "ScrollingFrame")
local var492_upvw = var67_upvw
var492_upvw.Selectable = false
var492_upvw.CanvasSize = UDim2.new(0, 0, 0, 0)
var492_upvw.Parent = var467_upvw
var68_upvw = NewGui_upvr("Frame", "UIGridFrame")
local var493_upvw = var68_upvw
var493_upvw.Selectable = false
var493_upvw.Size = UDim2.new(1, -10, 1, 0)
var493_upvw.Position = UDim2.new(0, 5, 0, 0)
var493_upvw.Parent = var492_upvw
local UIGridLayout = Instance.new("UIGridLayout")
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0, var59_upvw, 0, var59_upvw)
UIGridLayout.CellPadding = UDim2.new(0, 5, 0, 5)
UIGridLayout.Parent = var493_upvw
local MakeVRRoundButton_result1_upvw_2 = MakeVRRoundButton("ScrollUpButton", "rbxasset://textures/ui/Backpack/ScrollUpArrow.png")
MakeVRRoundButton_result1_upvw_2.Size = UDim2.new(0, 34, 0, 34)
MakeVRRoundButton_result1_upvw_2.Position = UDim2.new(0.5, -MakeVRRoundButton_result1_upvw_2.Size.X.Offset / 2, 0, 43)
Name_upvr = 2
MakeVRRoundButton_result1_upvw_2.Icon.Position = MakeVRRoundButton_result1_upvw_2.Icon.Position - UDim2.new(0, 0, 0, Name_upvr)
MakeVRRoundButton_result1_upvw_2.MouseButton1Click:Connect(function() -- Line 2136
	--[[ Upvalues[2]:
		[1]: var492_upvw (read and write)
		[2]: var59_upvw (read and write)
	]]
	var492_upvw.CanvasPosition = Vector2.new(var492_upvw.CanvasPosition.X, math.min(var492_upvw.CanvasSize.Y.Offset - var492_upvw.AbsoluteWindowSize.Y, math.max(0, (var492_upvw.CanvasPosition.Y) - (var59_upvw + 5))))
end)
local MakeVRRoundButton_result1_upvw = MakeVRRoundButton("ScrollDownButton", "rbxasset://textures/ui/Backpack/ScrollUpArrow.png")
MakeVRRoundButton_result1_upvw.Rotation = 180
Name_upvr = 2
MakeVRRoundButton_result1_upvw.Icon.Position = MakeVRRoundButton_result1_upvw.Icon.Position - UDim2.new(0, 0, 0, Name_upvr)
MakeVRRoundButton_result1_upvw.Size = UDim2.new(0, 34, 0, 34)
Name_upvr = MakeVRRoundButton_result1_upvw.Size.Y
MakeVRRoundButton_result1_upvw.Position = UDim2.new(0.5, -MakeVRRoundButton_result1_upvw.Size.X.Offset / 2, 1, -Name_upvr.Offset - 3)
MakeVRRoundButton_result1_upvw.MouseButton1Click:Connect(function() -- Line 2153
	--[[ Upvalues[2]:
		[1]: var492_upvw (read and write)
		[2]: var59_upvw (read and write)
	]]
	var492_upvw.CanvasPosition = Vector2.new(var492_upvw.CanvasPosition.X, math.min(var492_upvw.CanvasSize.Y.Offset - var492_upvw.AbsoluteWindowSize.Y, math.max(0, (var492_upvw.CanvasPosition.Y) + (var59_upvw + 5))))
end)
var492_upvw.Changed:Connect(function(arg1) -- Line 2164
	--[[ Upvalues[3]:
		[1]: var492_upvw (read and write)
		[2]: MakeVRRoundButton_result1_upvw_2 (read and write)
		[3]: MakeVRRoundButton_result1_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 2. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 2. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 3. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 3. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 4. Error Block 18 start (CF ANALYSIS FAILED)
	if var492_upvw.CanvasPosition.Y == 0 then
		-- KONSTANTWARNING: GOTO [15] #10
	end
	-- KONSTANTERROR: [6] 4. Error Block 18 end (CF ANALYSIS FAILED)
end)
;(function() -- Line 342, Named "UpdateBackpackLayout"
	--[[ Upvalues[9]:
		[1]: var64_upvw (read and write)
		[2]: FullSlots_upvr (readonly)
		[3]: var59_upvw (read and write)
		[4]: var65_upvw (read and write)
		[5]: const_number_upvr (readonly)
		[6]: VREnabled_upvr (readonly)
		[7]: var67_upvw (read and write)
		[8]: AdjustHotbarFrames_upvr (readonly)
		[9]: AdjustInventoryFrames_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	var64_upvw.Size = UDim2.new(0, 5 + FullSlots_upvr * (var59_upvw + 5), 0, var59_upvw + 5 + 5)
	var64_upvw.Position = UDim2.new(0.5, -var64_upvw.Size.X.Offset / 2, 1, -var64_upvw.Size.Y.Offset)
	local var107 = var64_upvw.Size.Y.Offset * const_number_upvr
	if VREnabled_upvr then
		var107 = 80
	else
		var107 = 0
	end
	var65_upvw.Size = UDim2.new(0, var64_upvw.Size.X.Offset, 0, var107 + 40 + var107)
	var107 = var65_upvw.Size
	var107 = var64_upvw.Position.Y
	var107 = var65_upvw.Size.Y.Offset
	var65_upvw.Position = UDim2.new(0.5, -var107.X.Offset / 2, 1, var107.Offset - var107)
	var107 = VREnabled_upvr
	if var107 then
		-- KONSTANTWARNING: GOTO [119] #89
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [118] 88. Error Block 22 start (CF ANALYSIS FAILED)
	var67_upvw.Size = UDim2.new(1, var67_upvw.ScrollBarThickness + 1, 1, -40 - 0)
	if VREnabled_upvr then
		var107 = 40
	else
		var107 = 0
	end
	var67_upvw.Position = UDim2.new(0, 0, 0, 40 + var107)
	AdjustHotbarFrames_upvr()
	AdjustInventoryFrames_upvr()
	-- KONSTANTERROR: [118] 88. Error Block 22 end (CF ANALYSIS FAILED)
end)()
local tbl_4 = {
	Name = "GamepadHintsFrame";
}
if any_IsTenFootInterface_result1_upvr then
else
end
tbl_4.Size = UDim2.new(0, var463_upvw.Size.X.Offset, 0, 60)
tbl_4.BackgroundTransparency = 1
tbl_4.Visible = false
tbl_4.Parent = var462
local var501_upvr = Utility_upvr:Create("Frame")(tbl_4)
local function addGamepadHint(arg1, arg2, arg3) -- Line 2187
	--[[ Upvalues[3]:
		[1]: Utility_upvr (readonly)
		[2]: var501_upvr (readonly)
		[3]: any_IsTenFootInterface_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var503 = Utility_upvr:Create("Frame")({
		Name = "HintFrame";
		Size = UDim2.new(1, 0, 1, -5);
		Position = UDim2.new(0, 0, 0, 0);
		BackgroundTransparency = 1;
		Parent = var501_upvr;
	})
	local tbl_5 = {
		Name = "HintImage";
	}
	local var505
	local function INLINED_7() -- Internal function, doesn't exist in bytecode
		var505 = UDim2.new(0, 90, 0, 90)
		return var505
	end
	if not any_IsTenFootInterface_result1_upvr or not INLINED_7() then
		var505 = UDim2.new(0, 60, 0, 60)
	end
	tbl_5.Size = var505
	var505 = 1
	tbl_5.BackgroundTransparency = var505
	local function INLINED_8() -- Internal function, doesn't exist in bytecode
		var505 = arg2
		return var505
	end
	if not any_IsTenFootInterface_result1_upvr or not INLINED_8() then
		var505 = arg1
	end
	tbl_5.Image = var505
	tbl_5.Parent = var503
	var505 = {}
	var505.Name = "HintText"
	if any_IsTenFootInterface_result1_upvr then
	else
	end
	local var506 = 0
	var505.Position = UDim2.new(0, 70, var506, 0)
	if any_IsTenFootInterface_result1_upvr then
	else
	end
	var505.Size = UDim2.new(1, -70, 1, 0)
	var505.Font = Enum.Font.SourceSansBold
	if not any_IsTenFootInterface_result1_upvr or not Enum.FontSize.Size36 then
	end
	var505.FontSize = Enum.FontSize.Size24
	var505.BackgroundTransparency = 1
	var505.Text = arg3
	var505.TextColor3 = Color3.new(1, 1, 1)
	var505.TextXAlignment = Enum.TextXAlignment.Left
	var505.TextWrapped = true
	var505.Parent = var503
	local var507 = Utility_upvr:Create("TextLabel")(var505)
	var505 = Instance.new("UITextSizeConstraint", var507)
	var505.MaxTextSize = var507.TextSize
end
local function resizeGamepadHintsFrame_upvr() -- Line 2221, Named "resizeGamepadHintsFrame"
	--[[ Upvalues[4]:
		[1]: var501_upvr (readonly)
		[2]: var463_upvw (read and write)
		[3]: any_IsTenFootInterface_result1_upvr (readonly)
		[4]: var467_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local Size = var463_upvw.Size
	local var517
	if any_IsTenFootInterface_result1_upvr then
		Size = 95
	else
		Size = 60
	end
	var517.Size = UDim2.new(var463_upvw.Size.X.Scale, Size.X.Offset, 0, Size)
	var517 = var501_upvr
	var517.Position = UDim2.new(var463_upvw.Position.X.Scale, var463_upvw.Position.X.Offset, var467_upvw.Position.Y.Scale, var467_upvw.Position.Y.Offset - var501_upvr.Size.Y.Offset)
	var517 = 0
	local children = var501_upvr:GetChildren()
	for i_23 = 1, #children do
		children[i_23].Size = UDim2.new(1, 0, 1, -5)
		children[i_23].Position = UDim2.new(0, 0, 0, 0)
		var517 += children[i_23].HintText.Position.X.Offset + children[i_23].HintText.TextBounds.X
		local var519
	end
	for i_24 = 1, #var519 do
		local var520
		local function INLINED_9() -- Internal function, doesn't exist in bytecode
			var520 = UDim2.new(0, 0, 0, 0)
			return var520
		end
		if i_24 ~= 1 or not INLINED_9() then
			var520 = UDim2.new(0, var519[i_24 - 1].Position.X.Offset + var519[i_24 - 1].Size.X.Offset + (var501_upvr.AbsoluteSize.X - var517) / (#var519 - 1), 0, 0)
		end
		var519[i_24].Position = var520
		var520 = UDim2.new(0, var519[i_24].HintText.Position.X.Offset + var519[i_24].HintText.TextBounds.X, 1, -5)
		var519[i_24].Size = var520
	end
end
addGamepadHint("rbxasset://textures/ui/Settings/Help/XButtonDark.png", "rbxasset://textures/ui/Settings/Help/XButtonDark@2x.png", "Remove From Hotbar ")
addGamepadHint("rbxasset://textures/ui/Settings/Help/AButtonDark.png", "rbxasset://textures/ui/Settings/Help/AButtonDark@2x.png", "Select/Swap")
addGamepadHint("rbxasset://textures/ui/Settings/Help/BButtonDark.png", "rbxasset://textures/ui/Settings/Help/BButtonDark@2x.png", "Close Backpack")
local NewGui_result1_4_upvr = NewGui_upvr("Frame", "Search")
local UICorner_9 = Instance.new("UICorner")
Name_upvr = "CornerRadius"
UICorner_9.CornerRadius = script:GetAttribute(Name_upvr)
UICorner_9.Parent = NewGui_result1_4_upvr
NewGui_result1_4_upvr.BackgroundColor3 = script:GetAttribute("SearchBoxColor")
NewGui_result1_4_upvr.BackgroundTransparency = script:GetAttribute("SearchBoxTransparency")
Name_upvr = 190
NewGui_result1_4_upvr.Size = UDim2.new(0, Name_upvr, 0, 30)
any_Create_result1_upvr_2 = NewGui_result1_4_upvr.Size
Name_upvr = -any_Create_result1_upvr_2.X.Offset - 5
NewGui_result1_4_upvr.Position = UDim2.new(1, Name_upvr, 0, 5)
NewGui_result1_4_upvr.Parent = var467_upvw
Name_upvr = "TextBox"
local NewGui_result1_10_upvr = NewGui_upvr("TextBox", Name_upvr)
NewGui_result1_10_upvr.PlaceholderText = "search"
NewGui_result1_10_upvr.ClearTextOnFocus = false
NewGui_result1_10_upvr.FontSize = Enum.FontSize.Size24
NewGui_result1_10_upvr.TextXAlignment = Enum.TextXAlignment.Left
Name_upvr = "UIPadding"
local any_3 = Instance.new(Name_upvr)
any_3.Parent = NewGui_result1_10_upvr
Name_upvr = UDim.new(0, 8)
any_3.PaddingLeft = Name_upvr
any_Create_result1_upvr_2 = 0
Name_upvr = NewGui_result1_4_upvr.Size - UDim2.fromOffset(0, any_Create_result1_upvr_2)
NewGui_result1_10_upvr.Size = Name_upvr
Name_upvr = UDim2.new
any_Create_result1_upvr_2 = 0
Name_upvr = Name_upvr(0, 0, 0, any_Create_result1_upvr_2)
NewGui_result1_10_upvr.Position = Name_upvr
NewGui_result1_10_upvr.Parent = NewGui_result1_4_upvr
Name_upvr = script.StrokeTemplate:Clone()
local var525_upvr = Name_upvr
var525_upvr.Enabled = false
var525_upvr.Parent = NewGui_result1_4_upvr
task.spawn(function() -- Line 2301
	--[[ Upvalues[2]:
		[1]: var525_upvr (readonly)
		[2]: TweenService_upvr (readonly)
	]]
	while true do
		task.wait()
		if var525_upvr.Enabled then
			local any_Create_result1 = TweenService_upvr:Create(var525_upvr.UIGradient, TweenInfo.new(0.05), {
				Rotation = var525_upvr.UIGradient.Rotation + 1;
			})
			any_Create_result1:Play()
			any_Create_result1.Completed:Wait()
		end
	end
end)
var125_upvw = NewGui_result1_10_upvr
local NewGui_upvr_result1_2_upvr = NewGui_upvr("TextButton", 'X')
local UICorner_5 = Instance.new("UICorner")
any_Create_result1_upvr = "CornerRadius"
UICorner_5.CornerRadius = script:GetAttribute(any_Create_result1_upvr)
UICorner_5.Parent = NewGui_upvr_result1_2_upvr
NewGui_upvr_result1_2_upvr.Text = 'X'
NewGui_upvr_result1_2_upvr.ZIndex = 10
any_Create_result1_upvr_2 = 1
any_Create_result1_upvr = 1
NewGui_upvr_result1_2_upvr.TextColor3 = Color3.new(any_Create_result1_upvr_2, any_Create_result1_upvr, 1)
NewGui_upvr_result1_2_upvr.FontSize = Enum.FontSize.Size24
NewGui_upvr_result1_2_upvr.TextYAlignment = Enum.TextYAlignment.Bottom
NewGui_upvr_result1_2_upvr.BackgroundTransparency = 1
any_Create_result1_upvr_2 = 0
any_Create_result1_upvr = NewGui_result1_4_upvr.Size.Y.Offset - 10
NewGui_upvr_result1_2_upvr.Size = UDim2.new(any_Create_result1_upvr_2, any_Create_result1_upvr, 0, NewGui_result1_4_upvr.Size.Y.Offset - 10)
any_Create_result1_upvr_2 = 1
any_Create_result1_upvr = -NewGui_upvr_result1_2_upvr.Size.X.Offset - 10
NewGui_upvr_result1_2_upvr.Position = UDim2.new(any_Create_result1_upvr_2, any_Create_result1_upvr, 0.5, -NewGui_upvr_result1_2_upvr.Size.Y.Offset / 2)
NewGui_upvr_result1_2_upvr.Visible = false
NewGui_upvr_result1_2_upvr.BorderSizePixel = 0
NewGui_upvr_result1_2_upvr.Parent = NewGui_result1_4_upvr
local function search_upvr(arg1) -- Line 2339, Named "search"
	--[[ Upvalues[9]:
		[1]: NewGui_result1_10_upvr (readonly)
		[2]: FullSlots_upvr (readonly)
		[3]: tbl_8_upvr (readonly)
		[4]: var467_upvw (read and write)
		[5]: var80_upvw (read and write)
		[6]: IsOfCategory_upvr (readonly)
		[7]: var493_upvw (read and write)
		[8]: UpdateScrollingFrameCanvasSize_upvr (readonly)
		[9]: NewGui_upvr_result1_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl = {}
	for i_25 in NewGui_result1_10_upvr.Text:gmatch("%S+"), nil do
		tbl[i_25:lower()] = true
	end
	for i_26 = FullSlots_upvr + 1, #tbl_8_upvr do
		local var549_upvr = tbl_8_upvr[i_26]
		table.insert({}, {var549_upvr, var549_upvr:CheckTerms(tbl)})
		var549_upvr.Frame.Visible = false
		pcall(function() -- Line 2363
			--[[ Upvalues[2]:
				[1]: var549_upvr (readonly)
				[2]: var467_upvw (copied, read and write)
			]]
			var549_upvr.Frame.Parent = var467_upvw
		end)
		local var552
	end
	table.sort(var552, function(arg1_51, arg2) -- Line 2368
		local var554
		if arg2[2] >= arg1_51[2] then
			var554 = false
		else
			var554 = true
		end
		return var554
	end)
	var80_upvw = true
	var549_upvr = nil
	for _, v_12 in var552, nil, var549_upvr do
		local _1 = v_12[1]
		if 0 < v_12[2] or NewGui_result1_10_upvr.Text == "" or IsOfCategory_upvr(_1.Tool) then
			_1.Frame.Visible = true
			_1.Frame.Parent = var493_upvw
			_1.Frame.LayoutOrder = FullSlots_upvr + 0
		else
			_1.Frame.Visible = false
		end
	end
	UpdateScrollingFrameCanvasSize_upvr()
	NewGui_upvr_result1_2_upvr.ZIndex = 3
end
var21_upvw = search_upvr
function any_Create_result1_upvr_2() -- Line 2394, Named "clearResults"
	--[[ Upvalues[8]:
		[1]: var80_upvw (read and write)
		[2]: FullSlots_upvr (readonly)
		[3]: tbl_8_upvr (readonly)
		[4]: var22_upvw (read and write)
		[5]: var493_upvw (read and write)
		[6]: IsOfCategory_upvr (readonly)
		[7]: NewGui_upvr_result1_2_upvr (readonly)
		[8]: UpdateScrollingFrameCanvasSize_upvr (readonly)
	]]
	var80_upvw = false
	for i_28 = FullSlots_upvr + 1, #tbl_8_upvr do
		local var559 = tbl_8_upvr[i_28]
		if var559 and var559.Tool then
			if var22_upvw == "All" then
				var559.Frame.LayoutOrder = var559.Index
				var559.Frame.Parent = var493_upvw
				var559.Frame.Visible = true
			elseif var22_upvw ~= "All" then
				if IsOfCategory_upvr(var559.Tool) then
					var559.Frame.Visible = true
				else
					var559.Frame.Visible = false
				end
			end
		end
	end
	NewGui_upvr_result1_2_upvr.ZIndex = 0
	UpdateScrollingFrameCanvasSize_upvr()
end
local var557_upvw = any_Create_result1_upvr_2
function any_Create_result1_upvr() -- Line 2421, Named "reset"
	--[[ Upvalues[2]:
		[1]: var557_upvw (readonly)
		[2]: NewGui_result1_10_upvr (readonly)
	]]
	var557_upvw()
	NewGui_result1_10_upvr.Text = ""
end
NewGui_upvr_result1_2_upvr.MouseButton1Click:Connect(any_Create_result1_upvr)
NewGui_result1_10_upvr.Changed:Connect(function(arg1) -- Line 2426, Named "onChanged"
	--[[ Upvalues[5]:
		[1]: var471_upvw (read and write)
		[2]: NewGui_result1_10_upvr (readonly)
		[3]: search_upvr (readonly)
		[4]: NewGui_upvr_result1_2_upvr (readonly)
		[5]: var525_upvr (readonly)
	]]
	if arg1 == "Text" then
		var471_upvw("All")
		local Text = NewGui_result1_10_upvr.Text
		search_upvr()
		local var561 = false
		if Text ~= "" then
			if Text == "" then
				var561 = false
			else
				var561 = true
			end
		end
		NewGui_upvr_result1_2_upvr.Visible = var561
		if Text ~= "" then
			if Text == "" then
			else
			end
		end
		var525_upvr.Enabled = true
	end
end)
NewGui_result1_10_upvr.FocusLost:Connect(function(arg1) -- Line 2440, Named "focusLost"
	--[[ Upvalues[1]:
		[1]: search_upvr (readonly)
	]]
	if arg1 then
		search_upvr()
	end
end)
module_upvr_2.StateChanged.Event:Connect(function(arg1) -- Line 2451
	--[[ Upvalues[2]:
		[1]: var467_upvw (read and write)
		[2]: any_new_result1_upvr (readonly)
	]]
	if not arg1 and not var467_upvw.Visible then
		any_new_result1_upvr:deselect()
	end
end)
tbl_7_upvr[Enum.KeyCode.Escape.Value] = function(arg1) -- Line 2460
	--[[ Upvalues[2]:
		[1]: var467_upvw (read and write)
		[2]: any_new_result1_upvr (readonly)
	]]
	if arg1 then
	elseif var467_upvw.Visible then
		any_new_result1_upvr:deselect()
	end
end
tbl_7_upvr[Enum.KeyCode.ButtonL2.Value] = function(arg1) -- Line 2468
	--[[ Upvalues[2]:
		[1]: var42_upvw (read and write)
		[2]: Favorite_Item_upvr (readonly)
	]]
	if not var42_upvw then
	else
		local Tool_11 = var42_upvw.Tool
		if not Tool_11 then return end
		if workspace:GetAttribute("InTutorial") then return end
		Favorite_Item_upvr:FireServer(Tool_11)
	end
end
UserInputService_upvr.LastInputTypeChanged:Connect(function(arg1) -- Line 2476, Named "detectGamepad"
	--[[ Upvalues[2]:
		[1]: UserInputService_upvr (readonly)
		[2]: NewGui_result1_4_upvr (readonly)
	]]
	if arg1 == Enum.UserInputType.Gamepad1 then
		if not UserInputService_upvr.VREnabled then
			NewGui_result1_4_upvr.Visible = false
			return
		end
	end
	NewGui_result1_4_upvr.Visible = true
end)
NewGui_result1_4_upvr = GuiService_upvr.MenuOpened
function NewGui_result1_10_upvr() -- Line 2486
	--[[ Upvalues[2]:
		[1]: var467_upvw (read and write)
		[2]: any_new_result1_upvr (readonly)
	]]
	if var467_upvw.Visible then
		any_new_result1_upvr:deselect()
	end
end
NewGui_result1_4_upvr = NewGui_result1_4_upvr:Connect
NewGui_result1_4_upvr(NewGui_result1_10_upvr)
function NewGui_result1_4_upvr(arg1, arg2, arg3) -- Line 2493
	--[[ Upvalues[4]:
		[1]: GuiService_upvr (readonly)
		[2]: FullSlots_upvr (readonly)
		[3]: tbl_8_upvr (readonly)
		[4]: var557_upvw (read and write)
	]]
	if arg2 ~= Enum.UserInputState.Begin then
	else
		if not GuiService_upvr.SelectedObject then return end
		for i_32 = 1, FullSlots_upvr do
			if tbl_8_upvr[i_32].Frame == GuiService_upvr.SelectedObject and tbl_8_upvr[i_32].Tool then
				tbl_8_upvr[i_32]:MoveToInventory()
				var557_upvw()
				return
			end
		end
		var557_upvw()
	end
end
var525_upvr = Enum.CoreGuiType.Backpack
NewGui_upvr_result1_2_upvr = false
NewGui_result1_10_upvr = StarterGui_upvr:SetCoreGuiEnabled
NewGui_result1_10_upvr(var525_upvr, NewGui_upvr_result1_2_upvr)
function module_upvr_2.OpenClose() -- Line 2512, Named "openClose"
	--[[ Upvalues[14]:
		[1]: tbl_10_upvr (readonly)
		[2]: var467_upvw (read and write)
		[3]: AdjustHotbarFrames_upvr (readonly)
		[4]: var463_upvw (read and write)
		[5]: FullSlots_upvr (readonly)
		[6]: tbl_8_upvr (readonly)
		[7]: var81_upvw (read and write)
		[8]: tbl_2_upvr (readonly)
		[9]: UserInputService_upvr (readonly)
		[10]: resizeGamepadHintsFrame_upvr (readonly)
		[11]: var501_upvr (readonly)
		[12]: ContextActionService_upvr (readonly)
		[13]: NewGui_result1_4_upvr (readonly)
		[14]: module_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if not next(tbl_10_upvr) then
		var467_upvw.Visible = not var467_upvw.Visible
		AdjustHotbarFrames_upvr()
		var463_upvw.Active = not var463_upvw.Active
		for i_29 = 1, FullSlots_upvr do
			tbl_8_upvr[i_29]:SetClickability(not var467_upvw.Visible)
			local _
		end
	end
	if var467_upvw.Visible then
		if var81_upvw then
			if tbl_2_upvr[UserInputService_upvr:GetLastInputType()] then
				resizeGamepadHintsFrame_upvr()
				i_29 = UserInputService_upvr
				var501_upvr.Visible = not i_29.VREnabled
			end
			enableGamepadInventoryControl()
			-- KONSTANTWARNING: GOTO [70] #57
		end
	else
		if var81_upvw then
			var501_upvr.Visible = false
		end
		disableGamepadInventoryControl()
	end
	if var467_upvw.Visible then
		ContextActionService_upvr:BindAction("RBXRemoveSlot", NewGui_result1_4_upvr, false, Enum.KeyCode.ButtonX)
	else
		ContextActionService_upvr:UnbindAction("RBXRemoveSlot")
	end
	module_upvr_2.IsOpen = var467_upvw.Visible
	module_upvr_2.StateChanged:Fire(var467_upvw.Visible)
end
while not LocalPlayer_upvw do
	NewGui_result1_4_upvr = wait
	NewGui_result1_4_upvr()
	LocalPlayer_upvw = Players.LocalPlayer
end
NewGui_result1_4_upvr = LocalPlayer_upvw.CharacterAdded
NewGui_result1_10_upvr = OnCharacterAdded
NewGui_result1_4_upvr = NewGui_result1_4_upvr:Connect
NewGui_result1_4_upvr(NewGui_result1_10_upvr)
NewGui_result1_4_upvr = LocalPlayer_upvw.Character
if NewGui_result1_4_upvr then
	NewGui_result1_4_upvr = OnCharacterAdded
	NewGui_result1_4_upvr(LocalPlayer_upvw.Character)
end
NewGui_result1_4_upvr = UserInputService_upvr.InputBegan
function NewGui_result1_10_upvr(arg1, arg2) -- Line 1483, Named "OnInputBegan"
	--[[ Upvalues[7]:
		[1]: var79_upvw (read and write)
		[2]: var78_upvw (read and write)
		[3]: Value_upvr_2 (readonly)
		[4]: tbl_7_upvr (readonly)
		[5]: var65_upvw (read and write)
		[6]: FindFirstNamedAtMouse_upvr (readonly)
		[7]: any_new_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 5. Error Block 23 start (CF ANALYSIS FAILED)
	local function INLINED_6() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: [25] 16. Error Block 20 end (CF ANALYSIS FAILED)
		local var426 = tbl_7_upvr[arg1.KeyCode.Value]
		-- KONSTANTERROR: [25] 16. Error Block 20 start (CF ANALYSIS FAILED)
		return var426
	end
	if arg1.UserInputType == Enum.UserInputType.Keyboard and not var79_upvw and (var78_upvw or arg1.KeyCode.Value == Value_upvr_2) or INLINED_6() then
		var426(arg2)
	end
	local UserInputType = arg1.UserInputType
	if UserInputType == Enum.UserInputType.MouseButton1 or UserInputType == Enum.UserInputType.Touch then
		if var65_upvw.Visible then
			if not FindFirstNamedAtMouse_upvr("CategoryFrame") then
				any_new_result1_upvr:deselect()
			end
		end
	end
	-- KONSTANTERROR: [8] 5. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [57] 39. Error Block 16 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [57] 39. Error Block 16 end (CF ANALYSIS FAILED)
end
NewGui_result1_4_upvr = NewGui_result1_4_upvr:Connect
NewGui_result1_4_upvr(NewGui_result1_10_upvr)
NewGui_result1_4_upvr = UserInputService_upvr.TextBoxFocused
function NewGui_result1_10_upvr() -- Line 2575
	--[[ Upvalues[1]:
		[1]: var79_upvw (read and write)
	]]
	var79_upvw = true
end
NewGui_result1_4_upvr = NewGui_result1_4_upvr:Connect
NewGui_result1_4_upvr(NewGui_result1_10_upvr)
NewGui_result1_4_upvr = UserInputService_upvr.TextBoxFocusReleased
function NewGui_result1_10_upvr() -- Line 2578
	--[[ Upvalues[1]:
		[1]: var79_upvw (read and write)
	]]
	var79_upvw = false
end
NewGui_result1_4_upvr = NewGui_result1_4_upvr:Connect
NewGui_result1_4_upvr(NewGui_result1_10_upvr)
function NewGui_result1_4_upvr() -- Line 2583
	--[[ Upvalues[1]:
		[1]: class_Humanoid_upvw (read and write)
	]]
	if class_Humanoid_upvw then
		class_Humanoid_upvw:UnequipTools()
	end
end
tbl_7_upvr[Value_upvr_2] = NewGui_result1_4_upvr
NewGui_result1_4_upvr = UserInputService_upvr.Changed
NewGui_result1_10_upvr = OnUISChanged
NewGui_result1_4_upvr = NewGui_result1_4_upvr:Connect
NewGui_result1_4_upvr(NewGui_result1_10_upvr)
NewGui_result1_4_upvr = OnUISChanged
NewGui_result1_4_upvr("KeyboardEnabled")
NewGui_result1_10_upvr = Enum.UserInputType.Gamepad1
NewGui_result1_4_upvr = UserInputService_upvr:GetGamepadConnected(NewGui_result1_10_upvr)
if NewGui_result1_4_upvr then
	NewGui_result1_4_upvr = gamepadConnected
	NewGui_result1_4_upvr()
end
NewGui_result1_4_upvr = UserInputService_upvr.GamepadConnected
function NewGui_result1_10_upvr(arg1) -- Line 2595
	if arg1 == Enum.UserInputType.Gamepad1 then
		gamepadConnected()
	end
end
NewGui_result1_4_upvr = NewGui_result1_4_upvr:Connect
NewGui_result1_4_upvr(NewGui_result1_10_upvr)
NewGui_result1_4_upvr = UserInputService_upvr.GamepadDisconnected
function NewGui_result1_10_upvr(arg1) -- Line 2600
	if arg1 == Enum.UserInputType.Gamepad1 then
		gamepadDisconnected()
	end
end
NewGui_result1_4_upvr = NewGui_result1_4_upvr:Connect
NewGui_result1_4_upvr(NewGui_result1_10_upvr)
function NewGui_result1_4_upvr(arg1, arg2) -- Line 2607, Named "SetBackpackEnabled"
	--[[ Upvalues[1]:
		[1]: var43_upvw (read and write)
	]]
	var43_upvw = arg2
end
module_upvr_2.SetBackpackEnabled = NewGui_result1_4_upvr
function NewGui_result1_4_upvr(arg1) -- Line 2611, Named "IsOpened"
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	return module_upvr_2.IsOpen
end
module_upvr_2.IsOpened = NewGui_result1_4_upvr
function NewGui_result1_4_upvr(arg1) -- Line 2615, Named "GetBackpackEnabled"
	--[[ Upvalues[1]:
		[1]: var43_upvw (read and write)
	]]
	return var43_upvw
end
module_upvr_2.GetBackpackEnabled = NewGui_result1_4_upvr
function NewGui_result1_4_upvr(arg1) -- Line 2619, Named "GetStateChangedEvent"
	--[[ Upvalues[1]:
		[1]: Backpack_upvw (read and write)
	]]
	return Backpack_upvw.StateChanged
end
module_upvr_2.GetStateChangedEvent = NewGui_result1_4_upvr
NewGui_result1_4_upvr = game:GetService("RunService").Heartbeat
function NewGui_result1_10_upvr() -- Line 2623
	--[[ Upvalues[2]:
		[1]: OnIconChanged_upvr (readonly)
		[2]: var43_upvw (read and write)
	]]
	OnIconChanged_upvr(var43_upvw)
end
NewGui_result1_4_upvr = NewGui_result1_4_upvr:Connect
NewGui_result1_4_upvr(NewGui_result1_10_upvr)
NewGui_result1_4_upvr = Api.Event
function NewGui_result1_10_upvr(arg1, arg2) -- Line 2626
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 2. Error Block 2 start (CF ANALYSIS FAILED)
	module_upvr_2:SetBackpackEnabled(arg2)
	do
		return
	end
	-- KONSTANTERROR: [2] 2. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 3 end (CF ANALYSIS FAILED)
end
NewGui_result1_4_upvr = NewGui_result1_4_upvr:Connect
NewGui_result1_4_upvr(NewGui_result1_10_upvr)
return module_upvr_2