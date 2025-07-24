-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:53
-- Luau version 6, Types version 3
-- Time taken: 0.001031 seconds

local TweenService = game:GetService("TweenService")
local TweenInfo_new_result1 = TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
script.Parent.TextLabel.Size = UDim2.new(0.9, 0, 0.9, 0)
if game:GetService("UserInputService").TouchEnabled == false then
	local Hover_upvr = game.SoundService.Hover
	local any_Create_result1_upvr = TweenService:Create(script.Parent.TextLabel, TweenInfo_new_result1, {
		Size = UDim2.new(1, 0, 1, 0);
	})
	script.Parent.MouseEnter:Connect(function() -- Line 10
		--[[ Upvalues[2]:
			[1]: Hover_upvr (readonly)
			[2]: any_Create_result1_upvr (readonly)
		]]
		Hover_upvr.PlaybackSpeed = 1 + math.random(-15, 15) / 100
		Hover_upvr.TimePosition = 0
		Hover_upvr.Playing = true
		any_Create_result1_upvr:Play()
	end)
	local any_Create_result1_upvr_2 = TweenService:Create(script.Parent.TextLabel, TweenInfo_new_result1, {
		Size = UDim2.new(0.9, 0, 0.9, 0);
	})
	script.Parent.MouseLeave:Connect(function() -- Line 16
		--[[ Upvalues[1]:
			[1]: any_Create_result1_upvr_2 (readonly)
		]]
		any_Create_result1_upvr_2:Play()
	end)
end
local Click_upvr = game.SoundService.Click
script.Parent.MouseButton1Click:Connect(function() -- Line 20
	--[[ Upvalues[1]:
		[1]: Click_upvr (readonly)
	]]
	Click_upvr.PlaybackSpeed = 1 + math.random(-15, 15) / 100
	Click_upvr.TimePosition = 0
	Click_upvr.Playing = true
end)