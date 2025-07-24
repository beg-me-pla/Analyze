-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:14
-- Luau version 6, Types version 3
-- Time taken: 0.003045 seconds

local module = require(script:WaitForChild("Settings"))
local tbl_upvr = {
	punch_shake = {
		FadeInTime = 0;
		Frequency = 0.05;
		Amplitude = 0.35;
		SustainTime = 0.145;
		FadeOutTime = 0.15;
		RotationInfluence = Vector3.new(0.10000, 0.10000, 0.10000);
		PositionInfluence = Vector3.new(0.40000, 0.40000, 0.40000);
	};
	tiny_shake = {
		FadeInTime = 0;
		Frequency = 0.07;
		Amplitude = 0.25;
		SustainTime = 0.05;
		FadeOutTime = 0.2;
		RotationInfluence = Vector3.new(0.10000, 0.10000, 0.10000);
		PositionInfluence = Vector3.new(0.5, 0.5, 0.5);
	};
	tiny_shake_less_aggresive = {
		FadeInTime = 0;
		Frequency = 0.15;
		Amplitude = 0.25;
		SustainTime = 0.1;
		FadeOutTime = 0.3;
		RotationInfluence = Vector3.new(0.10000, 0.10000, 0.10000);
		PositionInfluence = Vector3.new(0.5, 0.5, 0.5);
	};
	medium_shake = {
		FadeInTime = 0;
		Frequency = 0.055;
		Amplitude = 0.98;
		SustainTime = 0.14;
		FadeOutTime = 0.5;
		RotationInfluence = Vector3.new(0.25, 0.25, 0.25);
		PositionInfluence = Vector3.new(3.5, 3.5, 3.5);
	};
	medium_shake_longer = {
		FadeInTime = 0;
		Frequency = 0.1;
		Amplitude = 0.4;
		SustainTime = 0.9;
		FadeOutTime = 0.75;
		RotationInfluence = Vector3.new(0.25, 0.25, 0.25);
		PositionInfluence = Vector3.new(3.5, 3.5, 3.5);
	};
	medium_tiny_shake = {
		FadeInTime = 0;
		Frequency = 0.1;
		Amplitude = 0.5;
		SustainTime = 0.14;
		FadeOutTime = 0.5;
		RotationInfluence = Vector3.new(0.25, 0.25, 0.25);
		PositionInfluence = Vector3.new(3.5, 3.5, 3.5);
	};
	medium_tiny_shake2 = {
		FadeInTime = 0;
		Frequency = 0.15;
		Amplitude = 0.4;
		SustainTime = 0.14;
		FadeOutTime = 0.5;
		RotationInfluence = Vector3.new(0.15000, 0.15000, 0.15000);
		PositionInfluence = Vector3.new(1, 1, 1);
	};
	activate_shake_less_aggresive = {
		FadeInTime = 0;
		Frequency = 0.22;
		Amplitude = 0.1;
		SustainTime = 0.2;
		FadeOutTime = 0.4;
		RotationInfluence = Vector3.new(0.25, 0.25, 0.25);
		PositionInfluence = Vector3.new(0.5, 0.5, 0.5);
	};
	activate_shake = {
		FadeInTime = 0;
		Frequency = 0.15;
		Amplitude = 0.25;
		SustainTime = 0.1;
		FadeOutTime = 0.5;
		RotationInfluence = Vector3.new(0.25, 0.25, 0.25);
		PositionInfluence = Vector3.new(1, 1, 1);
	};
}
local module_3_upvr = require(script:WaitForChild("Check_Can_Shake"))
local typeof_upvr = typeof
local module_2_upvr = require(script:WaitForChild("Shake"))
local CurrentCamera_upvr = workspace.CurrentCamera
local Min_Distance_upvr = module.Min_Distance
local DD_upvr = module.DD
return function(arg1, arg2) -- Line 93
	--[[ Upvalues[7]:
		[1]: module_3_upvr (readonly)
		[2]: typeof_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: module_2_upvr (readonly)
		[5]: CurrentCamera_upvr (readonly)
		[6]: Min_Distance_upvr (readonly)
		[7]: DD_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if module_3_upvr() ~= true then
		do
			return
		end
		local var27
	end
	if arg1 ~= nil and var27 == nil then
		var27 = arg1
	end
	if typeof_upvr(var27) ~= "table" and tbl_upvr[var27] then
		var27 = tbl_upvr[var27]
	end
	if var27 == nil then return end
	if typeof_upvr(var27) ~= "table" then return end
	if var27 then
		for i, v in pairs(var27) do
			module_2_upvr.new()[i] = v
			local var32_upvr
		end
	end
	var32_upvr:Start()
	local var34_upvw
	var32_upvr:BindToRenderStep(module_2_upvr.NextRenderName(), Enum.RenderPriority.Camera.Value, function(arg1_2, arg2_2, arg3) -- Line 129
		--[[ Upvalues[5]:
			[1]: var32_upvr (readonly)
			[2]: var34_upvw (read and write)
			[3]: CurrentCamera_upvr (copied, readonly)
			[4]: Min_Distance_upvr (copied, readonly)
			[5]: DD_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var35
		if not var35 then
			var35 = var34_upvw
		end
		if typeof(var34_upvw) == "BasePart" or typeof(var34_upvw) == "Part" then
			var35 = var34_upvw.Position
		end
		if var35 ~= nil then
			local clamped = math.clamp((CurrentCamera_upvr.CFrame.Position - var35).Magnitude, Min_Distance_upvr, 999999)
			local var37 = var32_upvr.InverseSquare(arg2_2, clamped) * DD_upvr
		end
		local var38 = CurrentCamera_upvr
		var38.CFrame *= CFrame.new(var32_upvr.InverseSquare(arg1_2, clamped) * DD_upvr) * CFrame.Angles(var37.X, var37.Y, var37.Z)
		if arg3 == true then
			var32_upvr:Stop()
			var32_upvr:Destroy()
		end
	end)
	return var32_upvr
end