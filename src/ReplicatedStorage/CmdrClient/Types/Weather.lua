-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:33
-- Luau version 6, Types version 3
-- Time taken: 0.001137 seconds

local Util_upvr = require(script.Parent.Parent.Shared.Util)
local module_upvr = {}
for i in require(game:GetService("ReplicatedStorage").Data.TravelingMerchant.TravelingMerchantData), nil do
	table.insert(module_upvr, i)
end
local tbl_upvr = {
	Transform = function(arg1) -- Line 15, Named "Transform"
		--[[ Upvalues[2]:
			[1]: Util_upvr (readonly)
			[2]: module_upvr (readonly)
		]]
		return Util_upvr.MakeFuzzyFinder(module_upvr)(arg1)
	end;
	Validate = function(arg1) -- Line 21, Named "Validate"
		local var6
		if 0 >= #arg1 then
			var6 = false
		else
			var6 = true
		end
		return var6, "No merchants could be found."
	end;
	Autocomplete = function(arg1) -- Line 25, Named "Autocomplete"
		--[[ Upvalues[1]:
			[1]: Util_upvr (readonly)
		]]
		return Util_upvr.GetNames(arg1)
	end;
	Parse = function(arg1) -- Line 29, Named "Parse"
		return arg1[1]
	end;
	Default = function(arg1) -- Line 33, Named "Default"
		return "Creative"
	end;
	ArgumentOperatorAliases = {
		me = '.';
		all = '*';
		others = "**";
		random = '?';
	};
}
return function(arg1) -- Line 45
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	arg1:RegisterType("travelingmerchant", tbl_upvr)
end