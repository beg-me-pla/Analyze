-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:31
-- Luau version 6, Types version 3
-- Time taken: 0.000877 seconds

local Util_upvr = require(script.Parent.Parent.Shared.Util)
return function(arg1) -- Line 3
	--[[ Upvalues[1]:
		[1]: Util_upvr (readonly)
	]]
	local tbl = {
		Transform = function(arg1_2) -- Line 5, Named "Transform"
			--[[ Upvalues[2]:
				[1]: Util_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return Util_upvr.MakeFuzzyFinder(arg1:GetTypeNames())(arg1_2)
		end;
		Validate = function(arg1_3) -- Line 11, Named "Validate"
			local var4
			if 0 >= #arg1_3 then
				var4 = false
			else
				var4 = true
			end
			return var4, "No type with that name could be found."
		end;
		Autocomplete = function(arg1_4) -- Line 15, Named "Autocomplete"
			return arg1_4
		end;
		Parse = function(arg1_5) -- Line 19, Named "Parse"
			return arg1_5[1]
		end;
	}
	arg1:RegisterType("type", tbl)
	arg1:RegisterType("types", Util_upvr.MakeListableType(tbl))
end