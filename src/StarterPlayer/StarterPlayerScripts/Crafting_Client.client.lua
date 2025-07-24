-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:08
-- Luau version 6, Types version 3
-- Time taken: 0.001568 seconds

-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
local Players = game:GetService("Players")
local UserInputService_upvr = game:GetService("UserInputService")
local _ = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer
local Character_upvw = LocalPlayer.Character
if not Character_upvw then
	Character_upvw = LocalPlayer.CharacterAdded:Wait()
end
LocalPlayer.CharacterAdded:Connect(function(arg1) -- Line 14
	--[[ Upvalues[1]:
		[1]: Character_upvw (read and write)
	]]
	Character_upvw = arg1
end)
local CraftingCancel = Players.LocalPlayer.PlayerGui:WaitForChild("CraftingCancel")
local TextLabel_upvr = CraftingCancel.Frame.CancelFrame:WaitForChild("Cancel"):FindFirstChild("TextLabel")
local CancelBG_upvr = CraftingCancel.Frame.CancelFrame.CancelBG
local CancelIcon_upvr = CancelBG_upvr:FindFirstChild("CancelIcon")
local function _() -- Line 43, Named "UpdateButtonLabels"
	--[[ Upvalues[4]:
		[1]: UserInputService_upvr (readonly)
		[2]: TextLabel_upvr (readonly)
		[3]: CancelIcon_upvr (readonly)
		[4]: CancelBG_upvr (readonly)
	]]
	if UserInputService_upvr.TouchEnabled then
		TextLabel_upvr.Text = "Cancel Recipe"
		CancelIcon_upvr.Visible = false
	else
		if UserInputService_upvr.GamepadEnabled then
			local any_GetImageForKeyCode_result1 = UserInputService_upvr:GetImageForKeyCode(Enum.KeyCode.ButtonB)
			TextLabel_upvr.Text = "Cancel Recipe"
			if any_GetImageForKeyCode_result1 then
				CancelIcon_upvr.Image = any_GetImageForKeyCode_result1
				CancelBG_upvr.Visible = true
			else
				CancelBG_upvr.Visible = false
			end
		end
		TextLabel_upvr.Text = "[C] Cancel Recipe"
		CancelBG_upvr.Visible = false
	end
end
if UserInputService_upvr.TouchEnabled then
	TextLabel_upvr.Text = "Cancel Recipe"
	CancelIcon_upvr.Visible = false
	-- KONSTANTWARNING: GOTO [176] #116
end
-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [150] 98. Error Block 16 start (CF ANALYSIS FAILED)
if UserInputService_upvr.GamepadEnabled then
	local any_GetImageForKeyCode_result1_2 = UserInputService_upvr:GetImageForKeyCode(Enum.KeyCode.ButtonB)
	TextLabel_upvr.Text = "Cancel Recipe"
	if any_GetImageForKeyCode_result1_2 then
		CancelIcon_upvr.Image = any_GetImageForKeyCode_result1_2
		CancelBG_upvr.Visible = true
	else
		CancelBG_upvr.Visible = false
	end
else
	TextLabel_upvr.Text = "[C] Cancel Recipe"
	CancelBG_upvr.Visible = false
end
-- KONSTANTERROR: [150] 98. Error Block 16 end (CF ANALYSIS FAILED)