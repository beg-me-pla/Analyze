-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:11
-- Luau version 6, Types version 3
-- Time taken: 0.005962 seconds

local GuiService_upvr = game:GetService("GuiService")
local UserInputService_upvr = game:GetService("UserInputService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local tbl_upvr = {Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2, Enum.UserInputType.Touch}
local module_upvr = {
	Valid = true;
	AutoComplete = nil;
	ProcessEntry = nil;
	OnTextChanged = nil;
	Cmdr = nil;
	HistoryState = nil;
}
if not LocalPlayer_upvr then
	return {}
end
local Frame_upvr = LocalPlayer_upvr:WaitForChild("PlayerGui"):WaitForChild("Cmdr"):WaitForChild("Frame")
local Line_upvr = Frame_upvr:WaitForChild("Line")
local Entry_upvr = Frame_upvr:WaitForChild("Entry")
Line_upvr.Parent = nil
function module_upvr.UpdateLabel(arg1) -- Line 31
	--[[ Upvalues[2]:
		[1]: Entry_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
	]]
	Entry_upvr.TextLabel.Text = LocalPlayer_upvr.Name..'@'..arg1.Cmdr.PlaceName..'$'
end
function module_upvr.GetLabel(arg1) -- Line 36
	--[[ Upvalues[1]:
		[1]: Entry_upvr (readonly)
	]]
	return Entry_upvr.TextLabel.Text
end
function module_upvr.UpdateWindowHeight(arg1) -- Line 41
	--[[ Upvalues[1]:
		[1]: Frame_upvr (readonly)
	]]
	local var9 = Frame_upvr.UIListLayout.AbsoluteContentSize.Y + Frame_upvr.UIPadding.PaddingTop.Offset + Frame_upvr.UIPadding.PaddingBottom.Offset
	Frame_upvr.Size = UDim2.new(Frame_upvr.Size.X.Scale, Frame_upvr.Size.X.Offset, 0, math.clamp(var9, 0, 300))
	Frame_upvr.CanvasPosition = Vector2.new(0, var9)
end
function module_upvr.AddLine(arg1, arg2, arg3) -- Line 50
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: Line_upvr (readonly)
		[3]: Frame_upvr (readonly)
	]]
	local var10 = arg3
	if not var10 then
		var10 = {}
	end
	arg3 = var10
	local var11 = arg3
	local tostring_result1 = tostring(arg2)
	if typeof(var11) == "Color3" then
		var11 = {
			Color = var11;
		}
	end
	if #tostring_result1 == 0 then
		module_upvr:UpdateWindowHeight()
	else
		local clone = Line_upvr:Clone()
		clone.Text = arg1.Cmdr.Util.EmulateTabstops(tostring_result1 or "nil", 8)
		local Color = var11.Color
		if not Color then
			Color = clone.TextColor3
		end
		clone.TextColor3 = Color
		clone.RichText = var11.RichText or false
		clone.Parent = Frame_upvr
	end
end
function module_upvr.IsVisible(arg1) -- Line 73
	--[[ Upvalues[1]:
		[1]: Frame_upvr (readonly)
	]]
	return Frame_upvr.Visible
end
local TextChatService_upvr = game:GetService("TextChatService")
function module_upvr.SetVisible(arg1, arg2) -- Line 78
	--[[ Upvalues[4]:
		[1]: Frame_upvr (readonly)
		[2]: TextChatService_upvr (readonly)
		[3]: Entry_upvr (readonly)
		[4]: UserInputService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	Frame_upvr.Visible = arg2
	local var17
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [45] 30. Error Block 3 start (CF ANALYSIS FAILED)
	var17 = UserInputService_upvr
	arg1.PreviousMouseBehavior = var17.MouseBehavior
	var17 = Enum.MouseBehavior.Default
	UserInputService_upvr.MouseBehavior = var17
	do
		return
	end
	-- KONSTANTERROR: [45] 30. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [56] 37. Error Block 20 start (CF ANALYSIS FAILED)
	var17 = TextChatService_upvr
	if arg1.PreviousChatWindowConfigurationEnabled ~= nil then
		var17 = arg1.PreviousChatWindowConfigurationEnabled
	else
		var17 = true
	end
	var17.ChatWindowConfiguration.Enabled = var17
	if arg1.PreviousChatInputBarConfigurationEnabled ~= nil then
	else
	end
	TextChatService_upvr.ChatInputBarConfiguration.Enabled = true
	Entry_upvr.TextBox:ReleaseFocus()
	arg1.AutoComplete:Hide()
	if arg1.PreviousMouseBehavior then
		UserInputService_upvr.MouseBehavior = arg1.PreviousMouseBehavior
		arg1.PreviousMouseBehavior = nil
	end
	-- KONSTANTERROR: [56] 37. Error Block 20 end (CF ANALYSIS FAILED)
end
function module_upvr.Hide(arg1) -- Line 111
	return arg1:SetVisible(false)
end
function module_upvr.Show(arg1) -- Line 116
	return arg1:SetVisible(true)
end
function module_upvr.SetEntryText(arg1, arg2) -- Line 121
	--[[ Upvalues[2]:
		[1]: Entry_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	Entry_upvr.TextBox.Text = arg2
	if arg1:IsVisible() then
		Entry_upvr.TextBox:CaptureFocus()
		Entry_upvr.TextBox.CursorPosition = #arg2 + 1
		module_upvr:UpdateWindowHeight()
	end
end
function module_upvr.GetEntryText(arg1) -- Line 132
	--[[ Upvalues[1]:
		[1]: Entry_upvr (readonly)
	]]
	return Entry_upvr.TextBox.Text:gsub('\t', "")
end
function module_upvr.SetIsValidInput(arg1, arg2, arg3) -- Line 138
	--[[ Upvalues[1]:
		[1]: Entry_upvr (readonly)
	]]
	local var18
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var18 = Color3.fromRGB(255, 255, 255)
		return var18
	end
	if not arg2 or not INLINED() then
		var18 = Color3.fromRGB(255, 73, 73)
	end
	Entry_upvr.TextBox.TextColor3 = var18
	arg1.Valid = arg2
	arg1._errorText = arg3
end
function module_upvr.HideInvalidState(arg1) -- Line 144
	--[[ Upvalues[1]:
		[1]: Entry_upvr (readonly)
	]]
	Entry_upvr.TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
end
function module_upvr.LoseFocus(arg1, arg2) -- Line 149
	--[[ Upvalues[3]:
		[1]: Entry_upvr (readonly)
		[2]: Frame_upvr (readonly)
		[3]: GuiService_upvr (readonly)
	]]
	arg1:ClearHistoryState()
	if Frame_upvr.Visible and not GuiService_upvr.MenuIsOpen then
		Entry_upvr.TextBox:CaptureFocus()
	elseif GuiService_upvr.MenuIsOpen and Frame_upvr.Visible then
		arg1:Hide()
	end
	if arg2 and arg1.Valid then
		wait()
		arg1:SetEntryText("")
		arg1.ProcessEntry(Entry_upvr.TextBox.Text)
	elseif arg2 then
		arg1:AddLine(arg1._errorText, Color3.fromRGB(255, 153, 153))
	end
end
function module_upvr.TraverseHistory(arg1, arg2) -- Line 170
	local any_GetHistory_result1 = arg1.Cmdr.Dispatcher:GetHistory()
	local var20
	if arg1.HistoryState == nil then
		local tbl = {}
		var20 = #any_GetHistory_result1
		tbl.Position = var20 + 1
		tbl.InitialText = arg1:GetEntryText()
		arg1.HistoryState = tbl
	end
	var20 = arg1.HistoryState.Position + arg2
	arg1.HistoryState.Position = math.clamp(var20, 1, #any_GetHistory_result1 + 1)
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var20 = arg1.HistoryState.InitialText
		return var20
	end
	if arg1.HistoryState.Position ~= #any_GetHistory_result1 + 1 or not INLINED_2() then
		var20 = any_GetHistory_result1[arg1.HistoryState.Position]
	end
	arg1:SetEntryText(var20)
end
function module_upvr.ClearHistoryState(arg1) -- Line 188
	arg1.HistoryState = nil
end
function module_upvr.SelectVertical(arg1, arg2) -- Line 192
	if arg1.AutoComplete:IsVisible() and not arg1.HistoryState then
		arg1.AutoComplete:Select(arg2)
	else
		arg1:TraverseHistory(arg2)
	end
end
local const_number_upvw = 0
local const_number_upvw_2 = 0
function module_upvr.BeginInput(arg1, arg2, arg3) -- Line 203
	--[[ Upvalues[5]:
		[1]: GuiService_upvr (readonly)
		[2]: const_number_upvw (read and write)
		[3]: const_number_upvw_2 (read and write)
		[4]: tbl_upvr (readonly)
		[5]: Frame_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 2 start (CF ANALYSIS FAILED)
	arg1:Hide()
	-- KONSTANTERROR: [4] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 6. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 6. Error Block 3 end (CF ANALYSIS FAILED)
end
Entry_upvr.TextBox.FocusLost:Connect(function(arg1) -- Line 314
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr:LoseFocus(arg1)
end)
UserInputService_upvr.InputBegan:Connect(function(arg1, arg2) -- Line 318
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr:BeginInput(arg1, arg2)
end)
Entry_upvr.TextBox:GetPropertyChangedSignal("Text"):Connect(function() -- Line 322
	--[[ Upvalues[3]:
		[1]: Frame_upvr (readonly)
		[2]: Entry_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	Frame_upvr.CanvasPosition = Vector2.new(0, Frame_upvr.AbsoluteCanvasSize.Y)
	if Entry_upvr.TextBox.Text:match('\t') then
		Entry_upvr.TextBox.Text = Entry_upvr.TextBox.Text:gsub('\t', "")
	elseif module_upvr.OnTextChanged then
		return module_upvr.OnTextChanged(Entry_upvr.TextBox.Text)
	end
end)
Frame_upvr.ChildAdded:Connect(function() -- Line 334
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	task.defer(module_upvr.UpdateWindowHeight)
end)
return module_upvr