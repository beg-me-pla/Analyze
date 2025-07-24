-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:29
-- Luau version 6, Types version 3
-- Time taken: 0.002749 seconds

local Util_upvr = require(script.Parent.Parent.Shared.Util)
local function parseHexDigit_upvr(arg1) -- Line 21, Named "parseHexDigit"
	local var3
	if #arg1 == 1 then
		var3 = var3..var3
	end
	return tonumber(var3, 16)
end
local tbl_upvr = {
	Transform = function(arg1) -- Line 30, Named "Transform"
		--[[ Upvalues[2]:
			[1]: Util_upvr (readonly)
			[2]: parseHexDigit_upvr (readonly)
		]]
		local any_match_result1, any_match_result2, any_match_result3 = arg1:match("^#?(%x%x?)(%x%x?)(%x%x?)$")
		return Util_upvr.Each(parseHexDigit_upvr, any_match_result1, any_match_result2, any_match_result3)
	end;
	Validate = function(arg1, arg2, arg3) -- Line 35, Named "Validate"
		local var9 = false
		if arg1 ~= nil then
			var9 = false
			if arg2 ~= nil then
				if arg3 == nil then
					var9 = false
				else
					var9 = true
				end
			end
		end
		return var9, "Invalid hex color"
	end;
	Parse = function(...) -- Line 39, Named "Parse"
		return Color3.fromRGB(...)
	end;
}
local any_MakeSequenceType_result1_upvr = Util_upvr.MakeSequenceType({
	Prefixes = "# hexColor3 ! brickColor3";
	ValidateEach = function(arg1, arg2) -- Line 5, Named "ValidateEach"
		if arg1 == nil then
			return false, "Invalid or missing number at position %d in Color3 type.":format(arg2)
		end
		if arg1 < 0 or 255 < arg1 then
			return false, "Number out of acceptable range 0-255 at position %d in Color3 type.":format(arg2)
		end
		if arg1 % 1 ~= 0 then
			return false, "Number is not an integer at position %d in Color3 type.":format(arg2)
		end
		return true
	end;
	TransformEach = tonumber;
	Constructor = Color3.fromRGB;
	Length = 3;
})
return function(arg1) -- Line 44
	--[[ Upvalues[3]:
		[1]: any_MakeSequenceType_result1_upvr (readonly)
		[2]: Util_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	arg1:RegisterType("color3", any_MakeSequenceType_result1_upvr)
	arg1:RegisterType("color3s", Util_upvr.MakeListableType(any_MakeSequenceType_result1_upvr, {
		Prefixes = "# hexColor3s ! brickColor3s";
	}))
	arg1:RegisterType("hexColor3", tbl_upvr)
	arg1:RegisterType("hexColor3s", Util_upvr.MakeListableType(tbl_upvr))
end