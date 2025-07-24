-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:36
-- Luau version 6, Types version 3
-- Time taken: 0.001217 seconds

local Click_upvr = game.SoundService.Click
local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(arg1, arg2) -- Line 5
	--[[ Upvalues[1]:
		[1]: Click_upvr (readonly)
	]]
	if arg1.KeyCode == Enum.KeyCode.ButtonR2 or arg1.KeyCode == Enum.KeyCode.E then
		script.Parent.Parent.Parent.Start_Val.Value = true
		Click_upvr.PlaybackSpeed = 1 + math.random(-15, 15) / 100
		Click_upvr.TimePosition = 0
		Click_upvr.Playing = true
	end
end)
UserInputService.InputEnded:Connect(function(arg1, arg2) -- Line 13
	if arg1.KeyCode == Enum.KeyCode.ButtonR2 or arg1.KeyCode == Enum.KeyCode.E then
		script.Parent.Parent.Parent.Start_Val.Value = false
	end
end)
script.Parent.MouseButton1Down:Connect(function() -- Line 18
	--[[ Upvalues[1]:
		[1]: Click_upvr (readonly)
	]]
	script.Parent.Parent.Parent.Start_Val.Value = true
	Click_upvr.PlaybackSpeed = 1 + math.random(-15, 15) / 100
	Click_upvr.TimePosition = 0
	Click_upvr.Playing = true
end)
script.Parent.MouseLeave:Connect(function() -- Line 25
	script.Parent.Parent.Parent.Start_Val.Value = false
end)
script.Parent.MouseButton1Up:Connect(function() -- Line 29
	script.Parent.Parent.Parent.Start_Val.Value = false
end)
local Hover_upvr = game.SoundService.Hover
script.Parent.MouseEnter:Connect(function() -- Line 33
	--[[ Upvalues[1]:
		[1]: Hover_upvr (readonly)
	]]
	Hover_upvr.PlaybackSpeed = 1 + math.random(-15, 15) / 100
	Hover_upvr.TimePosition = 0
	Hover_upvr.Playing = true
end)