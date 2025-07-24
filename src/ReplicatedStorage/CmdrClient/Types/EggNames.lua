-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:32
-- Luau version 6, Types version 3
-- Time taken: 0.001839 seconds

local Util_upvr = require(script.Parent.Parent.Shared.Util)
local module_upvr = {}
for _, v in game:GetService("ReplicatedStorage").Assets.Models.EggModels:GetChildren() do
	table.insert(module_upvr, v.Name)
end
local tbl_upvr = {
	Transform = function(arg1) -- Line 17, Named "Transform"
		--[[ Upvalues[2]:
			[1]: Util_upvr (readonly)
			[2]: module_upvr (readonly)
		]]
		return Util_upvr.MakeFuzzyFinder(module_upvr)(arg1)
	end;
	Validate = function(arg1) -- Line 23, Named "Validate"
		local var12
		if 0 >= #arg1 then
			var12 = false
		else
			var12 = true
		end
		return var12, "No seeds could be found."
	end;
	Autocomplete = function(arg1) -- Line 27, Named "Autocomplete"
		--[[ Upvalues[1]:
			[1]: Util_upvr (readonly)
		]]
		return Util_upvr.GetNames(arg1)
	end;
	Parse = function(arg1) -- Line 31, Named "Parse"
		return arg1[1]
	end;
	Default = function(arg1) -- Line 35, Named "Default"
		return "Common"
	end;
	ArgumentOperatorAliases = {
		me = '.';
		all = '*';
		others = "**";
		random = '?';
	};
}
return function(arg1) -- Line 47
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	arg1:RegisterType("eggname", tbl_upvr)
end