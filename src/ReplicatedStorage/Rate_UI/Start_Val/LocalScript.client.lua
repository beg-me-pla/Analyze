-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:36
-- Luau version 6, Types version 3
-- Time taken: 0.001742 seconds

local TweenService = game:GetService("TweenService")
local Hold_Down_Val_upvr = script.Parent.Parent.CanvasGroup.TextButton.Hold_Down_Val
local any_Create_result1_upvr_2 = TweenService:Create(Hold_Down_Val_upvr, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
	Size = UDim2.new(1, 0, 1, 0);
})
local time_result1_upvw = time()
local any_Create_result1_upvr = TweenService:Create(Hold_Down_Val_upvr, TweenInfo.new(0.07, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
	BackgroundTransparency = 0.5;
})
script.Parent:GetPropertyChangedSignal("Value"):Connect(function() -- Line 8
	--[[ Upvalues[4]:
		[1]: time_result1_upvw (read and write)
		[2]: any_Create_result1_upvr_2 (readonly)
		[3]: Hold_Down_Val_upvr (readonly)
		[4]: any_Create_result1_upvr (readonly)
	]]
	time_result1_upvw = time()
	if script.Parent.Value == true then
		any_Create_result1_upvr_2:Cancel()
		Hold_Down_Val_upvr.Size = UDim2.new(0, 0, 1, 0)
		Hold_Down_Val_upvr.BackgroundTransparency = 1
		any_Create_result1_upvr_2:Play()
		any_Create_result1_upvr:Play()
		time_result1_upvw = time()
	else
		any_Create_result1_upvr_2:Cancel()
		any_Create_result1_upvr:Cancel()
		Hold_Down_Val_upvr.BackgroundTransparency = 1
	end
end)
local Send_Rating_upvr = game.ReplicatedStorage.GameEvents.Send_Rating
any_Create_result1_upvr_2.Completed:Connect(function() -- Line 27
	--[[ Upvalues[2]:
		[1]: time_result1_upvw (read and write)
		[2]: Send_Rating_upvr (readonly)
	]]
	if 0.95 <= time() - time_result1_upvw then
		script.Parent.Parent.Show_Val.Value = false
		local SOME_2 = game.Players:FindFirstChild(script.Parent.Parent.PLR_1.Value)
		if SOME_2 then
			if SOME_2.Character then
				local Show_The_Val = SOME_2.Character:FindFirstChild("Show_The_Val")
				local Character_Highlight_Click = SOME_2.Character:FindFirstChild("Character_Highlight_Click")
				if Show_The_Val and Character_Highlight_Click then
					Show_The_Val.Value = false
					Character_Highlight_Click.Value = false
				end
			end
		end
		Send_Rating_upvr:FireServer(script.Parent.Parent.PLR_1.Value, script.Parent.Parent.Rating_Val.Value)
	end
end)