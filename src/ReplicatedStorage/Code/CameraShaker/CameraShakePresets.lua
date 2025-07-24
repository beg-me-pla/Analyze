-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:36
-- Luau version 6, Types version 3
-- Time taken: 0.001584 seconds

local CameraShakeInstance_upvr = require(script.Parent.CameraShakeInstance)
local tbl_upvr = {
	Bump = function() -- Line 26, Named "Bump"
		--[[ Upvalues[1]:
			[1]: CameraShakeInstance_upvr (readonly)
		]]
		local any_new_result1_8 = CameraShakeInstance_upvr.new(2.5, 4, 0.1, 0.75)
		any_new_result1_8.PositionInfluence = Vector3.new(0.15000, 0.15000, 0.15000)
		any_new_result1_8.RotationInfluence = Vector3.new(1, 1, 1)
		return any_new_result1_8
	end;
	Damage = function() -- Line 33, Named "Damage"
		--[[ Upvalues[1]:
			[1]: CameraShakeInstance_upvr (readonly)
		]]
		local any_new_result1 = CameraShakeInstance_upvr.new(1.5, 4, 0.1, 0.75)
		any_new_result1.PositionInfluence = Vector3.new(0.15000, 0.15000, 0.15000)
		any_new_result1.RotationInfluence = Vector3.new(1, 1, 1)
		return any_new_result1
	end;
	Explosion = function() -- Line 42, Named "Explosion"
		--[[ Upvalues[1]:
			[1]: CameraShakeInstance_upvr (readonly)
		]]
		local any_new_result1_9 = CameraShakeInstance_upvr.new(5, 10, 0, 1.5)
		any_new_result1_9.PositionInfluence = Vector3.new(0.25, 0.25, 0.25)
		any_new_result1_9.RotationInfluence = Vector3.new(4, 1, 1)
		return any_new_result1_9
	end;
	Earthquake = function() -- Line 52, Named "Earthquake"
		--[[ Upvalues[1]:
			[1]: CameraShakeInstance_upvr (readonly)
		]]
		local any_new_result1_4 = CameraShakeInstance_upvr.new(0.6, 3.5, 2, 10)
		any_new_result1_4.PositionInfluence = Vector3.new(0.25, 0.25, 0.25)
		any_new_result1_4.RotationInfluence = Vector3.new(1, 1, 4)
		return any_new_result1_4
	end;
	WeakEarthquake = function() -- Line 59, Named "WeakEarthquake"
		--[[ Upvalues[1]:
			[1]: CameraShakeInstance_upvr (readonly)
		]]
		local any_new_result1_5 = CameraShakeInstance_upvr.new(0.6, 3.5, 2, 10)
		any_new_result1_5.PositionInfluence = Vector3.new(0.05000, 0.05000, 0.05000)
		any_new_result1_5.RotationInfluence = Vector3.new(0.25, 0.25, 1)
		return any_new_result1_5
	end;
	BadTrip = function() -- Line 68, Named "BadTrip"
		--[[ Upvalues[1]:
			[1]: CameraShakeInstance_upvr (readonly)
		]]
		local any_new_result1_2 = CameraShakeInstance_upvr.new(10, 0.15, 5, 10)
		any_new_result1_2.PositionInfluence = Vector3.new(0, 0, 0.15000)
		any_new_result1_2.RotationInfluence = Vector3.new(2, 1, 4)
		return any_new_result1_2
	end;
	HandheldCamera = function() -- Line 78, Named "HandheldCamera"
		--[[ Upvalues[1]:
			[1]: CameraShakeInstance_upvr (readonly)
		]]
		local any_new_result1_6 = CameraShakeInstance_upvr.new(1, 0.25, 2, 10)
		any_new_result1_6.PositionInfluence = Vector3.new(0.00999, 0.00999, 0.00999)
		any_new_result1_6.RotationInfluence = Vector3.new(0, 0, 0)
		return any_new_result1_6
	end;
	Vibration = function() -- Line 88, Named "Vibration"
		--[[ Upvalues[1]:
			[1]: CameraShakeInstance_upvr (readonly)
		]]
		local any_new_result1_7 = CameraShakeInstance_upvr.new(0.4, 20, 2, 2)
		any_new_result1_7.PositionInfluence = Vector3.new(0.15000, 0.15000, 0.15000)
		any_new_result1_7.RotationInfluence = Vector3.new(1.25, 0, 4)
		return any_new_result1_7
	end;
	RoughDriving = function() -- Line 98, Named "RoughDriving"
		--[[ Upvalues[1]:
			[1]: CameraShakeInstance_upvr (readonly)
		]]
		local any_new_result1_3 = CameraShakeInstance_upvr.new(1, 2, 1, 1)
		any_new_result1_3.PositionInfluence = Vector3.new(0, 0, 0)
		any_new_result1_3.RotationInfluence = Vector3.new(1, 1, 1)
		return any_new_result1_3
	end;
}
return setmetatable({}, {
	__index = function(arg1, arg2) -- Line 110, Named "__index"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		local var13 = tbl_upvr[arg2]
		if type(var13) == "function" then
			return var13()
		end
		error("No preset found with index \""..arg2..'"')
	end;
})