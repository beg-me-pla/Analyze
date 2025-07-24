-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:31
-- Luau version 6, Types version 3
-- Time taken: 0.000753 seconds

local Util_upvr = require(script.Parent.Parent.Shared.Util)
local function validateVector(arg1, arg2) -- Line 3
	if arg1 == nil then
		return false, "Invalid or missing number at position %d in Vector type.":format(arg2)
	end
	return true
end
local any_MakeSequenceType_result1_upvr = Util_upvr.MakeSequenceType({
	ValidateEach = validateVector;
	TransformEach = tonumber;
	Constructor = Vector3.new;
	Length = 3;
})
local any_MakeSequenceType_result1_upvr_2 = Util_upvr.MakeSequenceType({
	ValidateEach = validateVector;
	TransformEach = tonumber;
	Constructor = Vector2.new;
	Length = 2;
})
return function(arg1) -- Line 25
	--[[ Upvalues[3]:
		[1]: any_MakeSequenceType_result1_upvr (readonly)
		[2]: Util_upvr (readonly)
		[3]: any_MakeSequenceType_result1_upvr_2 (readonly)
	]]
	arg1:RegisterType("vector3", any_MakeSequenceType_result1_upvr)
	arg1:RegisterType("vector3s", Util_upvr.MakeListableType(any_MakeSequenceType_result1_upvr))
	arg1:RegisterType("vector2", any_MakeSequenceType_result1_upvr_2)
	arg1:RegisterType("vector2s", Util_upvr.MakeListableType(any_MakeSequenceType_result1_upvr_2))
end