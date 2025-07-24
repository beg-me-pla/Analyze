-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:16
-- Luau version 6, Types version 3
-- Time taken: 0.013029 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local tbl_upvr_2 = {
	EffectInstance = nil;
	EmitDivider = 1;
	CurrentScale = 1;
	OriginalScale = {};
}
local TweenService_upvr = game:GetService("TweenService")
local RunService_upvr = game:GetService("RunService")
local function evalColorSequence_upvr(arg1, arg2) -- Line 26, Named "evalColorSequence"
	if arg2 == 0 then
		return arg1.Keypoints[1].Value
	end
	if arg2 == 1 then
		return arg1.Keypoints[#arg1.Keypoints].Value
	end
	for i = 1, #arg1.Keypoints - 1 do
		local var6 = arg1.Keypoints[i]
		local var7 = arg1.Keypoints[i + 1]
		if var6.Time <= arg2 and arg2 < var7.Time then
			local var8 = (arg2 - var6.Time) / (var7.Time - var6.Time)
			return Color3.new((var7.Value.R - var6.Value.R) * var8 + var6.Value.R, (var7.Value.G - var6.Value.G) * var8 + var6.Value.G, (var7.Value.B - var6.Value.B) * var8 + var6.Value.B)
		end
	end
end
local module_upvr = require(script.Parent:WaitForChild("TableUtil"))
function module_2_upvr.new(arg1) -- Line 54
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: module_2_upvr (readonly)
	]]
	local any_Reconcile_result1 = module_upvr.Reconcile(arg1, tbl_upvr_2)
	local module = {}
	local clone = any_Reconcile_result1.EffectInstance:Clone()
	if not clone then
		clone = Instance.new("Part")
	end
	module.EffectInstance = clone
	module.EmitDivider = any_Reconcile_result1.EmitDivider or 1
	module.CurrentScale = any_Reconcile_result1.CurrentScale or 1
	local OriginalScale = any_Reconcile_result1.OriginalScale
	if not OriginalScale then
		OriginalScale = {}
	end
	module.OriginalScale = OriginalScale
	return setmetatable(module, module_2_upvr)
end
function module_2_upvr.SetCFrame(arg1, arg2) -- Line 66
	if not arg1.EffectInstance then
		return false
	end
	if arg1.EffectInstance:IsA("BasePart") or arg1.EffectInstance:IsA("Part") or arg1.EffectInstance:IsA("MeshPart") then
		arg1.EffectInstance.CFrame = arg2
	elseif arg1.EffectInstance:IsA("Model") and arg1.EffectInstance.PrimaryPart then
		arg1.EffectInstance:SetPrimaryPartCFrame(arg2)
	end
	return true
end
function module_2_upvr.AttachTo(arg1, arg2) -- Line 78
	local WeldConstraint = Instance.new("WeldConstraint")
	arg1.EffectInstance.Massless = true
	arg1.EffectInstance.CanCollide = false
	WeldConstraint.Part0 = arg2
	WeldConstraint.Part1 = arg1.EffectInstance
	WeldConstraint.Parent = arg1.EffectInstance
	return WeldConstraint
end
function module_2_upvr.Play(arg1, arg2) -- Line 92
	if not arg1.EffectInstance then
		return false
	end
	local descendants = arg1.EffectInstance:GetDescendants()
	table.insert(descendants, arg1.EffectInstance)
	local var22 = arg2
	if not var22 then
		var22 = {}
	end
	local var23_upvw = var22
	for _, v_upvr in ipairs(descendants) do
		if v_upvr:IsA("ParticleEmitter") then
			local var27_upvr = v_upvr:GetAttribute("EmitDelay") or 0
			if 0 < var27_upvr then
				local var29_upvr = v_upvr:GetAttribute("EmitRepeat") or 1
				local var30_upvr = v_upvr:GetAttribute("EmitCount") or 1
				task.delay(var27_upvr, function() -- Line 107
					--[[ Upvalues[6]:
						[1]: var29_upvr (readonly)
						[2]: var23_upvw (read and write)
						[3]: v_upvr (readonly)
						[4]: var30_upvr (readonly)
						[5]: arg1 (readonly)
						[6]: var27_upvr (readonly)
					]]
					for _ = 1, var29_upvr do
						if not table.find(var23_upvw, v_upvr) and not table.find(var23_upvw, v_upvr.Name) then
							v_upvr:Emit(math.ceil(var30_upvr / (arg1.EmitDivider or 1)))
						end
						task.wait(var27_upvr)
					end
				end)
			else
				for _ = 1, var29_upvr do
					if not table.find(var23_upvw, v_upvr) and not table.find(var23_upvw, v_upvr.Name) then
						v_upvr:Emit(math.ceil(var30_upvr / arg1.EmitDivider))
					end
				end
			end
		end
	end
	return true
end
function module_2_upvr.Emit(arg1, arg2, arg3) -- Line 128
	if not arg1.EffectInstance then
		return false
	end
	local var36 = arg3
	if not var36 then
		var36 = {}
	end
	local var37 = var36
	for _, v_2 in ipairs(arg1.EffectInstance:GetDescendants()) do
		if v_2:IsA("ParticleEmitter") and not table.find(var37, v_2) and not table.find(var37, v_2.Name) then
			v_2:Emit(math.ceil((arg2 or 1) / arg1.EmitDivider))
		end
	end
	return true
end
function module_2_upvr.EmitForSeconds(arg1, arg2, arg3) -- Line 145
	if not arg1.EffectInstance then
		return false
	end
	local var63 = arg3
	if not var63 then
		var63 = {}
	end
	local var64 = var63
	for _, v_3_upvr in ipairs(arg1.EffectInstance:GetDescendants()) do
		if v_3_upvr:IsA("ParticleEmitter") then
			local var68 = v_3_upvr:GetAttribute("EmitDelay") or 0
			if not table.find(var64, v_3_upvr) and not table.find(var64, v_3_upvr.Name) then
				if 0 < var68 then
					task.delay(var68, function() -- Line 158
						--[[ Upvalues[1]:
							[1]: v_3_upvr (readonly)
						]]
						v_3_upvr.Enabled = true
					end)
				else
					v_3_upvr.Enabled = true
				end
				table.insert({}, v_3_upvr)
			end
		end
	end
	local tbl_upvr_5 = {}
	task.delay(arg2 or 1, function() -- Line 169
		--[[ Upvalues[1]:
			[1]: tbl_upvr_5 (readonly)
		]]
		for _, v_4 in ipairs(tbl_upvr_5) do
			if v_4 then
				v_4.Enabled = false
			end
		end
	end)
	return true
end
function module_2_upvr.Toggle(arg1, arg2, arg3) -- Line 179
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	if not arg1.EffectInstance then
		return false
	end
	local var77 = arg3
	if not var77 then
		var77 = {}
	end
	local _ = var77
	local ipairs_result1_3, ipairs_result2_8, ipairs_result3_7 = ipairs(arg1.EffectInstance:GetDescendants())
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [82] 63. Error Block 22 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [82] 63. Error Block 22 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 15. Error Block 36 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [82.8]
	if nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		if not nil and not nil then
			if arg2 ~= nil then
			else
			end
			-- KONSTANTWARNING: GOTO [82] #63
		end
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil then
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			if nil or nil then
			end
		end
	end
	-- KONSTANTERROR: [19] 15. Error Block 36 end (CF ANALYSIS FAILED)
end
function module_2_upvr.SetOriginalScale(arg1, arg2) -- Line 200
	arg1.OriginalScale[arg2] = {}
	arg1.OriginalScale[arg2].Size = arg2.Size
	arg1.OriginalScale[arg2].Speed = arg2.Speed
	arg1.OriginalScale[arg2].Acceleration = arg2.Acceleration
end
function module_2_upvr.SetScale(arg1, arg2, arg3, arg4) -- Line 207
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 38 start (CF ANALYSIS FAILED)
	if not arg1.EffectInstance or not arg1.OriginalScale then
		return false
	end
	local var90 = arg3
	if not var90 then
		var90 = {}
	end
	local _ = var90
	arg1.CurrentScale = arg2
	local ipairs_result1_2, ipairs_result2_6, ipairs_result3 = ipairs(arg1.EffectInstance:GetDescendants())
	-- KONSTANTERROR: [0] 1. Error Block 38 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [154] 106. Error Block 24 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [154] 106. Error Block 24 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 18. Error Block 42 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [154.9]
	if nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		if not nil and not nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if not nil or arg4 then
			end
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [154.10]
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [154.11]
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [154.12]
			for _, _ in nil do
			end
			-- KONSTANTWARNING: GOTO [154] #106
		end
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil then
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil then
			end
		end
	end
	-- KONSTANTERROR: [24] 18. Error Block 42 end (CF ANALYSIS FAILED)
end
function module_2_upvr.SetColor(arg1, arg2, arg3) -- Line 250
	if not arg1.EffectInstance then
		return false
	end
	local var99 = arg3
	if not var99 then
		var99 = {}
	end
	local var100 = var99
	for _, v_6 in ipairs(arg1.EffectInstance:GetDescendants()) do
		if v_6:IsA("ParticleEmitter") and not table.find(var100, v_6) and not table.find(var100, v_6.Name) then
			v_6.Color = arg2
		end
	end
	return true
end
function module_2_upvr.SetSize(arg1, arg2, arg3) -- Line 266
	if not arg1.EffectInstance then
		return false
	end
	local var108 = arg3
	if not var108 then
		var108 = {}
	end
	local var109 = var108
	for _, v_7 in ipairs(arg1.EffectInstance:GetDescendants()) do
		if v_7:IsA("ParticleEmitter") and not table.find(var109, v_7) and not table.find(var109, v_7.Name) then
			v_7.Size = arg2
		end
	end
	return true
end
function module_2_upvr.SetDelayTimeScale(arg1, arg2, arg3) -- Line 282
	if not arg1.EffectInstance then
		return false
	end
	local var117 = arg3
	if not var117 then
		var117 = {}
	end
	local var118 = var117
	for _, v_8 in ipairs(arg1.EffectInstance:GetDescendants()) do
		if v_8:IsA("ParticleEmitter") and not table.find(var118, v_8) and not table.find(var118, v_8.Name) and v_8:GetAttribute("EmitDelay") then
			v_8:SetAttribute("EmitDelay", (v_8:GetAttribute("EmitDelay")) * (1 / arg2))
		end
	end
	return true
end
function module_2_upvr.TweenScale(arg1, arg2, arg3, arg4) -- Line 299
	--[[ Upvalues[2]:
		[1]: TweenService_upvr (readonly)
		[2]: RunService_upvr (readonly)
	]]
	local var122_upvw = arg4
	if not var122_upvw then
		var122_upvw = {}
	end
	task.spawn(function() -- Line 302
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: arg3 (readonly)
			[3]: arg2 (readonly)
			[4]: TweenService_upvr (copied, readonly)
			[5]: var122_upvw (read and write)
			[6]: RunService_upvr (copied, readonly)
		]]
		local os_clock_result1 = os.clock()
		local CurrentScale = arg1.CurrentScale
		arg1.CurrentScale = arg3
		repeat
			arg1:SetScale(CurrentScale + (arg3 - CurrentScale) * TweenService_upvr:GetValue(math.clamp((os.clock() - os_clock_result1) / arg2.Time, 0, 1), arg2.EasingStyle, arg2.EasingDirection), var122_upvw)
			RunService_upvr.Heartbeat:Wait()
		until arg2.Time < os.clock() - os_clock_result1 and not arg1.EffectInstance
		if not arg1.EffectInstance then
		else
			arg1:SetScale(arg3, var122_upvw)
		end
	end)
end
function module_2_upvr.TweenColor(arg1, arg2, arg3, arg4) -- Line 325
	--[[ Upvalues[3]:
		[1]: evalColorSequence_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: RunService_upvr (readonly)
	]]
	local var130 = arg4
	if not var130 then
		var130 = {}
	end
	local var131 = var130
	for _, v_9 in ipairs(arg1.EffectInstance:GetDescendants()) do
		if v_9:IsA("ParticleEmitter") and not table.find(var131, v_9) and not table.find(var131, v_9.Name) then
			table.insert({}, v_9)
		end
	end
	local tbl_upvr_3 = {}
	local tbl_upvr_4 = {}
	local function TickColor_upvr(arg1_2) -- Line 338, Named "TickColor"
		--[[ Upvalues[4]:
			[1]: tbl_upvr_3 (readonly)
			[2]: tbl_upvr_4 (readonly)
			[3]: arg3 (readonly)
			[4]: evalColorSequence_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		for _, v_10 in ipairs(tbl_upvr_3) do
			if v_10 then
				if not tbl_upvr_4[v_10] then
					tbl_upvr_4[v_10] = v_10.Color
				end
				for _, v_11 in ipairs(arg3.Keypoints) do
					local evalColorSequence_upvr_result1 = evalColorSequence_upvr(tbl_upvr_4[v_10], v_11.Time)
					local Value = v_11.Value
					table.insert({}, ColorSequenceKeypoint.new(v_11.Time, Color3.new(evalColorSequence_upvr_result1.R + (Value.R - evalColorSequence_upvr_result1.R) * arg1_2, evalColorSequence_upvr_result1.G + (Value.G - evalColorSequence_upvr_result1.G) * arg1_2, evalColorSequence_upvr_result1.B + (Value.B - evalColorSequence_upvr_result1.B) * arg1_2)))
					local var162
				end
				v_10.Color = ColorSequence.new(var162)
			end
		end
	end
	task.spawn(function() -- Line 359
		--[[ Upvalues[4]:
			[1]: arg2 (readonly)
			[2]: TweenService_upvr (copied, readonly)
			[3]: TickColor_upvr (readonly)
			[4]: RunService_upvr (copied, readonly)
		]]
		local os_clock_result1_2 = os.clock()
		repeat
			TickColor_upvr(TweenService_upvr:GetValue(math.clamp((os.clock() - os_clock_result1_2) / arg2.Time, 0, 1), arg2.EasingStyle, arg2.EasingDirection))
			RunService_upvr.Heartbeat:Wait()
		until arg2.Time < os.clock() - os_clock_result1_2
		TickColor_upvr(1)
	end)
end
function module_2_upvr.IncrementDelay(arg1, arg2, arg3) -- Line 376
	local var169 = arg3
	if not var169 then
		var169 = {}
	end
	local var170 = var169
	for _, v_12 in ipairs(arg1.EffectInstance:GetDescendants()) do
		if v_12:IsA("ParticleEmitter") and not table.find(var170, v_12) and not table.find(var170, v_12.Name) and v_12:GetAttribute("EmitDelay") then
			v_12:SetAttribute("EmitDelay", v_12:GetAttribute("EmitDelay") + arg2)
		end
	end
end
function module_2_upvr.UnLock(arg1, arg2) -- Line 389
	local var178 = arg2
	if not var178 then
		var178 = {}
	end
	local var179 = var178
	for _, v_13 in ipairs(arg1.EffectInstance:GetDescendants()) do
		if v_13:IsA("ParticleEmitter") and not table.find(var179, v_13) and not table.find(var179, v_13.Name) then
			v_13.LockedToPart = false
		end
	end
end
function module_2_upvr.Destroy(arg1) -- Line 401
	if arg1.EffectInstance then
		arg1.EffectInstance:Destroy()
	end
	table.clear(arg1)
	setmetatable(arg1, nil)
end
return module_2_upvr