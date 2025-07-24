-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:18
-- Luau version 6, Types version 3
-- Time taken: 0.001750 seconds

local function deepCopy_upvr(arg1) -- Line 2, Named "deepCopy"
	--[[ Upvalues[1]:
		[1]: deepCopy_upvr (readonly)
	]]
	if typeof(arg1) == "table" then
		for i, v in pairs(arg1) do
			({})[i] = deepCopy_upvr(v)
			local var9
		end
		return var9
	end
	return arg1
end
local function deepEquals_upvr(arg1, arg2) -- Line 13, Named "deepEquals"
	--[[ Upvalues[1]:
		[1]: deepEquals_upvr (readonly)
	]]
	local var33
	if var33 == "table" then
		var33 = typeof(arg2)
		if var33 == "table" then
			var33 = pairs(arg1)
			local pairs_result1, pairs_result2, pairs_result3 = pairs(arg1)
			for i_2, v_2 in pairs_result1, pairs_result2, pairs_result3 do
				if not deepEquals_upvr(v_2, arg2[i_2]) then
					return false
				end
			end
			pairs_result1 = pairs(arg2)
			local pairs_result1_2, pairs_result2_4, pairs_result3_5 = pairs(arg2)
			for i_3, v_3 in pairs_result1_2, pairs_result2_4, pairs_result3_5 do
				if not deepEquals_upvr(v_3, arg1[i_3]) then
					return false
				end
			end
			pairs_result1_2 = true
			return pairs_result1_2
		end
	end
	if arg1 ~= arg2 then
		pairs_result1_2 = false
	else
		pairs_result1_2 = true
	end
	return pairs_result1_2
end
return {
	deepCopy = deepCopy_upvr;
	deepEquals = deepEquals_upvr;
	getDictionaryLength = function(arg1) -- Line 30, Named "getDictionaryLength"
		local var44 = 0
		for _, _ in arg1 do
			var44 += 1
		end
		return var44
	end;
}