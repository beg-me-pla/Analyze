-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:15
-- Luau version 6, Types version 3
-- Time taken: 0.003388 seconds

local CameraShakeInstance_upvr = require(script.Parent.CameraShakeInstance)
local tbl_upvr = {
	Bump = function() -- Line 26, Named "Bump"
		--[[ Upvalues[1]:
			[1]: CameraShakeInstance_upvr (readonly)
		]]
		local any_new_result1_2 = CameraShakeInstance_upvr.new(2.5, 4, 0.1, 0.75)
		any_new_result1_2.PositionInfluence = Vector3.new(0.15000, 0.15000, 0.15000)
		any_new_result1_2.RotationInfluence = Vector3.new(1, 1, 1)
		return any_new_result1_2
	end;
	Dash = function() -- Line 35, Named "Dash"
		--[[ Upvalues[1]:
			[1]: CameraShakeInstance_upvr (readonly)
		]]
		local any_new_result1 = CameraShakeInstance_upvr.new(1.5, 2, 0.1, 0.75)
		any_new_result1.PositionInfluence = Vector3.new(0.15000, 0.15000, 0.15000)
		any_new_result1.RotationInfluence = Vector3.new(1, 1, 1)
		return any_new_result1
	end;
	Explosion = function() -- Line 44, Named "Explosion"
		--[[ Upvalues[1]:
			[1]: CameraShakeInstance_upvr (readonly)
		]]
		local any_new_result1_12 = CameraShakeInstance_upvr.new(1.75, 9, 0, 1.25)
		any_new_result1_12.PositionInfluence = Vector3.new(0.25, 0.25, 0.25)
		any_new_result1_12.RotationInfluence = Vector3.new(4, 1, 1)
		return any_new_result1_12
	end;
	BlowUp = function() -- Line 53, Named "BlowUp"
		--[[ Upvalues[1]:
			[1]: CameraShakeInstance_upvr (readonly)
		]]
		local any_new_result1_3 = CameraShakeInstance_upvr.new(5, 10, 0.05, 0.75)
		any_new_result1_3.PositionInfluence = Vector3.new(0.10000, 0.10000, 0.10000)
		any_new_result1_3.RotationInfluence = Vector3.new(1, 0.5, 0.85000)
		return any_new_result1_3
	end;
	HeavilyHurt = function() -- Line 63, Named "HeavilyHurt"
		--[[ Upvalues[1]:
			[1]: CameraShakeInstance_upvr (readonly)
		]]
		local any_new_result1_11 = CameraShakeInstance_upvr.new(3, 8, 0.05, 0.85)
		any_new_result1_11.PositionInfluence = Vector3.new(0.18000, 0.15000, 0.15000)
		any_new_result1_11.RotationInfluence = Vector3.new(0.86000, 0.56000, 0.62999)
		return any_new_result1_11
	end;
	WindBreak = function() -- Line 73, Named "WindBreak"
		--[[ Upvalues[1]:
			[1]: CameraShakeInstance_upvr (readonly)
		]]
		local any_new_result1_9 = CameraShakeInstance_upvr.new(6, 5, 0.05, 0.5)
		any_new_result1_9.PositionInfluence = Vector3.new(0.07999, 0.07999, 0.07999)
		any_new_result1_9.RotationInfluence = Vector3.new(0.44999, 0.30000, 0.34999)
		return any_new_result1_9
	end;
	Shoot = function() -- Line 83, Named "Shoot"
		--[[ Upvalues[1]:
			[1]: CameraShakeInstance_upvr (readonly)
		]]
		local any_new_result1_4 = CameraShakeInstance_upvr.new(2, 6, 0.05, 0.65)
		any_new_result1_4.PositionInfluence = Vector3.new(0.05000, 0.05000, 0.125)
		any_new_result1_4.RotationInfluence = Vector3.new(0.60000, 0.60000, 0.60000)
		return any_new_result1_4
	end;
	M1 = function() -- Line 92, Named "M1"
		--[[ Upvalues[1]:
			[1]: CameraShakeInstance_upvr (readonly)
		]]
		local any_new_result1_13 = CameraShakeInstance_upvr.new(0.5, 6, 0.05, 0.65)
		any_new_result1_13.PositionInfluence = Vector3.new(0.05000, 0.05000, 0.125)
		any_new_result1_13.RotationInfluence = Vector3.new(0.60000, 0.60000, 0.60000)
		return any_new_result1_13
	end;
	Earthquake = function() -- Line 101, Named "Earthquake"
		--[[ Upvalues[1]:
			[1]: CameraShakeInstance_upvr (readonly)
		]]
		local any_new_result1_10 = CameraShakeInstance_upvr.new(0.6, 3.5, 2, 10)
		any_new_result1_10.PositionInfluence = Vector3.new(0.25, 0.25, 0.25)
		any_new_result1_10.RotationInfluence = Vector3.new(1, 1, 4)
		return any_new_result1_10
	end;
	BadTrip = function() -- Line 111, Named "BadTrip"
		--[[ Upvalues[1]:
			[1]: CameraShakeInstance_upvr (readonly)
		]]
		local any_new_result1_6 = CameraShakeInstance_upvr.new(10, 0.15, 5, 10)
		any_new_result1_6.PositionInfluence = Vector3.new(0, 0, 0.15000)
		any_new_result1_6.RotationInfluence = Vector3.new(2, 1, 4)
		return any_new_result1_6
	end;
	HandheldCamera = function() -- Line 121, Named "HandheldCamera"
		--[[ Upvalues[1]:
			[1]: CameraShakeInstance_upvr (readonly)
		]]
		local any_new_result1_8 = CameraShakeInstance_upvr.new(1, 0.25, 5, 10)
		any_new_result1_8.PositionInfluence = Vector3.new(0, 0, 0)
		any_new_result1_8.RotationInfluence = Vector3.new(1, 0.5, 0.5)
		return any_new_result1_8
	end;
	Vibration = function() -- Line 131, Named "Vibration"
		--[[ Upvalues[1]:
			[1]: CameraShakeInstance_upvr (readonly)
		]]
		local any_new_result1_5 = CameraShakeInstance_upvr.new(2, 20, 0, 0.2)
		any_new_result1_5.PositionInfluence = Vector3.new(0.25, 0.15000, 0)
		any_new_result1_5.RotationInfluence = Vector3.new(1.25, 0, 4)
		return any_new_result1_5
	end;
	RoughDriving = function() -- Line 141, Named "RoughDriving"
		--[[ Upvalues[1]:
			[1]: CameraShakeInstance_upvr (readonly)
		]]
		local any_new_result1_7 = CameraShakeInstance_upvr.new(1, 2, 1, 1)
		any_new_result1_7.PositionInfluence = Vector3.new(0, 0, 0)
		any_new_result1_7.RotationInfluence = Vector3.new(1, 1, 1)
		return any_new_result1_7
	end;
}
return setmetatable({}, {
	__index = function(arg1, arg2) -- Line 153, Named "__index"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		local var17 = tbl_upvr[arg2]
		if type(var17) == "function" then
			return var17()
		end
		error("No preset found with index \""..arg2..'"')
	end;
})