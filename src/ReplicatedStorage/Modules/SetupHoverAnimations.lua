-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:30
-- Luau version 6, Types version 3
-- Time taken: 0.000994 seconds

local TweenService_upvr = game:GetService("TweenService")
return function(arg1, arg2) -- Line 4, Named "SetupHoverAnimations"
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	local SENSOR = arg1:FindFirstChild("SENSOR", true)
	local UIScale = arg1:FindFirstChild("UIScale", true)
	local var4 = arg2 or 0.05
	local Scale = UIScale.Scale
	local any_Create_result1_upvr_2 = TweenService_upvr:Create(UIScale, TweenInfo.new(0.25), {
		Scale = Scale * (1 + var4);
	})
	local any_Create_result1_upvr = TweenService_upvr:Create(UIScale, TweenInfo.new(0.25), {
		Scale = Scale * (1 - var4);
	})
	SENSOR.MouseButton1Down:Connect(function() -- Line 25
		--[[ Upvalues[1]:
			[1]: any_Create_result1_upvr (readonly)
		]]
		any_Create_result1_upvr:Play()
	end)
	SENSOR.MouseButton1Up:Connect(function() -- Line 29
		--[[ Upvalues[1]:
			[1]: any_Create_result1_upvr_2 (readonly)
		]]
		any_Create_result1_upvr_2:Play()
	end)
	SENSOR.MouseEnter:Connect(function() -- Line 33
		--[[ Upvalues[1]:
			[1]: any_Create_result1_upvr_2 (readonly)
		]]
		any_Create_result1_upvr_2:Play()
	end)
	local any_Create_result1_upvr_3 = TweenService_upvr:Create(UIScale, TweenInfo.new(0.25), {
		Scale = Scale;
	})
	SENSOR.MouseLeave:Connect(function() -- Line 37
		--[[ Upvalues[1]:
			[1]: any_Create_result1_upvr_3 (readonly)
		]]
		any_Create_result1_upvr_3:Play()
	end)
	return SENSOR
end