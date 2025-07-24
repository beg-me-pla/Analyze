-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:15
-- Luau version 6, Types version 3
-- Time taken: 0.004451 seconds

local clock_upvr = os.clock
function DiscretePulse(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 9
	return math.clamp((arg3) / (2 * arg4) - math.abs((arg1 - arg5 * arg2 + 0.5 * arg3) / arg4), arg6, arg7)
end
function NoiseBetween(arg1, arg2, arg3, arg4, arg5) -- Line 13
	return arg4 + (arg5 - arg4) * (math.noise(arg1, arg2, arg3) + 0.5)
end
function CubicBezier(arg1, arg2, arg3, arg4, arg5) -- Line 17
	return arg1 * (1 - arg5) ^ 3 + arg2 * 3 * arg5 * (1 - arg5) ^ 2 + arg3 * 3 * (1 - arg5) * arg5 ^ 2 + arg4 * arg5 ^ 3
end
local Part_upvr = Instance.new("Part")
Part_upvr.TopSurface = 0
Part_upvr.BottomSurface = 0
Part_upvr.Anchored = true
Part_upvr.CanCollide = false
Part_upvr.Shape = "Cylinder"
Part_upvr.Name = "BoltPart"
Part_upvr.Material = Enum.Material.Neon
Part_upvr.Color = Color3.new(1, 1, 1)
Part_upvr.Transparency = 1
local any_Inverse_result1_upvr = CFrame.lookAt(Vector3.new(), Vector3.new(1, 0, 0)):Inverse()
local tbl_upvr = {}
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new(arg1, arg2, arg3) -- Line 45
	--[[ Upvalues[5]:
		[1]: module_upvr (readonly)
		[2]: Part_upvr (readonly)
		[3]: any_Inverse_result1_upvr (readonly)
		[4]: clock_upvr (readonly)
		[5]: tbl_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1.Enabled = true
	setmetatable_result1.Attachment0 = arg1
	setmetatable_result1.Attachment1 = arg2
	setmetatable_result1.CurveSize0 = 0
	setmetatable_result1.CurveSize1 = 0
	setmetatable_result1.MinRadius = 0
	setmetatable_result1.MaxRadius = 2.4
	setmetatable_result1.Frequency = 1
	setmetatable_result1.AnimationSpeed = 7
	setmetatable_result1.Thickness = 1
	setmetatable_result1.MinThicknessMultiplier = 0.2
	setmetatable_result1.MaxThicknessMultiplier = 1
	setmetatable_result1.MinTransparency = 0
	setmetatable_result1.MaxTransparency = 1
	setmetatable_result1.PulseSpeed = 2
	setmetatable_result1.PulseLength = 1000000
	setmetatable_result1.FadeLength = 0.2
	setmetatable_result1.ContractFrom = 0.5
	setmetatable_result1.Color = Color3.new(1, 1, 1)
	setmetatable_result1.ColorOffsetSpeed = 3
	setmetatable_result1.Parts = {}
	local var9 = arg1
	local var10 = arg2
	local WorldPosition = var9.WorldPosition
	local var12 = WorldPosition
	local var13 = arg3 or 30
	for i = 1, var13 do
		local CubicBezier_result1 = CubicBezier(WorldPosition, var9.WorldPosition + var9.WorldAxis * setmetatable_result1.CurveSize0, var10.WorldPosition - var10.WorldAxis * setmetatable_result1.CurveSize1, var10.WorldPosition, i / var13)
		local var15
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var15 = CFrame.lookAt(WorldPosition, CubicBezier_result1).Position
			return var15
		end
		if i == var13 or not INLINED() then
			var15 = CubicBezier_result1
		end
		local clone = Part_upvr:Clone()
		clone.Size = Vector3.new((var15 - var12).Magnitude, 0, 0)
		clone.CFrame = CFrame.lookAt(0.5 * (var12 + var15), var15) * any_Inverse_result1_upvr
		clone.Parent = workspace.CurrentCamera
		clone.Locked = true
		clone.CastShadow = false
		setmetatable_result1.Parts[i] = clone
	end
	setmetatable_result1.PartsHidden = false
	setmetatable_result1.DisabledTransparency = 1
	setmetatable_result1.StartT = clock_upvr()
	setmetatable_result1.RanNum = math.random() * 100
	setmetatable_result1.RefIndex = #tbl_upvr + 1
	tbl_upvr[setmetatable_result1.RefIndex] = setmetatable_result1
	return setmetatable_result1
end
function module_upvr.Destroy(arg1) -- Line 110
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	tbl_upvr[arg1.RefIndex] = nil
	for i_2 = 1, #arg1.Parts do
		arg1.Parts[i_2]:Destroy()
		if i_2 % 100 == 0 then
			task.wait()
		end
	end
end
game:GetService("RunService").Heartbeat:Connect(function() -- Line 126
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: clock_upvr (readonly)
		[3]: any_Inverse_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local pairs_result1, pairs_result2, pairs_result3 = pairs(tbl_upvr)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [414] 323. Error Block 36 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [414] 323. Error Block 36 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [414.5]
	-- KONSTANTERROR: [5] 5. Error Block 2 end (CF ANALYSIS FAILED)
end)
return module_upvr