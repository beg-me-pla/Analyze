-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:35
-- Luau version 6, Types version 3
-- Time taken: 0.001410 seconds

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
local Purchase_Object_upvr = game.ReplicatedStorage.GameEvents.Purchase_Object
local Object_ID_upvr = script.Parent.Parent.Object_ID
local Green_VAL_upvr = game.Players.LocalPlayer.PlayerGui.Gradient_UI.Green_VAL
local Red_VAL_upvr = game.Players.LocalPlayer.PlayerGui.Gradient_UI.Red_VAL
local Error_upvr = game.SoundService.Error
any_Create_result1_upvr_2.Completed:Connect(function() -- Line 28
	--[[ Upvalues[6]:
		[1]: time_result1_upvw (read and write)
		[2]: Purchase_Object_upvr (readonly)
		[3]: Object_ID_upvr (readonly)
		[4]: Green_VAL_upvr (readonly)
		[5]: Red_VAL_upvr (readonly)
		[6]: Error_upvr (readonly)
	]]
	if 0.95 <= time() - time_result1_upvw then
		if script.Parent.Parent.Cost_Val.Value <= game.Players.LocalPlayer.leaderstats['$'].Value then
			Purchase_Object_upvr:FireServer(Object_ID_upvr.Value)
			Green_VAL_upvr.Value = true
		else
			Red_VAL_upvr.Value = true
			Error_upvr.PlaybackSpeed = 1 + math.random(-15, 15) / 100
			Error_upvr.TimePosition = 0
			Error_upvr.Playing = true
		end
		script.Parent.Value = false
	end
end)