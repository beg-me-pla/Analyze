-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:30
-- Luau version 6, Types version 3
-- Time taken: 0.001169 seconds

local function _(arg1, arg2) -- Line 3, Named "BrightenColorHSV"
	local any_ToHSV_result1_2, any_ToHSV_result2, any_ToHSV_result3 = arg1:ToHSV()
	return Color3.fromHSV(any_ToHSV_result1_2, any_ToHSV_result2, math.clamp(any_ToHSV_result3 + arg2, 0, 1))
end
local TweenService_upvr = game:GetService("TweenService")
return function(arg1) -- Line 9, Named "SetupBrightnessAnimation"
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	local InletTexture = arg1:FindFirstChild("InletTexture", true)
	if not arg1:GetAttribute("DefaultColor") then
		arg1:SetAttribute("DefaultColor", InletTexture.ImageColor3)
	end
	local DefaultColor = arg1:GetAttribute("DefaultColor")
	local any_ToHSV_result1, any_ToHSV_result2_2, any_ToHSV_result3_2 = DefaultColor:ToHSV()
	local SENSOR = arg1:FindFirstChild("SENSOR", true)
	local any_Create_result1_upvr_2 = TweenService_upvr:Create(InletTexture, TweenInfo.new(0.25), {
		ImageColor3 = Color3.fromHSV(any_ToHSV_result1, any_ToHSV_result2_2, math.clamp(any_ToHSV_result3_2 + 0.1, 0, 1));
	})
	SENSOR.MouseEnter:Connect(function() -- Line 29
		--[[ Upvalues[1]:
			[1]: any_Create_result1_upvr_2 (readonly)
		]]
		any_Create_result1_upvr_2:Play()
	end)
	local any_Create_result1_upvr = TweenService_upvr:Create(InletTexture, TweenInfo.new(0.25), {
		ImageColor3 = DefaultColor;
	})
	SENSOR.MouseLeave:Connect(function() -- Line 33
		--[[ Upvalues[1]:
			[1]: any_Create_result1_upvr (readonly)
		]]
		any_Create_result1_upvr:Play()
	end)
	return SENSOR
end